package gov.hhs.onc.crigtt.json.utils;

import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import gov.hhs.onc.crigtt.json.JsonConstant;
import java.beans.PropertyDescriptor;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.stream.Stream;
import org.springframework.beans.BeanWrapper;
import org.springframework.beans.BeanWrapperImpl;
import org.springframework.beans.BeansException;
import org.springframework.beans.InvalidPropertyException;
import org.springframework.beans.PropertyAccessException;

public final class CrigttJsonUtils {
    private final static String KEY_PROP_NAME = "key";
    private final static String VALUE_PROP_NAME = "value";

    private CrigttJsonUtils() {
    }

    public static String serializeConstants(ObjectMapper objMapper, Class<?> clazz) throws IllegalAccessException, JsonProcessingException {
        Field[] constantFields =
            Stream
                .of(clazz.getFields())
                .filter(
                    field -> {
                        int fieldMods = field.getModifiers();

                        return (Modifier.isPublic(fieldMods) && Modifier.isFinal(fieldMods) && Modifier.isStatic(fieldMods) && field
                            .isAnnotationPresent(JsonConstant.class));
                    }).toArray(Field[]::new);
        Map<String, String> constantMap = new LinkedHashMap<>(constantFields.length);
        String constantName;

        for (Field constantField : constantFields) {
            constantMap.put((!(constantName = constantField.getAnnotation(JsonConstant.class).value()).isEmpty() ? constantName : constantField.getName()),
                constantField.get(null).toString());
        }

        return objMapper.writeValueAsString(constantMap);
    }

    public static <T extends Enum<T>> String serializeEnum(ObjectMapper objMapper, Class<T> enumClass) throws BeansException, InvalidPropertyException,
        JsonProcessingException, PropertyAccessException {
        T[] enumItems = enumClass.getEnumConstants();
        Map<String, Map<String, Object>> enumMap = new LinkedHashMap<>(enumItems.length);
        Map<String, Object> enumItemMap;
        Map<String, String> enumItemValueMap;
        String enumItemKey;
        BeanWrapper enumItemWrapper;
        PropertyDescriptor[] enumItemPropDescs;
        Method enumItemPropGetter;
        String enumItemPropName;

        for (T enumItem : enumItems) {
            enumMap.put((enumItemKey = enumItem.name()), (enumItemMap = new LinkedHashMap<>(2)));

            enumItemMap.put(KEY_PROP_NAME, enumItemKey);

            enumItemMap.put(VALUE_PROP_NAME,
                (enumItemValueMap =
                    new LinkedHashMap<>((enumItemPropDescs = (enumItemWrapper = new BeanWrapperImpl(enumItem)).getPropertyDescriptors()).length)));

            for (PropertyDescriptor enumItemPropDesc : enumItemPropDescs) {
                if (((enumItemPropGetter = enumItemPropDesc.getReadMethod()) == null) || !enumItemPropGetter.isAnnotationPresent(JsonProperty.class)) {
                    continue;
                }

                enumItemValueMap.put((enumItemPropName = enumItemPropDesc.getName()), enumItemWrapper.getPropertyValue(enumItemPropName).toString());
            }
        }

        return objMapper.writeValueAsString(enumMap);
    }
}
