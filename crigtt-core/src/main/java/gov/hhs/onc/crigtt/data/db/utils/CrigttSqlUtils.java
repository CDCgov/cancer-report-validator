package gov.hhs.onc.crigtt.data.db.utils;

import com.orientechnologies.orient.core.sql.query.OSQLSynchQuery;
import java.util.List;
import java.util.Map;
import javax.annotation.Nullable;
import org.apache.commons.collections4.CollectionUtils;
import org.apache.commons.collections4.MapUtils;
import org.apache.commons.lang3.StringUtils;
import org.apache.commons.lang3.text.StrBuilder;

public final class CrigttSqlUtils {
    public final static String ITEM_DELIM = ", ";

    public final static String CALL_PREFIX = "(";
    public final static String PARAM_PREFIX = ":";

    public final static String CALL_SUFFIX = ")";

    public final static String SELECT_CMD = "select";

    public final static String DISTINCT_FUNC_NAME = "distinct";

    public final static String AND_OP = "and";
    public final static String BY_OP = "by";
    public final static String EQ_OP = "=";
    public final static String FROM_OP = "from";
    public final static String GROUP_OP = "group";
    public final static String IS_OP = "is";
    public final static String WHERE_OP = "where";

    public final static String NULL_VALUE = "null";

    private CrigttSqlUtils() {
    }

    public static <T> OSQLSynchQuery<T> buildSelectQuery(Class<T> targetClass, @Nullable String targetClassName, @Nullable List<String> projections,
        Map<String, String> params, @Nullable String groupByFieldName) {
        StrBuilder queryBuilder = new StrBuilder(SELECT_CMD);
        queryBuilder.append(StringUtils.SPACE);

        if (!CollectionUtils.isEmpty(projections)) {
            queryBuilder.appendWithSeparators(projections, ITEM_DELIM);
            queryBuilder.append(StringUtils.SPACE);
        }

        queryBuilder.append(FROM_OP);
        queryBuilder.append(StringUtils.SPACE);
        queryBuilder.append(((targetClassName != null) ? targetClassName : targetClass.getSimpleName()));
        queryBuilder.append(StringUtils.SPACE);

        if (!MapUtils.isEmpty(params)) {
            queryBuilder.append(WHERE_OP);

            String[] paramNames = params.keySet().toArray(new String[params.size()]);

            for (int a = 0; a < paramNames.length; a++) {
                queryBuilder.append(StringUtils.SPACE);

                if (a > 0) {
                    queryBuilder.append(AND_OP);
                    queryBuilder.append(StringUtils.SPACE);
                }

                queryBuilder.append(paramNames[a]);
                queryBuilder.append(StringUtils.SPACE);

                if (params.get(paramNames[a]) != null) {
                    queryBuilder.append(EQ_OP);
                    queryBuilder.append(StringUtils.SPACE);
                    queryBuilder.append(PARAM_PREFIX);
                    queryBuilder.append(paramNames[a]);
                } else {
                    queryBuilder.append(IS_OP);
                    queryBuilder.append(StringUtils.SPACE);
                    queryBuilder.append(NULL_VALUE);
                }
            }
        }

        if (groupByFieldName != null) {
            queryBuilder.append(StringUtils.SPACE);
            queryBuilder.append(GROUP_OP);
            queryBuilder.append(StringUtils.SPACE);
            queryBuilder.append(BY_OP);
            queryBuilder.append(StringUtils.SPACE);
            queryBuilder.append(groupByFieldName);
        }

        return new OSQLSynchQuery<>(queryBuilder.build());
    }

    public static String buildFunctionCall(String funcName, String ... args) {
        StrBuilder funcCallBuilder = new StrBuilder(funcName);
        funcCallBuilder.append(CALL_PREFIX);
        funcCallBuilder.appendWithSeparators(args, ITEM_DELIM);
        funcCallBuilder.append(CALL_SUFFIX);

        return funcCallBuilder.build();
    }
}
