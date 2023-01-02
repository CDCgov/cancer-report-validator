<?xml version="1.0" encoding="utf-8" standalone="yes"?>
<!--

THIS SOFTWARE IS PROVIDED "AS IS" AND ANY EXPRESSED OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL LANTANA CONSULTING GROUP LLC, OR ANY OF THEIR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
Schematron generated from Trifolia on 4/22/2015
-->
<sch:schema xmlns:voc="http://www.lantanagroup.com/voc" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:sdtc="urn:hl7-org:sdtc" xmlns="urn:hl7-org:v3" xmlns:cda="urn:hl7-org:v3" xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
	<sch:ns prefix="voc" uri="http://www.lantanagroup.com/voc"/>
	<sch:ns prefix="xsi" uri="http://www.w3.org/2001/XMLSchema-instance"/>
	<sch:ns prefix="sdtc" uri="urn:hl7-org:sdtc"/>
	<sch:ns prefix="cda" uri="urn:hl7-org:v3"/>
	<sch:phase id="errors">
		<sch:active pattern="p-DOCUMENT-TEMPLATE"/>
		<sch:active pattern="p-urn-oid-2.16.840.1.113883.10.20.22.5.1-errors"/>
		<sch:active pattern="p-urn-oid-2.16.840.1.113883.10.20.22.5.2-errors"/>
		<sch:active pattern="p-urn-oid-2.16.840.1.113883.10.20.22.4.32-errors"/>
		<sch:active pattern="p-urn-oid-2.16.840.1.113883.10.20.22.2.8-errors"/>
		<sch:active pattern="p-urn-oid-2.16.840.1.113883.10.20.22.5.1.1-errors"/>
		<sch:active pattern="p-urn-oid-2.16.840.1.113883.10.20.22.5.4-errors"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.20.22.2.17-2014-06-09-errors"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.16-2014-06-09-errors"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.20.22.2.1-2014-06-09-errors"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.20.22.2.1.1-2014-06-09-errors"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.20.22.2.10-2014-06-09-errors"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.20.22.1.1-2014-06-09-errors"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.14-2014-06-09-errors"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.4-2014-06-09-errors"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.3-2014-06-09-errors"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.20.22.2.5-2014-06-09-errors"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.20.22.2.5.1-2014-06-09-errors"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.20.22.2.38-2014-06-09-errors"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.20.22.2.7-2014-06-09-errors"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.20.22.2.7.1-2014-06-09-errors"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.40-2014-06-09-errors"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.41-2014-06-09-errors"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.42-2014-06-09-errors"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.5-2014-06-09-errors"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.19-2014-06-09-errors"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.78-2014-06-09-errors"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.27-2014-06-09-errors"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.2-2014-06-09-errors"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.23-2014-06-09-errors"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.6-2014-06-09-errors"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.26-2014-06-09-errors"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.20.22.2.4-2014-06-09-errors"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.20.22.2.4.1-2014-06-09-errors"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.1-2014-06-09-errors"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.85-2014-06-09-errors"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.20.22.2.3-2014-06-09-errors"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.20.22.2.3.1-2014-06-09-errors"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.61-2014-06-09-errors"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.60-2014-06-09-errors"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.20.22.2.18-2014-06-09-errors"/>
		<sch:active pattern="p-urn-oid-2.16.840.1.113883.10.20.22.4.119-errors"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.46-2014-06-09-errors"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.45-2014-06-09-errors"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.20.22.2.15-2014-06-09-errors"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.13.17-2014-08-08-errors"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.13.18-2014-08-08-errors"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.13.21-2014-08-08-errors"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.13.21-2014-08-08-CLOSEDTEMPLATE"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.13.9-2014-08-08-errors"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.13.13-2014-08-08-errors"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.13.12-2014-08-08-errors"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.13.10-2014-08-08-errors"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.13.24-2014-08-08-errors"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.13.14-2014-08-08-errors"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.13.15-2014-08-08-errors"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.13.19-2014-08-08-errors"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.13.20-2014-08-08-errors"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.13.22-2014-08-08-errors"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.13.23-2014-08-08-errors"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.13.27-2014-08-08-errors"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.13.26-2014-08-08-errors"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.13.25-2014-08-08-errors"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.13.28-2014-08-08-errors"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.13.29-2014-08-08-errors"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.13.30-2014-08-08-errors"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.13.16-2015-01-29-errors"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.13.33-2015-01-29-errors"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.13.34-2015-01-29-errors"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.13.11-2015-01-29-errors"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.13.1-2015-01-29-errors"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.13.35-2015-02-05-errors"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.13.5-2015-02-05-errors"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.13.2-2015-02-05-errors"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.13.3-2015-02-05-errors"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.13.4-2015-02-05-errors"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.13.36-2015-02-05-errors"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.13.37-2015-02-05-errors"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.13.38-2015-02-05-errors"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.13.39-2015-02-05-errors"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.13.40-2015-02-05-errors"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.13.41-2015-02-05-errors"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.13.42-2015-02-05-errors"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.13.43-2015-02-05-errors"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.13.44-2015-02-05-errors"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.13.7-2015-02-06-errors"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.13.31-2015-04-02-errors"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.13.32-2015-04-02-errors"/>
	</sch:phase>
	<sch:phase id="warnings">
		<sch:active pattern="p-urn-oid-2.16.840.1.113883.10.20.22.5.1-warnings"/>
		<sch:active pattern="p-urn-oid-2.16.840.1.113883.10.20.22.5.2-warnings"/>
		<sch:active pattern="p-urn-oid-2.16.840.1.113883.10.20.22.4.32-warnings"/>
		<sch:active pattern="p-urn-oid-2.16.840.1.113883.10.20.22.5.1.1-warnings"/>
		<sch:active pattern="p-urn-oid-2.16.840.1.113883.10.20.22.5.4-warnings"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.20.22.2.17-2014-06-09-warnings"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.16-2014-06-09-warnings"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.20.22.2.1-2014-06-09-warnings"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.20.22.2.1.1-2014-06-09-warnings"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.20.22.1.1-2014-06-09-warnings"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.14-2014-06-09-warnings"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.4-2014-06-09-warnings"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.3-2014-06-09-warnings"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.20.22.2.5-2014-06-09-warnings"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.20.22.2.5.1-2014-06-09-warnings"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.40-2014-06-09-warnings"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.41-2014-06-09-warnings"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.42-2014-06-09-warnings"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.19-2014-06-09-warnings"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.78-2014-06-09-warnings"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.27-2014-06-09-warnings"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.2-2014-06-09-warnings"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.26-2014-06-09-warnings"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.20.22.2.4-2014-06-09-warnings"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.20.22.2.4.1-2014-06-09-warnings"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.1-2014-06-09-warnings"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.85-2014-06-09-warnings"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.20.22.2.3-2014-06-09-warnings"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.20.22.2.3.1-2014-06-09-warnings"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.61-2014-06-09-warnings"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.20.22.2.18-2014-06-09-warnings"/>
		<sch:active pattern="p-urn-oid-2.16.840.1.113883.10.20.22.4.119-warnings"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.46-2014-06-09-warnings"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.45-2014-06-09-warnings"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.13.17-2014-08-08-warnings"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.13.18-2014-08-08-warnings"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.13.21-2014-08-08-warnings"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.13.13-2014-08-08-warnings"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.13.14-2014-08-08-warnings"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.13.15-2014-08-08-warnings"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.13.19-2014-08-08-warnings"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.13.20-2014-08-08-warnings"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.13.22-2014-08-08-warnings"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.13.23-2014-08-08-warnings"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.13.26-2014-08-08-warnings"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.13.25-2014-08-08-warnings"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.13.33-2015-01-29-warnings"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.13.34-2015-01-29-warnings"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.13.11-2015-01-29-warnings"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.13.1-2015-01-29-warnings"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.13.35-2015-02-05-warnings"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.13.4-2015-02-05-warnings"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.13.36-2015-02-05-warnings"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.13.37-2015-02-05-warnings"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.13.38-2015-02-05-warnings"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.13.39-2015-02-05-warnings"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.13.40-2015-02-05-warnings"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.13.41-2015-02-05-warnings"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.13.42-2015-02-05-warnings"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.13.43-2015-02-05-warnings"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.13.44-2015-02-05-warnings"/>
	</sch:phase>
	<sch:phase id="infos">
		<sch:active pattern="p-urn-oid-2.16.840.1.113883.10.20.22.4.32-infos"/>
		<sch:active pattern="p-urn-oid-2.16.840.1.113883.10.20.22.5.4-infos"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.20.22.2.17-2014-06-09-infos"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.16-2014-06-09-infos"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.20.22.1.1-2014-06-09-infos"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.14-2014-06-09-infos"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.4-2014-06-09-infos"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.3-2014-06-09-infos"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.20.22.2.5.1-2014-06-09-infos"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.40-2014-06-09-infos"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.41-2014-06-09-infos"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.42-2014-06-09-infos"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.19-2014-06-09-infos"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.27-2014-06-09-infos"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.2-2014-06-09-infos"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.23-2014-06-09-infos"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.26-2014-06-09-infos"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.20.22.2.4.1-2014-06-09-infos"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.1-2014-06-09-infos"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.85-2014-06-09-infos"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.20.22.2.3.1-2014-06-09-infos"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.61-2014-06-09-infos"/>
		<sch:active pattern="p-urn-oid-2.16.840.1.113883.10.20.22.4.119-infos"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.45-2014-06-09-infos"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.20.22.2.15-2014-06-09-infos"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.13.23-2014-08-08-infos"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.13.27-2014-08-08-infos"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.13.26-2014-08-08-infos"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.13.25-2014-08-08-infos"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.13.28-2014-08-08-infos"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.13.16-2015-01-29-infos"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.13.33-2015-01-29-infos"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.13.34-2015-01-29-infos"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.13.1-2015-01-29-infos"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.13.5-2015-02-05-infos"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.13.2-2015-02-05-infos"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.13.3-2015-02-05-infos"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.13.4-2015-02-05-infos"/>
		<sch:active pattern="p-urn-hl7ii-2.16.840.1.113883.10.13.7-2015-02-06-infos"/>	
	</sch:phase>
	<sch:pattern id="p-DOCUMENT-TEMPLATE">
		<sch:rule id="r-errors-DOC-abstract" abstract="true">
			<sch:assert id="a-IG-1169-DOC" test="cda:templateId[@root='2.16.840.1.113883.10.20.22.1.1' and @extension = '2014-06-09'] and cda:templateId[@root='2.16.840.1.113883.10.13.1' and @extension = '2015-01-29']">The document must contain both of the document level templates for this schematron to be applicable.</sch:assert>
		</sch:rule>
		<sch:rule id="r-errors-DOC" context="cda:ClinicalDocument">
			<sch:extends rule="r-errors-DOC-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-oid-2.16.840.1.113883.10.20.22.5.1-errors">
		<sch:rule id="r-urn-oid-2.16.840.1.113883.10.20.22.5.1-errors-abstract" abstract="true">
			<sch:assert id="a-81-7154" test="empty(@use) or @use=document('voc.xml')/voc:systems/voc:system[@valueSetOid='2.16.840.1.113883.1.11.15913']/voc:code/@value">MAY contain zero or one [0..1] @use, which SHALL be selected from ValueSet EntityNameUse urn:oid:2.16.840.1.113883.1.11.15913 STATIC 2005-05-01 (CONF:81-7154).</sch:assert>
			<sch:assert id="a-81-7157" test="exists(cda:given)">SHALL contain at least one [1..*] given (CONF:81-7157).</sch:assert>
			<sch:assert id="a-81-7158" test="count(cda:given[empty(@qualifier) or @qualifier=document('voc.xml')/voc:systems/voc:system[@valueSetOid='2.16.840.1.113883.11.20.9.26']/voc:code/@value]) = count(cda:given)">Such givens MAY contain zero or one [0..1] @qualifier, which SHALL be selected from ValueSet EntityPersonNamePartQualifier urn:oid:2.16.840.1.113883.11.20.9.26 STATIC 2011-09-30 (CONF:81-7158).</sch:assert>
			<sch:assert id="a-81-7163" test="count(cda:given)=1 or (count(cda:given) gt 1 and (cda:given[exists(@nullFlavor)] or string-length(cda:given[2]) gt 0))">The second occurrence of given (given2) if provided, SHALL include middle name or middle initial (CONF:81-7163).</sch:assert>
			<sch:assert id="a-81-7159" test="count(cda:family)=1">SHALL contain exactly one [1..1] family (CONF:81-7159).</sch:assert>
			<sch:assert id="a-81-7160" test="count(cda:family[empty(@qualifier) or @qualifier=document('voc.xml')/voc:systems/voc:system[@valueSetOid='2.16.840.1.113883.11.20.9.26']/voc:code/@value])=1">This family MAY contain zero or one [0..1] @qualifier, which SHALL be selected from ValueSet EntityPersonNamePartQualifier urn:oid:2.16.840.1.113883.11.20.9.26 STATIC 2011-09-30 (CONF:81-7160).</sch:assert>
			<sch:assert id="a-81-7155" test="count(cda:prefix[empty(@qualifier) or @qualifier=document('voc.xml')/voc:systems/voc:system[@valueSetOid='2.16.840.1.113883.11.20.9.26']/voc:code/@value]) = count(cda:prefix)">MAY contain zero or more [0..*] prefix (CONF:81-7155). The prefix, if present, MAY contain zero or one [0..1] @qualifier, which SHALL be selected from ValueSet EntityPersonNamePartQualifier urn:oid:2.16.840.1.113883.11.20.9.26 STATIC 2011-09-30 (CONF:81-7156).</sch:assert>
			<sch:assert id="a-81-7161" test="empty(cda:suffix) or (count(cda:suffix)=1 and count(cda:suffix[empty(@qualifier) or @qualifier=document('voc.xml')/voc:systems/voc:system[@valueSetOid='2.16.840.1.113883.11.20.9.26']/voc:code/@value])=1)">MAY contain zero or one [0..1] suffix (CONF:81-7161). The suffix, if present, MAY contain zero or one [0..1] @qualifier, which SHALL be selected from ValueSet EntityPersonNamePartQualifier urn:oid:2.16.840.1.113883.11.20.9.26 STATIC 2011-09-30 (CONF:81-7162).</sch:assert>
			<sch:assert id="a-81-7278-c" test="not(exists(child::*) and text()[normalize-space() != ''])">SHALL NOT have mixed content except for white space (CONF:81-7278).</sch:assert>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-oid-2.16.840.1.113883.10.20.22.5.2-errors">
		<sch:rule id="r-urn-oid-2.16.840.1.113883.10.20.22.5.2-errors-abstract" abstract="true">
			<sch:assert id="a-81-7291-c" test="exists(cda:streetAddressLine) and count(cda:streetAddressLine) lt 5">SHALL contain at least one and not more than 4 [1..4] streetAddressLine (CONF:81-7291).</sch:assert>
			<sch:assert id="a-81-7292" test="count(cda:city)=1">SHALL contain exactly one [1..1] city (CONF:81-7292).</sch:assert>
			<sch:assert id="a-81-7296-c" test="not(exists(child::*) and text()[normalize-space() != ''])">SHALL NOT have mixed content except for white space (CONF:81-7296).</sch:assert>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-oid-2.16.840.1.113883.10.20.22.4.32-errors">
		<sch:rule id="r-urn-oid-2.16.840.1.113883.10.20.22.4.32-errors-abstract" abstract="true">
			<sch:assert id="a-81-7758" test="@classCode='SDLOC'">SHALL contain exactly one [1..1] @classCode="SDLOC" (CodeSystem: RoleCode urn:oid:2.16.840.1.113883.5.111 STATIC) (CONF:81-7758).</sch:assert>
			<sch:assert id="a-81-16850" test="exists(@nullFlavor) or count(cda:code[@code=document('voc.xml')/voc:systems/voc:system[@valueSetOid='2.16.840.1.113883.1.11.20275']/voc:code/@value])=1">SHALL contain exactly one [1..1] code, which SHALL be selected from ValueSet HealthcareServiceLocation urn:oid:2.16.840.1.113883.1.11.20275 STATIC (CONF:81-16850).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-oid-2.16.840.1.113883.10.20.22.4.32-errors" context="cda:participantRole[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.32']]">
			<sch:extends rule="r-urn-oid-2.16.840.1.113883.10.20.22.4.32-errors-abstract"/>
			<sch:assert id="a-81-7635" test="count(cda:templateId[@root='2.16.840.1.113883.10.20.22.4.32'])=1">SHALL contain exactly one [1..1] templateId (CONF:81-7635) such that it SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.4.32" (CONF:81-10524).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-oid-2.16.840.1.113883.10.20.22.4.32-branch-81-7762-errors" context="cda:participantRole[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.32']]/cda:playingEntity">
			<sch:assert id="a-81-7763" test="@classCode='PLC'">The playingEntity, if present, SHALL contain exactly one [1..1] @classCode="PLC" (CodeSystem: EntityClass urn:oid:2.16.840.1.113883.5.41 STATIC) (CONF:81-7763).</sch:assert>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-oid-2.16.840.1.113883.10.20.22.2.8-errors">
		<sch:rule id="r-urn-oid-2.16.840.1.113883.10.20.22.2.8-errors-abstract" abstract="true">
			<sch:assert id="a-81-7713" test="count(cda:text)=1">SHALL contain exactly one [1..1] text (CONF:81-7713).</sch:assert>
			<sch:assert id="a-81-14757" test="count(cda:code)=1 and count(cda:code[empty(@nullFlavor) and @code='51848-0' and @codeSystem='2.16.840.1.113883.6.1'])=1">SHALL contain exactly one [1..1] code (CONF:81-14757). This code SHALL contain exactly one [1..1] @code="51848-0" Assessments (CONF:81-14758). This code SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.6.1" (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:81-26472).</sch:assert>
			<sch:assert id="a-81-16774" test="count(cda:title)=1">SHALL contain exactly one [1..1] title (CONF:81-16774).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-oid-2.16.840.1.113883.10.20.22.2.8-errors" context="cda:section[cda:templateId[@root='2.16.840.1.113883.10.20.22.2.8']]">
			<sch:extends rule="r-urn-oid-2.16.840.1.113883.10.20.22.2.8-errors-abstract"/>
			<sch:assert id="a-81-7711" test="count(cda:templateId[@root='2.16.840.1.113883.10.20.22.2.8'])=1">SHALL contain exactly one [1..1] templateId (CONF:81-7711) such that it SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.2.8" (CONF:81-10382).</sch:assert>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-oid-2.16.840.1.113883.10.20.22.5.1.1-errors">
		<sch:rule id="r-urn-oid-2.16.840.1.113883.10.20.22.5.1.1-errors-abstract" abstract="true">
			<sch:assert id="a-81-9371-c" test="(count(cda:family[empty(@nullFlavor)])=1 and exists(cda:given[empty(@nullFlavor)])) or (empty(./*) and string-length(.)!=0)">The content of name SHALL be either a conformant Patient Name (PTN.US.FIELDED), or a string (CONF:81-9371). The string SHALL NOT contain name parts (CONF:81-9372).</sch:assert>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-oid-2.16.840.1.113883.10.20.22.5.4-errors">
		<sch:rule id="r-urn-oid-2.16.840.1.113883.10.20.22.5.4-errors-abstract" abstract="true">
			<sch:assert id="a-81-10127-c" test="exists(@nullFlavor) or string-length(@value) ge 8">SHALL be precise to the day (CONF:81-10127).</sch:assert>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.20.22.2.17-2014-06-09-errors">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.17-2014-06-09-errors-abstract" abstract="true">
			<sch:assert id="a-1098-7936" test="count(cda:templateId[@root='2.16.840.1.113883.10.20.22.2.17' and @extension='2014-06-09'])=1">SHALL contain exactly one [1..1] templateId (CONF:1098-7936) such that it SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.2.17" (CONF:1098-10449). SHALL contain exactly one [1..1] @extension="2014-06-09" (CONF:1098-32494).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.17-2014-06-09-errors" context="cda:section[cda:templateId[@root='2.16.840.1.113883.10.20.22.2.17' and @extension = '2014-06-09']]">
			<sch:assert id="a-1098-14819" test="count(cda:code)=1 and count(cda:code[empty(@nullFlavor) and @code='29762-2' and @codeSystem='2.16.840.1.113883.6.1'])=1">SHALL contain exactly one [1..1] code (CONF:1098-14819). This code SHALL contain exactly one [1..1] @code="29762-2" Social History (CONF:1098-14820). This code SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.6.1" (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:1098-30814).</sch:assert>
			<sch:assert id="a-1098-7938" test="count(cda:title)=1">SHALL contain exactly one [1..1] title (CONF:1098-7938).</sch:assert>
			<sch:assert id="a-1098-7939" test="count(cda:text)=1">SHALL contain exactly one [1..1] text (CONF:1098-7939).</sch:assert>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.16-2014-06-09-errors">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.16-2014-06-09-errors-abstract" abstract="true">
			<sch:assert id="a-1098-7499" test="count(cda:templateId[@root='2.16.840.1.113883.10.20.22.4.16' and @extension='2014-06-09'])=1">SHALL contain exactly one [1..1] templateId (CONF:1098-7499) such that it SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.4.16" (CONF:1098-10504). SHALL contain exactly one [1..1] @extension="2014-06-09" (CONF:1098-32498).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.16-2014-06-09-errors" context="cda:substanceAdministration[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.16' and @extension = '2014-06-09']]">
			<sch:assert id="a-1098-7496" test="@classCode='SBADM'">SHALL contain exactly one [1..1] @classCode="SBADM" (CodeSystem: HL7ActClass urn:oid:2.16.840.1.113883.5.6 STATIC) (CONF:1098-7496).</sch:assert>
			<sch:assert id="a-1098-7497" test="@moodCode=document('voc.xml')/voc:systems/voc:system[@valueSetOid='2.16.840.1.113883.11.20.9.18']/voc:code/@value">SHALL contain exactly one [1..1] @moodCode, which SHALL be selected from ValueSet MoodCodeEvnInt urn:oid:2.16.840.1.113883.11.20.9.18 STATIC 2011-04-03 (CONF:1098-7497).</sch:assert>
			<sch:assert id="a-1098-7500" test="exists(cda:id)">SHALL contain at least one [1..*] id (CONF:1098-7500).</sch:assert>
			<sch:assert id="a-1098-7507" test="count(cda:statusCode)=1">SHALL contain exactly one [1..1] statusCode (CONF:1098-7507).</sch:assert>
			<sch:assert id="a-1098-32360" test="empty(cda:statusCode/@nullFlavor) and exists(cda:statusCode/@code)">This statusCode SHALL contain exactly one [1..1] @code, which SHALL be selected from ValueSet ActStatus urn:oid:2.16.840.1.113883.1.11.159331 DYNAMIC (CONF:1098-32360).</sch:assert>
			<sch:assert id="a-1098-7508-c" test="count(cda:effectiveTime[(count(cda:low)=1 or exists(@value) or exists(@nullFlavor)) and not(count(cda:low)=1 and exists(@value)) and not(exists(@value) and exists(@nullFlavor))])=1">The substance administration effectiveTime field can repeat, in order to represent varying levels of complex dosing. effectiveTime can be used to represent the duration of administration (e.g., "10 days"), the frequency of administration (e.g., "every 8 hours"), and more. Here, we require that there SHALL be an effectiveTime documentation of the duration (or single-administration timestamp), and that there SHOULD be an effectiveTime documentation of the frequency. Other timing nuances, supported by the base CDA R2 standard, may also be included.
SHALL contain exactly one [1..1] effectiveTime (CONF:1098-7508) such that it
Note: This effectiveTime represents either the medication duration (i.e., the time the medication was started and stopped) or the single-administration timestamp. This effectiveTime SHALL contain either a low or a @value but not both (CONF:1098-32890).</sch:assert>
			<sch:assert id="a-1098-7516" test="count(cda:doseQuantity)=1">SHALL contain exactly one [1..1] doseQuantity (CONF:1098-7516).</sch:assert>
			<sch:assert id="a-1098-7525" test="empty(cda:rateQuantity) or (count(cda:rateQuantity)=1 and count(cda:rateQuantity[@unit])=1)">The rateQuantity, if present, SHALL contain exactly one [1..1] @unit, which SHALL be selected from ValueSet UnitsOfMeasureCaseSensitive urn:oid:2.16.840.1.113883.1.11.12839 DYNAMIC (CONF:1098-7525).</sch:assert>
			<sch:assert id="a-1098-7520" test="count(cda:consumable)=1 and count(cda:consumable[count(cda:manufacturedProduct[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.23' and @extension = '2014-06-09']])=1])=1">SHALL contain exactly one [1..1] consumable (CONF:1098-7520). This consumable SHALL contain exactly one [1..1] Medication Information (V2) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.4.23:2014-06-09) (CONF:1098-16085).</sch:assert>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.20.22.2.1-2014-06-09-errors">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.1-2014-06-09-errors-abstract" abstract="true">
			<sch:assert id="a-1098-7791" test="count(cda:templateId[@root='2.16.840.1.113883.10.20.22.2.1'][@extension='2014-06-09'])=1">SHALL contain exactly one [1..1] templateId (CONF:1098-7791) such that it SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.2.1" (CONF:1098-10432). SHALL contain exactly one [1..1] @extension="2014-06-09" (CONF:1098-32500).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.1-2014-06-09-errors" context="cda:section[cda:templateId[@root='2.16.840.1.113883.10.20.22.2.1' and @extension = '2014-06-09']]">
			<sch:assert id="a-1098-15385" test="count(cda:code)=1 and count(cda:code[empty(@nullFlavor) and @code='10160-0' and @codeSystem='2.16.840.1.113883.6.1'])=1">SHALL contain exactly one [1..1] code (CONF:1098-15385). This code SHALL contain exactly one [1..1] @code="10160-0" History of medication use (CONF:1098-15386). This code SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.6.1" (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:1098-30824).</sch:assert>
			<sch:assert id="a-1098-7793-c" test="count(cda:title)=1">SHALL contain exactly one [1..1] title (CONF:1098-7793).</sch:assert>
			<sch:assert id="a-1098-7794" test="count(cda:text)=1">SHALL contain exactly one [1..1] text (CONF:1098-7794).</sch:assert>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.20.22.2.1.1-2014-06-09-errors">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.1.1-2014-06-09-errors-abstract" abstract="true">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.1-2014-06-09-errors-abstract"/>
			<sch:assert id="a-1098-7568" test="count(cda:templateId[@root='2.16.840.1.113883.10.20.22.2.1.1'][@extension='2014-06-09'])=1">SHALL contain exactly one [1..1] templateId (CONF:1098-7568) such that it SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.2.1.1" (CONF:1098-10433). SHALL contain exactly one [1..1] @extension="2014-06-09" (CONF:1098-32499).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.1.1-2014-06-09-errors" context="cda:section[cda:templateId[@root='2.16.840.1.113883.10.20.22.2.1.1' and @extension = '2014-06-09']]">
			<sch:assert id="a-1098-15387" test="count(cda:code)=1 and count(cda:code[empty(@nullFlavor) and @code='10160-0' and @codeSystem='2.16.840.1.113883.6.1'])=1">SHALL contain exactly one [1..1] code (CONF:1098-15387). This code SHALL contain exactly one [1..1] @code="10160-0" History of medication use (CONF:1098-15388). This code SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.6.1" (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:1098-30825).</sch:assert>
			<sch:assert id="a-1098-7570" test="count(cda:title)=1">SHALL contain exactly one [1..1] title (CONF:1098-7570).</sch:assert>
			<sch:assert id="a-1098-7571" test="count(cda:text)=1">SHALL contain exactly one [1..1] text (CONF:1098-7571).</sch:assert>
			<sch:assert id="a-1098-7572-c" test="(exists(@nullFlavor) or exists(cda:entry[count(cda:substanceAdministration[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.16' and @extension='2014-06-09']])=1])) and not(exists(@nullFlavor) and exists(cda:entry))">If section/@nullFlavor is not present:
SHALL contain at least one [1..*] entry (CONF:1098-7572) such that it SHALL contain exactly one [1..1] Medication Activity (V2) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.4.16:2014-06-09) (CONF:1098-10077).</sch:assert>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.20.22.2.10-2014-06-09-errors">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.10-2014-06-09-errors-abstract" abstract="true">
			<sch:assert id="a-1098-7723" test="count(cda:templateId[@root='2.16.840.1.113883.10.20.22.2.10' and @extension='2014-06-09'])=1">SHALL contain exactly one [1..1] templateId (CONF:1098-7723) such that it SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.2.10" (CONF:1098-10435). SHALL contain exactly one [1..1] @extension="2014-06-09" (CONF:1098-32501).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.10-2014-06-09-errors" context="cda:section[cda:templateId[@root='2.16.840.1.113883.10.20.22.2.10' and @extension = '2014-06-09']]">
			<sch:assert id="a-1098-14749" test="count(cda:code)=1 and count(cda:code[empty(@nullFlavor) and @code='18776-5' and @codeSystem='2.16.840.1.113883.6.1'])=1">SHALL contain exactly one [1..1] code (CONF:1098-14749). This code SHALL contain exactly one [1..1] @code="18776-5" Plan of Treatment (CONF:1098-14750). This code SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.6.1" (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:1098-30813).</sch:assert>
			<sch:assert id="a-1098-16986" test="count(cda:title)=1">SHALL contain exactly one [1..1] title (CONF:1098-16986).</sch:assert>
			<sch:assert id="a-1098-7725" test="count(cda:text)=1">SHALL contain exactly one [1..1] text (CONF:1098-7725).</sch:assert>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.20.22.1.1-2014-06-09-errors">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.1.1-2014-06-09-errors-abstract" abstract="true">
			<sch:assert id="a-1098-5252" test="count(cda:templateId[@root='2.16.840.1.113883.10.20.22.1.1'][@extension='2014-06-09'])=1">SHALL contain exactly one [1..1] templateId (CONF:1098-5252) such that it SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.1.1" (CONF:1098-10036). SHALL contain exactly one [1..1] @extension="2014-06-09" (CONF:1098-32503).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.1.1-2014-06-09-errors" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.20.22.1.1' and @extension = '2014-06-09']]">
			<sch:assert id="a-1098-16791" test="count(cda:realmCode[empty(@nullFlavor) and @code='US'])=1">Heading: realmCode
SHALL contain exactly one [1..1] realmCode="US" (CONF:1098-16791).</sch:assert>
			<sch:assert id="a-1098-5361" test="count(cda:typeId)=1 and count(cda:typeId[@root='2.16.840.1.113883.1.3' and @extension='POCD_HD000040'])=1">SHALL contain exactly one [1..1] typeId (CONF:1098-5361). This typeId SHALL contain exactly one [1..1] @root="2.16.840.1.113883.1.3" (CONF:1098-5250). This typeId SHALL contain exactly one [1..1] @extension="POCD_HD000040" (CONF:1098-5251).</sch:assert>
			<sch:assert id="a-1098-5363" test="count(cda:id)=1 and count(//cda:id[deep-equal(., current()/cda:id)])=1">SHALL contain exactly one [1..1] id (CONF:1098-5363). This id SHALL be a globally unique identifier for the document (CONF:1098-9991).</sch:assert>
			<sch:assert id="a-1098-5253" test="count(cda:code)=1">SHALL contain exactly one [1..1] code (CONF:1098-5253). This code SHALL specify the particular kind of document (e.g., History and Physical, Discharge Summary, Progress Note) (CONF:1098-9992).</sch:assert>
			<sch:assert id="a-1098-5254" test="count(cda:title)=1">SHALL contain exactly one [1..1] title (CONF:1098-5254).
Note: The title can either be a locally defined name or the displayName corresponding to clinicalDocument/code</sch:assert>
			<sch:assert id="a-1098-5256-c" test="count(cda:effectiveTime)=1">SHALL contain exactly one [1..1] US Realm Date and Time (DTM.US.FIELDED) (identifier: urn:oid:2.16.840.1.113883.10.20.22.5.4) (CONF:1098-5256).</sch:assert>
			<sch:assert id="a-1098-5259" test="count(cda:confidentialityCode)=1">SHALL contain exactly one [1..1] confidentialityCode, which SHOULD be selected from ValueSet HL7 BasicConfidentialityKind urn:oid:2.16.840.1.113883.1.11.16926 STATIC 2010-04-21 (CONF:1098-5259).</sch:assert>
			<sch:assert id="a-1098-5372" test="count(cda:languageCode)=1">SHALL contain exactly one [1..1] languageCode, which SHALL be selected from ValueSet Language urn:oid:2.16.840.1.113883.1.11.11526 DYNAMIC (CONF:1098-5372).</sch:assert>
			<sch:assert id="a-1098-5266" test="exists(cda:recordTarget)">Heading: recordTarget
The recordTarget records the administrative and demographic data of the patient whose health information is described by the clinical document; each recordTarget must contain at least one patientRole element
SHALL contain at least one [1..*] recordTarget (CONF:1098-5266).</sch:assert>
			<sch:assert id="a-1098-5444" test="exists(cda:author)">Heading: author
The author element represents the creator of the clinical document.  The author may be a device or a person.
SHALL contain at least one [1..*] author (CONF:1098-5444).</sch:assert>
			<sch:assert id="a-1098-5519" test="count(cda:custodian)=1">Heading: custodian
The custodian element represents the organization that is in charge of maintaining and is entrusted with the care of the document.
There is only one custodian per CDA document. Allowing that a CDA document may not represent the original form of the authenticated document, the custodian represents the steward of the original source document. The custodian may be the document originator, a health information exchange, or other responsible party.
SHALL contain exactly one [1..1] custodian (CONF:1098-5519).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.1.1-2014-06-09-branch-1098-5266-errors" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.20.22.1.1' and @extension = '2014-06-09']]/cda:recordTarget">
			<sch:assert id="a-1098-5267" test="count(cda:patientRole)=1">Such recordTargets SHALL contain exactly one [1..1] patientRole (CONF:1098-5267).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.1.1-2014-06-09-branch-1098-5267-errors" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.20.22.1.1' and @extension = '2014-06-09']]/cda:recordTarget/cda:patientRole">
			<sch:assert id="a-1098-5268" test="exists(cda:id)">This patientRole SHALL contain at least one [1..*] id (CONF:1098-5268).</sch:assert>
			<sch:assert id="a-1098-5271-c" test="exists(cda:addr)">This patientRole SHALL contain at least one [1..*] US Realm Address (AD.US.FIELDED) (identifier: urn:oid:2.16.840.1.113883.10.20.22.5.2) (CONF:1098-5271).</sch:assert>
			<sch:assert id="a-1098-5280" test="exists(cda:telecom)">This patientRole SHALL contain at least one [1..*] telecom (CONF:1098-5280).</sch:assert>
			<sch:assert id="a-1098-5283" test="count(cda:patient)=1">This patientRole SHALL contain exactly one [1..1] patient (CONF:1098-5283).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.1.1-2014-06-09-branch-1098-5416-errors" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.20.22.1.1' and @extension = '2014-06-09']]/cda:recordTarget/cda:patientRole/cda:providerOrganization">
			<sch:assert id="a-1098-5417" test="exists(cda:id)">The providerOrganization, if present, SHALL contain at least one [1..*] id (CONF:1098-5417).</sch:assert>
			<sch:assert id="a-1098-5419" test="exists(cda:name)">The providerOrganization, if present, SHALL contain at least one [1..*] name (CONF:1098-5419).</sch:assert>
			<sch:assert id="a-1098-5420" test="exists(cda:telecom)">The providerOrganization, if present, SHALL contain at least one [1..*] telecom (CONF:1098-5420).</sch:assert>
			<sch:assert id="a-1098-5422-c" test="exists(cda:addr)">The providerOrganization, if present, SHALL contain at least one [1..*] US Realm Address (AD.US.FIELDED) (identifier: urn:oid:2.16.840.1.113883.10.20.22.5.2) (CONF:1098-5422).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.1.1-2014-06-09-branch-1098-5283-errors" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.20.22.1.1' and @extension = '2014-06-09']]/cda:recordTarget/cda:patientRole/cda:patient">
			<sch:assert id="a-1098-5284-c" test="exists(cda:name)">This patient SHALL contain at least one [1..*] US Realm Person Name (PN.US.FIELDED) (identifier: urn:oid:2.16.840.1.113883.10.20.22.5.1.1) (CONF:1098-5284).</sch:assert>
			<sch:assert id="a-1098-6394" test="count(cda:administrativeGenderCode)=1">This patient SHALL contain exactly one [1..1] administrativeGenderCode, which SHALL be selected from ValueSet Administrative Gender (HL7 V3) urn:oid:2.16.840.1.113883.1.11.1 DYNAMIC (CONF:1098-6394).</sch:assert>
			<sch:assert id="a-1098-5298" test="count(cda:birthTime)=1">This patient SHALL contain exactly one [1..1] birthTime (CONF:1098-5298).</sch:assert>
			<sch:assert id="a-1098-5299-c" test="exists(@nullFlavor) or string-length(cda:birthTime/@value) ge 4">SHALL be precise to year (CONF:1098-5299).</sch:assert>
			<sch:assert id="a-1098-5322" test="count(cda:raceCode)=1">This patient SHALL contain exactly one [1..1] raceCode, which SHALL be selected from ValueSet Race Category Excluding Nulls urn:oid:2.16.840.1.113883.3.2074.1.1.3 DYNAMIC (CONF:1098-5322).</sch:assert>
			<sch:assert id="a-1098-31347-c" test="empty(sdtc:raceCode) or count(cda:raceCode)=1">If sdtc:raceCode is present, then the patient SHALL contain [1..1] raceCode (CONF:1098-31347).</sch:assert>
			<sch:assert id="a-1098-5323" test="count(cda:ethnicGroupCode)=1">This patient SHALL contain exactly one [1..1] ethnicGroupCode, which SHALL be selected from ValueSet Ethnicity urn:oid:2.16.840.1.114222.4.11.837 DYNAMIC (CONF:1098-5323).</sch:assert>
			<sch:assert id="a-1098-5406" test="exists(cda:languageCommunication)">This patient SHALL contain at least one [1..*] languageCommunication (CONF:1098-5406).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.1.1-2014-06-09-branch-1098-5406-errors" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.20.22.1.1' and @extension = '2014-06-09']]/cda:recordTarget/cda:patientRole/cda:patient/cda:languageCommunication">
			<sch:assert id="a-1098-5407" test="count(cda:languageCode)=1">Such languageCommunications SHALL contain exactly one [1..1] languageCode, which SHALL be selected from ValueSet PatientLanguage urn:oid:2.16.840.1.113883.11.20.9.64 DYNAMIC (CONF:1098-5407).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.1.1-2014-06-09-branch-1098-5325-errors" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.20.22.1.1' and @extension = '2014-06-09']]/cda:recordTarget/cda:patientRole/cda:patient/cda:guardian">
			<sch:assert id="a-1098-5385" test="count(cda:guardianPerson)=1">The guardian, if present, SHALL contain exactly one [1..1] guardianPerson (CONF:1098-5385).</sch:assert>
			<sch:assert id="a-1098-5386-c" test="count(cda:guardianPerson[exists(cda:name)])=1">This guardianPerson SHALL contain at least one [1..*] US Realm Person Name (PN.US.FIELDED) (identifier: urn:oid:2.16.840.1.113883.10.20.22.5.1.1) (CONF:1098-5386).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.1.1-2014-06-09-branch-1098-5395-errors" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.20.22.1.1' and @extension = '2014-06-09']]/cda:recordTarget/cda:patientRole/cda:patient/cda:birthplace">
			<sch:assert id="a-1098-5396" test="count(cda:place)=1">The birthplace, if present, SHALL contain exactly one [1..1] place (CONF:1098-5396).</sch:assert>
			<sch:assert id="a-1098-5397" test="empty(cda:place) or (count(cda:place)=1 and count(cda:place[count(cda:addr)=1])=1)">This place SHALL contain exactly one [1..1] addr (CONF:1098-5397).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.1.1-2014-06-09-branch-1098-5444-errors" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.20.22.1.1' and @extension = '2014-06-09']]/cda:author">
			<sch:assert id="a-1098-5445-c" test="count(cda:time)=1">Such authors SHALL contain exactly one [1..1] US Realm Date and Time (DTM.US.FIELDED) (identifier: urn:oid:2.16.840.1.113883.10.20.22.5.4) (CONF:1098-5445).</sch:assert>
			<sch:assert id="a-1098-5448" test="count(cda:assignedAuthor)=1">Such authors SHALL contain exactly one [1..1] assignedAuthor (CONF:1098-5448).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.1.1-2014-06-09-branch-1098-5448-errors" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.20.22.1.1' and @extension = '2014-06-09']]/cda:author/cda:assignedAuthor">
			<sch:assert id="a-1098-5449" test="exists(cda:id)">This assignedAuthor SHALL contain at least one [1..*] id (CONF:1098-5449).</sch:assert>
			<sch:assert id="a-1098-16788" test="empty(cda:code) or (count(cda:code)=1 and count(cda:code[@code])=1)">The code, if present, SHALL contain exactly one [1..1] @code, which SHOULD be selected from ValueSet Healthcare Provider Taxonomy (HIPAA) urn:oid:2.16.840.1.114222.4.11.1066 DYNAMIC (CONF:1098-16788).</sch:assert>
			<sch:assert id="a-1098-5428" test="exists(cda:telecom)">This assignedAuthor SHALL contain at least one [1..*] telecom (CONF:1098-5428).</sch:assert>
			<sch:assert id="a-1098-16789-c" test="empty(cda:assignedPerson) or (count(cda:assignedPerson)=1 and count(cda:assignedPerson[exists(cda:name)])=1)">The assignedPerson, if present, SHALL contain at least one [1..*] US Realm Person Name (PN.US.FIELDED) (identifier: urn:oid:2.16.840.1.113883.10.20.22.5.1.1) (CONF:1098-16789).</sch:assert>
			<sch:assert id="a-1098-16790-c" test="count(cda:assignedPerson | cda:assignedAuthoringDevice)=1">There SHALL be exactly one assignedAuthor/assignedPerson or exactly one assignedAuthor/assignedAuthoringDevice (CONF:1098-16790).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.1.1-2014-06-09-branch-1098-16783-errors" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.20.22.1.1' and @extension = '2014-06-09']]/cda:author/cda:assignedAuthor/cda:assignedAuthoringDevice">
			<sch:assert id="a-1098-16784" test="count(cda:manufacturerModelName)=1">The assignedAuthoringDevice, if present, SHALL contain exactly one [1..1] manufacturerModelName (CONF:1098-16784).</sch:assert>
			<sch:assert id="a-1098-16785" test="count(cda:softwareName)=1">The assignedAuthoringDevice, if present, SHALL contain exactly one [1..1] softwareName (CONF:1098-16785).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.1.1-2014-06-09-branch-1098-5441-errors" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.20.22.1.1' and @extension = '2014-06-09']]/cda:dataEnterer">
			<sch:assert id="a-1098-5442" test="count(cda:assignedEntity)=1">The dataEnterer, if present, SHALL contain exactly one [1..1] assignedEntity (CONF:1098-5442).</sch:assert>
        </sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.1.1-2014-06-09-branch-1098-5442-errors" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.20.22.1.1' and @extension = '2014-06-09']]/cda:dataEnterer/cda:assignedEntity">
    		<sch:assert id="a-1098-5443" test="exists(cda:id)">This assignedEntity SHALL contain at least one [1..*] id (CONF:1098-5443).</sch:assert>
			<sch:assert id="a-1098-5460-c" test="exists(cda:addr)">This assignedEntity SHALL contain at least one [1..*] US Realm Address (AD.US.FIELDED) (identifier: urn:oid:2.16.840.1.113883.10.20.22.5.2) (CONF:1098-5460).</sch:assert>
			<sch:assert id="a-1098-5466" test="exists(cda:telecom)">This assignedEntity SHALL contain at least one [1..*] telecom (CONF:1098-5466).</sch:assert>
			<sch:assert id="a-1098-5469" test="count(cda:assignedPerson)=1">This assignedEntity SHALL contain exactly one [1..1] assignedPerson (CONF:1098-5469).</sch:assert>
			<sch:assert id="a-1098-5470-c" test="count(cda:assignedPerson[exists(cda:name)])=1">This assignedPerson SHALL contain at least one [1..*] US Realm Person Name (PN.US.FIELDED) (identifier: urn:oid:2.16.840.1.113883.10.20.22.5.1.1) (CONF:1098-5470).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.1.1-2014-06-09-branch-1098-8001-errors" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.20.22.1.1' and @extension = '2014-06-09']]/cda:informant/cda:assignedEntity">
			<sch:assert id="a-1098-9945" test="exists(cda:id)">This assignedEntity SHALL contain at least one [1..*] id (CONF:1098-9945).</sch:assert>
			<sch:assert id="a-1098-8220" test="exists(cda:addr)">This assignedEntity SHALL contain at least one [1..*] US Realm Address (AD.US.FIELDED) (identifier: urn:oid:2.16.840.1.113883.10.20.22.5.2) (CONF:1098-8220).</sch:assert>
			<sch:assert id="a-1098-8221" test="count(cda:assignedPerson)=1">This assignedEntity SHALL contain exactly one [1..1] assignedPerson (CONF:1098-8221).</sch:assert>
			<sch:assert id="a-1098-8222" test="count(cda:assignedPerson[exists(cda:name)])=1">This assignedPerson SHALL contain at least one [1..*] US Realm Person Name (PN.US.FIELDED) (identifier: urn:oid:2.16.840.1.113883.10.20.22.5.1.1) (CONF:1098-8222).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.1.1-2014-06-09-branch-1098-5519-errors" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.20.22.1.1' and @extension = '2014-06-09']]/cda:custodian">
			<sch:assert id="a-1098-5520" test="count(cda:assignedCustodian)=1">This custodian SHALL contain exactly one [1..1] assignedCustodian (CONF:1098-5520).</sch:assert>
			<sch:assert id="a-1098-5521" test="count(cda:assignedCustodian[count(cda:representedCustodianOrganization)=1])=1">This assignedCustodian SHALL contain exactly one [1..1] representedCustodianOrganization (CONF:1098-5521).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.1.1-2014-06-09-branch-1098-5521-errors" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.20.22.1.1' and @extension = '2014-06-09']]/cda:custodian/cda:assignedCustodian/cda:representedCustodianOrganization">
			<sch:assert id="a-1098-5522" test="exists(cda:id)">This representedCustodianOrganization SHALL contain at least one [1..*] id (CONF:1098-5522).</sch:assert>
			<sch:assert id="a-1098-5524" test="count(cda:name)=1">This representedCustodianOrganization SHALL contain exactly one [1..1] name (CONF:1098-5524).</sch:assert>
			<sch:assert id="a-1098-5525" test="count(cda:telecom)=1">This representedCustodianOrganization SHALL contain exactly one [1..1] telecom (CONF:1098-5525).</sch:assert>
			<sch:assert id="a-1098-5559-c" test="count(cda:addr)=1">This representedCustodianOrganization SHALL contain exactly one [1..1] US Realm Address (AD.US.FIELDED) (identifier: urn:oid:2.16.840.1.113883.10.20.22.5.2) (CONF:1098-5559).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.1.1-2014-06-09-branch-1098-5565-errors" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.20.22.1.1' and @extension = '2014-06-09']]/cda:informationRecipient">
			<sch:assert id="a-1098-5566" test="count(cda:intendedRecipient)=1">The informationRecipient, if present, SHALL contain exactly one [1..1] intendedRecipient (CONF:1098-5566).</sch:assert>
			<sch:assert id="a-1098-5568-c" test="empty(cda:intendedRecipient/cda:informationRecipient) or (count(cda:intendedRecipient/cda:informationRecipient)=1 and count(cda:intendedRecipient/cda:informationRecipient[exists(cda:name)])=1)">The informationRecipient, if present, SHALL contain at least one [1..*] US Realm Person Name (PN.US.FIELDED) (identifier: urn:oid:2.16.840.1.113883.10.20.22.5.1.1) (CONF:1098-5568).</sch:assert>
			<sch:assert id="a-1098-5578" test="empty(cda:intendedRecipient/cda:receivedOrganization) or (count(cda:intendedRecipient/cda:receivedOrganization)=1 and count(cda:intendedRecipient/cda:receivedOrganization[count(cda:name)=1])=1)">The receivedOrganization, if present, SHALL contain exactly one [1..1] name (CONF:1098-5578).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.1.1-2014-06-09-branch-1098-5607-errors" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.20.22.1.1' and @extension = '2014-06-09']]/cda:authenticator">
			<sch:assert id="a-1098-5608" test="count(cda:time)=1">SHALL contain exactly one [1..1] US Realm Date and Time (DTM.US.FIELDED) (identifier: urn:oid:2.16.840.1.113883.10.20.22.5.4) (CONF:1098-5608).</sch:assert>
			<sch:assert id="a-1098-5610" test="count(cda:signatureCode)=1 and count(cda:signatureCode[empty(@nullFlavor) and @code='S'])=1">SHALL contain exactly one [1..1] signatureCode (CONF:1098-5610). This signatureCode SHALL contain exactly one [1..1] @code="S" (CodeSystem: Participationsignature urn:oid:2.16.840.1.113883.5.89 STATIC) (CONF:1098-5611).</sch:assert>
			<sch:assert id="a-1098-5612" test="count(cda:assignedEntity)=1">SHALL contain exactly one [1..1] assignedEntity (CONF:1098-5612).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.1.1-2014-06-09-branch-1098-5612-errors" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.20.22.1.1' and @extension = '2014-06-09']]/cda:authenticator/cda:assignedEntity">
			<sch:assert id="a-1098-5613" test="exists(cda:id)">This assignedEntity SHALL contain at least one [1..*] id (CONF:1098-5613).</sch:assert>
			<sch:assert id="a-1098-5616-c" test="exists(cda:addr)">This assignedEntity SHALL contain at least one [1..*] US Realm Address (AD.US.FIELDED) (identifier: urn:oid:2.16.840.1.113883.10.20.22.5.2) (CONF:1098-5616).</sch:assert>
			<sch:assert id="a-1098-5622" test="exists(cda:telecom)">This assignedEntity SHALL contain at least one [1..*] telecom (CONF:1098-5622).</sch:assert>
			<sch:assert id="a-1098-5624" test="count(cda:assignedPerson)=1">This assignedEntity SHALL contain exactly one [1..1] assignedPerson (CONF:1098-5624).</sch:assert>
			<sch:assert id="a-1098-5625-c" test="count(cda:assignedPerson[exists(cda:name)])=1">This assignedPerson SHALL contain at least one [1..*] US Realm Person Name (PN.US.FIELDED) (identifier: urn:oid:2.16.840.1.113883.10.20.22.5.1.1) (CONF:1098-5625).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.1.1-2014-06-09-branch-1098-10003-errors" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.20.22.1.1' and @extension = '2014-06-09']]/cda:participant">
			<sch:assert id="a-1098-10006-c" test="exists(cda:associatedEntity[cda:associatedPerson | cda:scopingOrganization])">SHALL contain associatedEntity/associatedPerson AND/OR associatedEntity/scopingOrganization (CONF:1098-10006).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.1.1-2014-06-09-branch-1098-9952-errors" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.20.22.1.1' and @extension = '2014-06-09']]/cda:inFulfillmentOf">
			<sch:assert id="a-1098-9953" test="count(cda:order)=1">The inFulfillmentOf, if present, SHALL contain exactly one [1..1] order (CONF:1098-9953).</sch:assert>
			<sch:assert id="a-1098-9954" test="count(cda:order[exists(cda:id)])=1">This order SHALL contain at least one [1..*] id (CONF:1098-9954).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.1.1-2014-06-09-branch-1098-14835-errors" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.20.22.1.1' and @extension = '2014-06-09']]/cda:documentationOf">
			<sch:assert id="a-1098-14836" test="count(cda:serviceEvent)=1">A serviceEvent represents the main act being documented, such as a colonoscopy or a cardiac stress study. In a provision of healthcare serviceEvent, the care providers, PCP, or other longitudinal providers, are recorded within the serviceEvent. If the document is about a single encounter, the providers associated can be recorded in the componentOf/encompassingEncounter template.
The documentationOf, if present, SHALL contain exactly one [1..1] serviceEvent (CONF:1098-14836).</sch:assert>
			<sch:assert id="a-1098-14837" test="count(cda:serviceEvent[count(cda:effectiveTime)=1])=1">This serviceEvent SHALL contain exactly one [1..1] effectiveTime (CONF:1098-14837).</sch:assert>
			<sch:assert id="a-1098-14838" test="count(cda:serviceEvent/cda:effectiveTime[count(cda:low)=1])=1">This effectiveTime SHALL contain exactly one [1..1] low (CONF:1098-14838).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.1.1-2014-06-09-branch-1098-14839-errors" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.20.22.1.1' and @extension = '2014-06-09']]/cda:documentationOf/cda:serviceEvent/cda:performer">
			<sch:assert id="a-1098-14840" test="@typeCode=document('voc.xml')/voc:systems/voc:system[@valueSetOid='2.16.840.1.113883.1.11.19601']/voc:code/@value">The performer, if present, SHALL contain exactly one [1..1] @typeCode, which SHALL be selected from ValueSet x_ServiceEventPerformer urn:oid:2.16.840.1.113883.1.11.19601 STATIC 2014-09-01 (CONF:1098-14840).</sch:assert>
			<sch:assert id="a-1098-14841" test="count(cda:assignedEntity)=1">The performer, if present, SHALL contain exactly one [1..1] assignedEntity (CONF:1098-14841).</sch:assert>
			<sch:assert id="a-1098-14846" test="count(cda:assignedEntity[exists(cda:id)])=1">This assignedEntity SHALL contain at least one [1..*] id (CONF:1098-14846).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.1.1-2014-06-09-branch-1098-16792-errors" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.20.22.1.1' and @extension = '2014-06-09']]/cda:authorization">
			<sch:assert id="a-1098-16793" test="count(cda:consent)=1">SHALL contain exactly one [1..1] consent (CONF:1098-16793).</sch:assert>
			<sch:assert id="a-1098-16797" test="count(cda:consent[count(cda:statusCode)=1])=1">This consent SHALL contain exactly one [1..1] statusCode (CONF:1098-16797).</sch:assert>
			<sch:assert id="a-1098-16798" test="count(cda:consent/cda:statusCode[empty(@nullFlavor) and @code='completed'])=1">This statusCode SHALL contain exactly one [1..1] @code="completed" Completed (CodeSystem: HL7ActClass urn:oid:2.16.840.1.113883.5.6) (CONF:1098-16798).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.1.1-2014-06-09-branch-1098-5579-errors" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.20.22.1.1' and @extension = '2014-06-09']]/cda:legalAuthenticator">
			<sch:assert id="a-1098-5580-c" test="count(cda:time)=1">The legalAuthenticator, if present, SHALL contain exactly one [1..1] US Realm Date and Time (DTM.US.FIELDED) (identifier: urn:oid:2.16.840.1.113883.10.20.22.5.4) (CONF:1098-5580).</sch:assert>
			<sch:assert id="a-1098-5583" test="count(cda:signatureCode)=1 and count(cda:signatureCode[empty(@nullFlavor) and @code='S'])=1">The legalAuthenticator, if present, SHALL contain exactly one [1..1] signatureCode (CONF:1098-5583). This signatureCode SHALL contain exactly one [1..1] @code="S" (CodeSystem: Participationsignature urn:oid:2.16.840.1.113883.5.89 STATIC) (CONF:1098-5584).</sch:assert>
			<sch:assert id="a-1098-5585" test="count(cda:assignedEntity)=1">The legalAuthenticator, if present, SHALL contain exactly one [1..1] assignedEntity (CONF:1098-5585).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.1.1-2014-06-09-branch-1098-5585-errors" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.20.22.1.1' and @extension = '2014-06-09']]/cda:legalAuthenticator/cda:assignedEntity">
			<sch:assert id="a-1098-5586" test="exists(cda:id)">This assignedEntity SHALL contain at least one [1..*] id (CONF:1098-5586).</sch:assert>
			<sch:assert id="a-1098-5589-c" test="exists(cda:addr)">This assignedEntity SHALL contain at least one [1..*] US Realm Address (AD.US.FIELDED) (identifier: urn:oid:2.16.840.1.113883.10.20.22.5.2) (CONF:1098-5589).</sch:assert>
			<sch:assert id="a-1098-5595" test="exists(cda:telecom)">This assignedEntity SHALL contain at least one [1..*] telecom (CONF:1098-5595).</sch:assert>
			<sch:assert id="a-1098-5597" test="count(cda:assignedPerson)=1">This assignedEntity SHALL contain exactly one [1..1] assignedPerson (CONF:1098-5597).</sch:assert>
			<sch:assert id="a-1098-5598-c" test="count(cda:assignedPerson[exists(cda:name)])=1">This assignedPerson SHALL contain at least one [1..*] US Realm Person Name (PN.US.FIELDED) (identifier: urn:oid:2.16.840.1.113883.10.20.22.5.1.1) (CONF:1098-5598).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.1.1-2014-06-09-branch-1098-9955-errors" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.20.22.1.1' and @extension = '2014-06-09']]/cda:componentOf">
			<sch:assert id="a-1098-9956" test="count(cda:encompassingEncounter)=1">The componentOf, if present, SHALL contain exactly one [1..1] encompassingEncounter (CONF:1098-9956).</sch:assert>
			<sch:assert id="a-1098-9959" test="count(cda:encompassingEncounter[exists(cda:id)])=1">This encompassingEncounter SHALL contain at least one [1..*] id (CONF:1098-9959).</sch:assert>
			<sch:assert id="a-1098-9958" test="count(cda:encompassingEncounter[count(cda:effectiveTime)=1])=1">This encompassingEncounter SHALL contain exactly one [1..1] effectiveTime (CONF:1098-9958).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.1.1-2014-06-09-addr-1098-5271-errors" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.20.22.1.1' and @extension = '2014-06-09']]/cda:recordTarget/cda:patientRole/cda:addr">  
			<sch:extends rule="r-urn-oid-2.16.840.1.113883.10.20.22.5.2-errors-abstract"/> 
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.1.1-2014-06-09-personName-1098-5386-errors" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.20.22.1.1' and @extension = '2014-06-09']]/cda:recordTarget/cda:patientRole/cda:patient/cda:guardian/cda:guardianPerson/cda:name">  
			<sch:extends rule="r-urn-oid-2.16.840.1.113883.10.20.22.5.1.1-errors-abstract"/> 
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.1.1-2014-06-09-addr-1098-5422-errors" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.20.22.1.1' and @extension = '2014-06-09']]/cda:recordTarget/cda:patientRole/cda:providerOrganization/cda:addr">  
			<sch:extends rule="r-urn-oid-2.16.840.1.113883.10.20.22.5.2-errors-abstract"/> 
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.1.1-2014-06-09-addr-1098-5452-errors" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.20.22.1.1' and @extension = '2014-06-09']]/cda:author/cda:assignedAuthor/cda:addr">  
			<sch:extends rule="r-urn-oid-2.16.840.1.113883.10.20.22.5.2-errors-abstract"/> 
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.1.1-2014-06-09-addr-1098-5460-errors" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.20.22.1.1' and @extension = '2014-06-09']]/cda:dataEnterer/cda:assignedEntity/cda:addr">  
			<sch:extends rule="r-urn-oid-2.16.840.1.113883.10.20.22.5.2-errors-abstract"/> 
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.1.1-2014-06-09-personName-1098-5470-errors" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.20.22.1.1' and @extension = '2014-06-09']]/cda:dataEnterer/cda:assignedEntity/cda:assignedPerson/cda:name">  
			<sch:extends rule="r-urn-oid-2.16.840.1.113883.10.20.22.5.1.1-errors-abstract"/> 
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.1.1-2014-06-09-addr-1098-8220-errors" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.20.22.1.1' and @extension = '2014-06-09']]/cda:informant/cda:assignedEntity/cda:addr">  
			<sch:extends rule="r-urn-oid-2.16.840.1.113883.10.20.22.5.2-errors-abstract"/>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.1.1-2014-06-09-personName-1098-8222-errors" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.20.22.1.1' and @extension = '2014-06-09']]/cda:dataEnterer/cda:assignedEntity/cda:assignedPerson/cda:name">  
			<sch:extends rule="r-urn-oid-2.16.840.1.113883.10.20.22.5.1.1-errors-abstract"/> 
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.1.1-2014-06-09-addr-1098-5559-errors" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.20.22.1.1' and @extension = '2014-06-09']]/cda:custodian/cda:assignedCustodian/cda:representedCustodianOrganization/cda:addr">  
			<sch:extends rule="r-urn-oid-2.16.840.1.113883.10.20.22.5.2-errors-abstract"/> 
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.1.1-2014-06-09-personName-1098-5568-errors" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.20.22.1.1' and @extension = '2014-06-09']]/cda:informationRecipient/cda:intendedRecipient/cda:informationRecipient/cda:name">  
			<sch:extends rule="r-urn-oid-2.16.840.1.113883.10.20.22.5.1.1-errors-abstract"/> 
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.1.1-2014-06-09-addr-1098-5589-errors" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.20.22.1.1' and @extension = '2014-06-09']]/cda:legalAuthenticator/cda:assignedEntity/cda:addr">  
			<sch:extends rule="r-urn-oid-2.16.840.1.113883.10.20.22.5.2-errors-abstract"/> 
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.1.1-2014-06-09-personName-1098-5598-errors" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.20.22.1.1' and @extension = '2014-06-09']]/cda:legalAuthenticator/cda:assignedEntity/cda:assignedPerson/cda:name">  
			<sch:extends rule="r-urn-oid-2.16.840.1.113883.10.20.22.5.1.1-errors-abstract"/> 
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.1.1-2014-06-09-personName-1098-16789-errors" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.20.22.1.1' and @extension = '2014-06-09']]/cda:author/cda:assignedAuthor/cda:assignedPerson/cda:name">  
			<sch:extends rule="r-urn-oid-2.16.840.1.113883.10.20.22.5.1.1-errors-abstract"/> 
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.1.1-2014-06-09-addr-1098-5359-errors" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.20.22.1.1' and @extension = '2014-06-09']]/cda:recordTarget/cda:patientRole/cda:patient/cda:guardian/cda:addr">  
			<sch:extends rule="r-urn-oid-2.16.840.1.113883.10.20.22.5.2-errors-abstract"/> 
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.1.1-2014-06-09-effectiveTime-1098-5256-errors" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.20.22.1.1' and @extension = '2014-06-09']]/cda:effectiveTime">  
			<sch:extends rule="r-urn-oid-2.16.840.1.113883.10.20.22.5.4-errors-abstract"/> 
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.1.1-2014-06-09-time-1098-5580-errors" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.20.22.1.1' and @extension = '2014-06-09']]/cda:legalAuthenticator/cda:time">  
			<sch:extends rule="r-urn-oid-2.16.840.1.113883.10.20.22.5.4-errors-abstract"/> 
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.1.1-2014-06-09-time-1098-5445-errors" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.20.22.1.1' and @extension = '2014-06-09']]/cda:author/cda:time">  
			<sch:extends rule="r-urn-oid-2.16.840.1.113883.10.20.22.5.4-errors-abstract"/> 
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.1.1-2014-06-09-branch-personName-1098-5284-errors" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.20.22.1.1' and @extension = '2014-06-09']]/cda:recordTarget/cda:patientRole/cda:patient/cda:name">
			<sch:extends rule="r-urn-oid-2.16.840.1.113883.10.20.22.5.1.1-errors-abstract"/> 
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.1.1-2014-06-09-time-1098-5608-errors" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.20.22.1.1' and @extension = '2014-06-09']]/cda:authenticator/cda:time">  
			<sch:extends rule="r-urn-oid-2.16.840.1.113883.10.20.22.5.4-errors-abstract"/> 
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.1.1-2014-06-09-addr-1098-5616-errors" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.20.22.1.1' and @extension = '2014-06-09']]/cda:authenticator/cda:assignedEntity/cda:addr">  
			<sch:extends rule="r-urn-oid-2.16.840.1.113883.10.20.22.5.2-errors-abstract"/> 
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.1.1-2014-06-09-personName-1098-5625-errors" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.20.22.1.1' and @extension = '2014-06-09']]/cda:authenticator/cda:assignedEntity/cda:assignedPerson/cda:name">  
			<sch:extends rule="r-urn-oid-2.16.840.1.113883.10.20.22.5.1.1-errors-abstract"/> 
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.14-2014-06-09-errors">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.14-2014-06-09-errors-abstract" abstract="true">
			<sch:assert id="a-1098-7654" test="count(cda:templateId[@root='2.16.840.1.113883.10.20.22.4.14'][@extension='2014-06-09'])=1">SHALL contain exactly one [1..1] templateId (CONF:1098-7654) such that it SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.4.14" (CONF:1098-10521). SHALL contain exactly one [1..1] @extension="2014-06-09" (CONF:1098-32506).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.14-2014-06-09-errors" context="cda:procedure[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.14' and @extension = '2014-06-09']]">
			<sch:let name="origTextValue" value="cda:code/cda:originalText/cda:reference/@value"/>
			<sch:assert id="a-1098-7652" test="@classCode='PROC'">SHALL contain exactly one [1..1] @classCode="PROC" Procedure (CodeSystem: HL7ActClass urn:oid:2.16.840.1.113883.5.6 STATIC) (CONF:1098-7652).</sch:assert>
			<sch:assert id="a-1098-7653" test="@moodCode='EVN'">SHALL contain exactly one [1..1] @moodCode="EVN" Event (CodeSystem: ActMood urn:oid:2.16.840.1.113883.5.1001 STATIC) (CONF:1098-7653).</sch:assert>
			<sch:assert id="a-1098-7655" test="exists(cda:id)">SHALL contain at least one [1..*] id (CONF:1098-7655).</sch:assert>
			<sch:assert id="a-1098-7656" test="count(cda:code)=1">SHALL contain exactly one [1..1] code (CONF:1098-7656).</sch:assert>
			<sch:assert id="a-1098-19206-c" test="empty(cda:code/cda:originalText/cda:reference[@value]) or (count($origTextValue)=1 and starts-with($origTextValue, '#') and count(//*[@ID=substring($origTextValue, 2)])=1)">This reference/@value SHALL begin with a '#' and SHALL point to its corresponding narrative (using the approach defined in CDA Release 2, section 4.3.5.1) (CONF:1098-19206).</sch:assert>
			<sch:assert id="a-1098-7661" test="count(cda:statusCode)=1">SHALL contain exactly one [1..1] statusCode (CONF:1098-7661).</sch:assert>
			<sch:assert id="a-1098-32366" test="count(cda:statusCode[@code=document('voc.xml')/voc:systems/voc:system[@valueSetOid='2.16.840.1.113883.11.20.9.22']/voc:code/@value])=1">This statusCode SHALL contain exactly one [1..1] @code, which SHALL be selected from ValueSet ProcedureAct statusCode urn:oid:2.16.840.1.113883.11.20.9.22 STATIC 2014-04-23 (CONF:1098-32366).</sch:assert>
			<sch:assert id="a-1098-7890-c" test="empty(cda:methodCode) or (count(cda:methodCode)=1 and count((cda:methodCode[exists(@nullFlavor)] and cda:methodCode/@nullFlavor=cda:code/@nullFlavor) or cda:methodCode/@codeSystem=cda:code/@codeSystem)=1)">MethodCode SHALL NOT conflict with the method inherent in Procedure / code (CONF:1098-7890).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.14-2014-06-09-branch-1098-7683-errors" context="cda:procedure[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.14' and @extension = '2014-06-09']]/cda:targetSiteCode">
			<sch:assert id="a-1098-16082" test="exists(@code)">The targetSiteCode, if present, SHALL contain exactly one [1..1] @code, which SHALL be selected from ValueSet Body Site urn:oid:2.16.840.1.113883.3.88.12.3221.8.9 DYNAMIC (CONF:1098-16082).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.14-2014-06-09-branch-1098-7697-errors" context="cda:procedure[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.14' and @extension = '2014-06-09']]/cda:specimen">
			<sch:assert id="a-1098-7704" test="count(cda:specimenRole)=1">The specimen, if present, SHALL contain exactly one [1..1] specimenRole (CONF:1098-7704). If you want to indicate that the Procedure and the Results are referring to the same specimen, the Procedure/specimen/specimenRole/id SHOULD be set to equal an Organizer/specimen/specimenRole/id (CONF:1098-29744).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.14-2014-06-09-branch-1098-7733-errors" context="cda:procedure[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.14' and @extension = '2014-06-09']]/cda:performer/cda:assignedEntity/cda:representedOrganization">
			<sch:assert id="a-1098-7737" test="count(cda:telecom)=1">The representedOrganization, if present, SHALL contain exactly one [1..1] telecom (CONF:1098-7737).</sch:assert>
			<sch:assert id="a-1098-7736" test="count(cda:addr)=1">The representedOrganization, if present, SHALL contain exactly one [1..1] addr (CONF:1098-7736).</sch:assert>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.4-2014-06-09-errors">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.4-2014-06-09-errors-abstract" abstract="true">
			<sch:assert id="a-1098-14926" test="count(cda:templateId[@root='2.16.840.1.113883.10.20.22.4.4'][@extension='2014-06-09'])=1">SHALL contain exactly one [1..1] templateId (CONF:1098-14926) such that it SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.4.4" (CONF:1098-14927). SHALL contain exactly one [1..1] @extension="2014-06-09" (CONF:1098-32508).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.4-2014-06-09-errors" context="cda:observation[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.4' and @extension = '2014-06-09']]">
			<sch:assert id="a-1098-9041" test="@classCode='OBS'">SHALL contain exactly one [1..1] @classCode="OBS" Observation (CodeSystem: HL7ActClass urn:oid:2.16.840.1.113883.5.6 STATIC) (CONF:1098-9041).</sch:assert>
			<sch:assert id="a-1098-9042" test="@moodCode='EVN'">SHALL contain exactly one [1..1] @moodCode="EVN" Event (CodeSystem: ActMood urn:oid:2.16.840.1.113883.5.1001 STATIC) (CONF:1098-9042).</sch:assert>
			<sch:assert id="a-1098-9043" test="exists(cda:id)">SHALL contain at least one [1..*] id (CONF:1098-9043).</sch:assert>
			<sch:assert id="a-1098-9045" test="count(cda:code)=1">SHALL contain exactly one [1..1] code, which SHOULD be selected from ValueSet Problem Type urn:oid:2.16.840.1.113883.3.88.12.3221.7.2 STATIC 2014-09-02 (CONF:1098-9045).</sch:assert>
			<sch:assert id="a-1098-9049" test="count(cda:statusCode)=1 and count(cda:statusCode[@code='completed'])=1">SHALL contain exactly one [1..1] statusCode (CONF:1098-9049). This statusCode SHALL contain exactly one [1..1] @code="completed" Completed (CodeSystem: ActStatus urn:oid:2.16.840.1.113883.5.14 STATIC) (CONF:1098-19112).</sch:assert>
			<sch:assert id="a-1098-9050" test="count(cda:effectiveTime)=1">If the problem is known to be resolved, but the date of resolution is not known, then the high element SHALL be present, and the nullFlavor attribute SHALL be set to 'UNK'. Therefore, the existence of an high element within a problem does indicate that the problem has been resolved.
SHALL contain exactly one [1..1] effectiveTime (CONF:1098-9050).</sch:assert>
			<sch:assert id="a-1098-15603" test="count(cda:effectiveTime[count(cda:low)=1])=1">The effectiveTime/low (a.k.a. "onset date") asserts when the condition became biologically active.
This effectiveTime SHALL contain exactly one [1..1] low (CONF:1098-15603).</sch:assert>
			<sch:assert id="a-1098-9058-c" test="count(cda:value[@xsi:type='CD'])=1">SHALL contain exactly one [1..1] value with @xsi:type="CD", where the code SHOULD be selected from ValueSet Problem urn:oid:2.16.840.1.113883.3.88.12.3221.7.4 DYNAMIC (CONF:1098-9058).</sch:assert>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.3-2014-06-09-errors">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.3-2014-06-09-errors-abstract" abstract="true">
			<sch:assert id="a-1098-16772" test="count(cda:templateId[@root='2.16.840.1.113883.10.20.22.4.3'][@extension='2014-06-09'])=1">SHALL contain exactly one [1..1] templateId (CONF:1098-16772) such that it SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.4.3" (CONF:1098-16773). SHALL contain exactly one [1..1] @extension="2014-06-09" (CONF:1098-32509).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.3-2014-06-09-errors" context="cda:act[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.3' and @extension = '2014-06-09']]">
			<sch:assert id="a-1098-9024" test="@classCode='ACT'">SHALL contain exactly one [1..1] @classCode="ACT" Act (CodeSystem: HL7ActClass urn:oid:2.16.840.1.113883.5.6 STATIC) (CONF:1098-9024).</sch:assert>
			<sch:assert id="a-1098-9025" test="@moodCode='EVN'">SHALL contain exactly one [1..1] @moodCode="EVN" Event (CodeSystem: ActMood urn:oid:2.16.840.1.113883.5.1001 STATIC) (CONF:1098-9025).</sch:assert>
			<sch:assert id="a-1098-9026" test="exists(cda:id)">SHALL contain at least one [1..*] id (CONF:1098-9026).</sch:assert>
			<sch:assert id="a-1098-9027" test="count(cda:code)=1 and count(cda:code[empty(@nullFlavor) and @code='CONC' and @codeSystem='2.16.840.1.113883.5.6'])=1">SHALL contain exactly one [1..1] code (CONF:1098-9027). This code SHALL contain exactly one [1..1] @code="CONC" Concern (CONF:1098-19184). This code SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.5.6" (CodeSystem: HL7ActClass urn:oid:2.16.840.1.113883.5.6) (CONF:1098-32168).</sch:assert>
			<sch:assert id="a-1098-9029" test="count(cda:statusCode)=1">SHALL contain exactly one [1..1] statusCode (CONF:1098-9029).</sch:assert>
			<sch:assert id="a-1098-31525" test="count(cda:statusCode[@code=document('voc.xml')/voc:systems/voc:system[@valueSetOid='2.16.840.1.113883.11.20.9.19']/voc:code/@value])=1">This statusCode SHALL contain exactly one [1..1] @code, which SHALL be selected from ValueSet ProblemAct statusCode urn:oid:2.16.840.1.113883.11.20.9.19 STATIC 2011-09-10 (CONF:1098-31525).</sch:assert>
			<sch:assert id="a-1098-9030" test="count(cda:effectiveTime)=1">SHALL contain exactly one [1..1] effectiveTime (CONF:1098-9030).</sch:assert>
			<sch:assert id="a-1098-9032" test="count(cda:effectiveTime[count(cda:low)=1])=1">This effectiveTime SHALL contain exactly one [1..1] low (CONF:1098-9032).
Note: The effectiveTime/low asserts when the concern became active. This equates to the time the concern was authored in the patient's chart. </sch:assert>
			<sch:assert id="a-1098-9034" test="exists(cda:entryRelationship[@typeCode='SUBJ'][count(cda:observation[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.4' and @extension = '2014-06-09']])=1])">SHALL contain at least one [1..*] entryRelationship (CONF:1098-9034) such that it SHALL contain exactly one [1..1] @typeCode="SUBJ" Has subject (CodeSystem: HL7ActRelationshipType urn:oid:2.16.840.1.113883.5.1002 STATIC) (CONF:1098-9035). SHALL contain exactly one [1..1] Problem Observation (V2) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.4.4:2014-06-09) (CONF:1098-15980).</sch:assert>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.20.22.2.5-2014-06-09-errors">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.5-2014-06-09-errors-abstract" abstract="true">
			<sch:assert id="a-1098-7877" test="count(cda:templateId[@root='2.16.840.1.113883.10.20.22.2.5'][@extension='2014-06-09'])=1">SHALL contain exactly one [1..1] templateId (CONF:1098-7877) such that it SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.2.5" (CONF:1098-10440). SHALL contain exactly one [1..1] @extension="2014-06-09" (CONF:1098-32511).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.5-2014-06-09-errors" context="cda:section[cda:templateId[@root='2.16.840.1.113883.10.20.22.2.5' and @extension = '2014-06-09']]">
			<sch:assert id="a-1098-15407" test="count(cda:code)=1 and count(cda:code[empty(@nullFlavor) and @code='11450-4' and @codeSystem='2.16.840.1.113883.6.1'])=1">SHALL contain exactly one [1..1] code (CONF:1098-15407). This code SHALL contain exactly one [1..1] @code="11450-4" Problem List (CONF:1098-15408). This code SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.6.1" (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:1098-31141).</sch:assert>
			<sch:assert id="a-1098-7879" test="count(cda:title)=1">SHALL contain exactly one [1..1] title (CONF:1098-7879).</sch:assert>
			<sch:assert id="a-1098-7880" test="count(cda:text)=1">SHALL contain exactly one [1..1] text (CONF:1098-7880).</sch:assert>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.20.22.2.5.1-2014-06-09-errors">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.5.1-2014-06-09-errors-abstract" abstract="true">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.5-2014-06-09-errors-abstract"/>
			<sch:assert id="a-1098-9179" test="count(cda:templateId[@root='2.16.840.1.113883.10.20.22.2.5.1'][@extension='2014-06-09'])=1">SHALL contain exactly one [1..1] templateId (CONF:1098-9179) such that it SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.2.5.1" (CONF:1098-10441). SHALL contain exactly one [1..1] @extension="2014-06-09" (CONF:1098-32510).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.5.1-2014-06-09-errors" context="cda:section[cda:templateId[@root='2.16.840.1.113883.10.20.22.2.5.1' and @extension = '2014-06-09']]">
			<sch:assert id="a-1098-15409" test="count(cda:code)=1 and count(cda:code[empty(@nullFlavor) and @code='11450-4' and @codeSystem='2.16.840.1.113883.6.1'])=1">SHALL contain exactly one [1..1] code (CONF:1098-15409). This code SHALL contain exactly one [1..1] @code="11450-4" Problem List (CONF:1098-15410). This code SHALL contain exactly one [1..1]  @codeSystem="2.16.840.1.113883.6.1" (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:1098-31142).</sch:assert>
			<sch:assert id="a-1098-9181" test="count(cda:title)=1">SHALL contain exactly one [1..1] title (CONF:1098-9181).</sch:assert>
			<sch:assert id="a-1098-9182" test="count(cda:text)=1">SHALL contain exactly one [1..1] text (CONF:1098-9182).</sch:assert>
			<sch:assert id="a-1098-9183-c" test="exists(@nullFlavor) or (exists(cda:entry[count(cda:act[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.3' and @extension='2014-06-09']])=1]) and not(exists(@nullFlavor) and exists(cda:entry)))">If section/@nullFlavor is not present:
SHALL contain at least one [1..*] entry (CONF:1098-9183) such that it SHALL contain exactly one [1..1] Problem Concern Act (V2) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.4.3:2014-06-09) (CONF:1098-15506).</sch:assert>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.20.22.2.38-2014-06-09-errors">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.38-2014-06-09-errors-abstract" abstract="true">
			<sch:assert id="a-1098-8152" test="count(cda:templateId[@root='2.16.840.1.113883.10.20.22.2.38'][@extension='2014-06-09'])=1">SHALL contain exactly one [1..1] templateId (CONF:1098-8152) such that it SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.2.38" (CONF:1098-10405). SHALL contain exactly one [1..1] @extension="2014-06-09" (CONF:1098-32525).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.38-2014-06-09-errors" context="cda:section[cda:templateId[@root='2.16.840.1.113883.10.20.22.2.38' and @extension = '2014-06-09']]">
			<sch:assert id="a-1098-15383" test="count(cda:code)=1 and count(cda:code[empty(@nullFlavor) and @code='29549-3' and @codeSystem='2.16.840.1.113883.6.1'])=1">SHALL contain exactly one [1..1] code (CONF:1098-15383). This code SHALL contain exactly one [1..1] @code="29549-3" Medications Administered (CONF:1098-15384). This code SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.6.1" (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:1098-30829).</sch:assert>
			<sch:assert id="a-1098-8154" test="count(cda:title)=1">SHALL contain exactly one [1..1] title (CONF:1098-8154).</sch:assert>
			<sch:assert id="a-1098-8155" test="count(cda:text)=1">SHALL contain exactly one [1..1] text (CONF:1098-8155).</sch:assert>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.20.22.2.7-2014-06-09-errors">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.7-2014-06-09-errors-abstract" abstract="true">
			<sch:assert id="a-1098-6270" test="count(cda:templateId[@root='2.16.840.1.113883.10.20.22.2.7'][@extension='2014-06-09'])=1">SHALL contain exactly one [1..1] templateId (CONF:1098-6270) such that it SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.2.7" (CONF:1098-6271). SHALL contain exactly one [1..1] @extension="2014-06-09" (CONF:1098-32532).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.7-2014-06-09-errors" context="cda:section[cda:templateId[@root='2.16.840.1.113883.10.20.22.2.7' and @extension = '2014-06-09']]">
			<sch:assert id="a-1098-15423" test="count(cda:code)=1 and count(cda:code[empty(@nullFlavor) and @code='47519-4' and @codeSystem='2.16.840.1.113883.6.1'])=1">SHALL contain exactly one [1..1] code (CONF:1098-15423). This code SHALL contain exactly one [1..1] @code="47519-4" History of Procedures (CONF:1098-15424). This code SHALL contain exactly one [1..1] @codeSystem (CodeSystem: LOINC 2.16.840.1.113883.6.1) (CONF:1098-31139).</sch:assert>
			<sch:assert id="a-1098-17184" test="count(cda:title)=1">SHALL contain exactly one [1..1] title (CONF:1098-17184).</sch:assert>
			<sch:assert id="a-1098-6273" test="count(cda:text)=1">SHALL contain exactly one [1..1] text (CONF:1098-6273).</sch:assert>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.20.22.2.7.1-2014-06-09-errors">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.7.1-2014-06-09-errors-abstract" abstract="true">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.7-2014-06-09-errors-abstract"/>
			<sch:assert id="a-1098-7891" test="count(cda:templateId[@root='2.16.840.1.113883.10.20.22.2.7.1'][@extension='2014-06-09'])=1">SHALL contain exactly one [1..1] templateId (CONF:1098-7891) such that it SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.2.7.1" (CONF:1098-10447). SHALL contain exactly one [1..1] @extension="2014-06-09" (CONF:1098-32533).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.7.1-2014-06-09-errors" context="cda:section[cda:templateId[@root='2.16.840.1.113883.10.20.22.2.7.1' and @extension = '2014-06-09']]">
			<sch:assert id="a-1098-15425" test="count(cda:code)=1 and count(cda:code[empty(@nullFlavor) and @code='47519-4' and @codeSystem='2.16.840.1.113883.6.1'])=1">SHALL contain exactly one [1..1] code (CONF:1098-15425). This code SHALL contain exactly one [1..1] @code="47519-4" History of Procedures (CONF:1098-15426). This code SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.6.1" (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:1098-31138).</sch:assert>
			<sch:assert id="a-1098-7893" test="count(cda:title)=1">SHALL contain exactly one [1..1] title (CONF:1098-7893).</sch:assert>
			<sch:assert id="a-1098-7894" test="count(cda:text)=1">SHALL contain exactly one [1..1] text (CONF:1098-7894).</sch:assert>
			<sch:assert id="a-1098-7895-c" test="exists(@nullFlavor) or (exists(cda:entry[count(cda:procedure[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.14'][@extension='2014-06-09']])=1]) or exists(cda:entry[count(cda:observation[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.13'][@extension='2014-06-09']])=1]) or exists(cda:entry[count(cda:act[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.12'][@extension='2014-06-09']])=1]) and not(exists(@nullFlavor) and exists(cda:entry)))">If section/@nullFlavor is not present there SHALL be at least one entry conformant to Procedure Activity Act (V2) (templateId 2.16.840.1.113883.10.20.22.4.12:2014-06-09) OR Procedure Activity Observation (V2) (templateId: 2.16.840.1.113883.10.20.22.4.13:2014-06-09) *OR* Procedure Activity Procedure (V2) (templateId: 2.16.840.1.113883.10.20.22.4.14:2014-06-09)
SHALL contain at least one [1..*] entry (CONF:1098-7895) such that it MAY contain zero or one [0..1] Procedure Activity Procedure (V2) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.4.14:2014-06-09) (CONF:1098-15512). MAY contain zero or one [0..1] Procedure Activity Act (V2) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.4.12:2014-06-09) (CONF:1098-32877). MAY contain zero or one [0..1] Procedure Activity Observation (V2) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.4.13:2014-06-09) (CONF:1098-32878).</sch:assert>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.40-2014-06-09-errors">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.40-2014-06-09-errors-abstract" abstract="true">
			<sch:assert id="a-1098-30437" test="count(cda:templateId[@root='2.16.840.1.113883.10.20.22.4.40'][@extension='2014-06-09'])=1">SHALL contain exactly one [1..1] templateId (CONF:1098-30437) such that it SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.4.40" (CONF:1098-30438). SHALL contain exactly one [1..1] @extension="2014-06-09" (CONF:1098-32553).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.40-2014-06-09-errors" context="cda:encounter[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.40' and @extension = '2014-06-09']]">
			<sch:assert id="a-1098-8564" test="@classCode='ENC'">SHALL contain exactly one [1..1] @classCode="ENC" (CodeSystem: HL7ActClass urn:oid:2.16.840.1.113883.5.6 STATIC) (CONF:1098-8564).</sch:assert>
			<sch:assert id="a-1098-8565" test="@moodCode=document('voc.xml')/voc:systems/voc:system[@valueSetOid='2.16.840.1.113883.11.20.9.23']/voc:code/@value">SHALL contain exactly one [1..1] @moodCode, which SHALL be selected from ValueSet Planned moodCode (Act/Encounter/Procedure) urn:oid:2.16.840.1.113883.11.20.9.23 STATIC 2011-09-30 (CONF:1098-8565).</sch:assert>
			<sch:assert id="a-1098-8567" test="exists(cda:id)">SHALL contain at least one [1..*] id (CONF:1098-8567).</sch:assert>
			<sch:assert id="a-1098-30439" test="count(cda:statusCode)=1 and count(cda:statusCode[@code='active'])=1">SHALL contain exactly one [1..1] statusCode (CONF:1098-30439). This statusCode SHALL contain exactly one [1..1] @code="active" Active (CodeSystem: ActStatus urn:oid:2.16.840.1.113883.5.14) (CONF:1098-31880).</sch:assert>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.41-2014-06-09-errors">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.41-2014-06-09-errors-abstract" abstract="true">
			<sch:assert id="a-1098-8568" test="@classCode='PROC'">SHALL contain exactly one [1..1] @classCode="PROC" (CodeSystem: HL7ActClass urn:oid:2.16.840.1.113883.5.6 STATIC) (CONF:1098-8568).</sch:assert>
			<sch:assert id="a-1098-8569" test="@moodCode=document('voc.xml')/voc:systems/voc:system[@valueSetOid='2.16.840.1.113883.11.20.9.23']/voc:code/@value">SHALL contain exactly one [1..1] @moodCode, which SHALL be selected from ValueSet Planned moodCode (Act/Encounter/Procedure) urn:oid:2.16.840.1.113883.11.20.9.23 STATIC 2011-09-30 (CONF:1098-8569).</sch:assert>
			<sch:assert id="a-1098-30444" test="count(cda:templateId[@root='2.16.840.1.113883.10.20.22.4.41' and @extension='2014-06-09'])=1">SHALL contain exactly one [1..1] templateId (CONF:1098-30444) such that it SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.4.41" (CONF:1098-30445). SHALL contain exactly one [1..1] @extension="2014-06-09" (CONF:1098-32554).</sch:assert>
			<sch:assert id="a-1098-8571" test="exists(cda:id)">SHALL contain at least one [1..*] id (CONF:1098-8571).</sch:assert>
			<sch:assert id="a-1098-30446" test="count(cda:statusCode)=1 and count(cda:statusCode[@code='active'])=1">SHALL contain exactly one [1..1] statusCode (CONF:1098-30446). This statusCode SHALL contain exactly one [1..1] @code="active" Active (CodeSystem: ActStatus urn:oid:2.16.840.1.113883.5.14) (CONF:1098-31978).</sch:assert>
			<sch:assert id="a-1098-31976" test="count(cda:code)=1">SHALL contain exactly one [1..1] code (CONF:1098-31976).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.41-2014-06-09-errors" context="cda:procedure[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.41' and @extension = '2014-06-09']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.41-2014-06-09-errors-abstract"/>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.41-2014-06-09-branch-1098-31980-errors" context="cda:procedure[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.41' and @extension = '2014-06-09']]/cda:methodCode">
			<sch:assert id="a-1098-31980-c" test="@nullFlavor=../cda:code/@nullFlavor or @codeSystem=../cda:code/@codeSystem">In a planned procedure the provider may suggest that a procedure should be performed using a particular method. MethodCode SHALL NOT conflict with the method inherent in Procedure/code (CONF:1098-31980).</sch:assert>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.42-2014-06-09-errors">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.42-2014-06-09-errors-abstract" abstract="true">
			<sch:assert id="a-1098-8572" test="@classCode='SBADM'">SHALL contain exactly one [1..1] @classCode="SBADM" (CodeSystem: HL7ActClass urn:oid:2.16.840.1.113883.5.6 STATIC) (CONF:1098-8572).</sch:assert>
			<sch:assert id="a-1098-8573" test="@moodCode=document('voc.xml')/voc:systems/voc:system[@valueSetOid='2.16.840.1.113883.11.20.9.24']/voc:code/@value">SHALL contain exactly one [1..1] @moodCode, which SHALL be selected from ValueSet Planned moodCode (SubstanceAdministration/Supply) urn:oid:2.16.840.1.113883.11.20.9.24 STATIC 2011-09-30 (CONF:1098-8573).</sch:assert>
			<sch:assert id="a-1098-30465" test="count(cda:templateId[@root='2.16.840.1.113883.10.20.22.4.42'][@extension='2014-06-09'])=1">SHALL contain exactly one [1..1] templateId (CONF:1098-30465) such that it SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.4.42" (CONF:1098-30466). SHALL contain exactly one [1..1] @extension="2014-06-09" (CONF:1098-32557).</sch:assert>
			<sch:assert id="a-1098-8575" test="exists(cda:id)">SHALL contain at least one [1..*] id (CONF:1098-8575).</sch:assert>
			<sch:assert id="a-1098-30468-c" test="count(cda:effectiveTime)=1">The effectiveTime in a planned medication activity represents the time that the medication activity should occur.
SHALL contain exactly one [1..1] effectiveTime (CONF:1098-30468).</sch:assert>
			<sch:assert id="a-1098-32082" test="count(cda:consumable)=1 and count(cda:consumable[count(cda:manufacturedProduct[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.23' and @extension = '2014-06-09']])=1])=1">SHALL contain exactly one [1..1] consumable (CONF:1098-32082). This consumable SHALL contain exactly one [1..1] Medication Information (V2) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.4.23:2014-06-09) (CONF:1098-32083).</sch:assert>
			<sch:assert id="a-1098-32087" test="count(cda:statusCode)=1 and count(cda:statusCode[@code='active'])=1">SHALL contain exactly one [1..1] statusCode (CONF:1098-32087). This statusCode SHALL contain exactly one [1..1] @code="active" Active (CodeSystem: ActStatus urn:oid:2.16.840.1.113883.5.14) (CONF:1098-32088).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.42-2014-06-09-errors" context="cda:substanceAdministration[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.42' and @extension = '2014-06-09']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.42-2014-06-09-errors-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.5-2014-06-09-errors">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.5-2014-06-09-errors-abstract" abstract="true">
			<sch:assert id="a-1098-9057" test="@classCode='OBS'">SHALL contain exactly one [1..1] @classCode="OBS" Observation (CodeSystem: HL7ActClass urn:oid:2.16.840.1.113883.5.6 STATIC) (CONF:1098-9057).</sch:assert>
			<sch:assert id="a-1098-9072" test="@moodCode='EVN'">SHALL contain exactly one [1..1] @moodCode="EVN" Event (CodeSystem: ActMood urn:oid:2.16.840.1.113883.5.1001 STATIC) (CONF:1098-9072).</sch:assert>
			<sch:assert id="a-1098-19143" test="count(cda:code)=1 and count(cda:code[empty(@nullFlavor) and @code='11323-3' and @codeSystem='2.16.840.1.113883.6.1'])=1">SHALL contain exactly one [1..1] code (CONF:1098-19143). This code SHALL contain exactly one [1..1] @code="11323-3" Health status (CONF:1098-19144). This code SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.6.1" (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:1098-32161).</sch:assert>
			<sch:assert id="a-1098-9074" test="count(cda:statusCode)=1 and count(cda:statusCode[empty(@nullFlavor) and @code='completed'])=1">SHALL contain exactly one [1..1] statusCode (CONF:1098-9074). This statusCode SHALL contain exactly one [1..1] @code="completed" Completed (CodeSystem: ActStatus urn:oid:2.16.840.1.113883.5.14 STATIC) (CONF:1098-19103).</sch:assert>
			<sch:assert id="a-1098-9075" test="count(cda:value[@xsi:type='CD' and (exists(@nullFlavor) or exists(@code))])=1">SHALL contain exactly one [1..1] value with @xsi:type="CD", where the code SHALL be selected from ValueSet HealthStatus urn:oid:2.16.840.1.113883.1.11.20.12 DYNAMIC (CONF:1098-9075).</sch:assert>
			<sch:assert id="a-1098-32486" test="exists(cda:id)">SHALL contain at least one [1..*] id (CONF:1098-32486).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.5-2014-06-09-errors" context="cda:observation[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.5' and @extension = '2014-06-09']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.5-2014-06-09-errors-abstract"/>
			<sch:assert id="a-1098-16756" test="count(cda:templateId[@root='2.16.840.1.113883.10.20.22.4.5'][@extension='2014-06-09'])=1">SHALL contain exactly one [1..1] templateId (CONF:1098-16756) such that it SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.4.5" (CONF:1098-16757). SHALL contain exactly one [1..1] @extension="2014-06-09" (CONF:1098-32558).</sch:assert>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.19-2014-06-09-errors">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.19-2014-06-09-errors-abstract" abstract="true">
			<sch:assert id="a-1098-7482" test="count(cda:templateId[@root='2.16.840.1.113883.10.20.22.4.19'][@extension='2014-06-09'])=1">SHALL contain exactly one [1..1] templateId (CONF:1098-7482) such that it SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.4.19" (CONF:1098-10502). SHALL contain exactly one [1..1] @extension="2014-06-09" (CONF:1098-32570).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.19-2014-06-09-errors" context="cda:observation[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.19' and @extension = '2014-06-09']]">
			<sch:assert id="a-1098-7480" test="@classCode='OBS'">SHALL contain exactly one [1..1] @classCode="OBS" (CodeSystem: HL7ActClass urn:oid:2.16.840.1.113883.5.6 STATIC) (CONF:1098-7480).</sch:assert>
			<sch:assert id="a-1098-7481" test="@moodCode='EVN'">SHALL contain exactly one [1..1] @moodCode="EVN" (CodeSystem: ActMood urn:oid:2.16.840.1.113883.5.1001 STATIC) (CONF:1098-7481).</sch:assert>
			<sch:assert id="a-1098-7483" test="exists(cda:id)">SHALL contain at least one [1..*] id (CONF:1098-7483).
Note: If the id element is used to reference a problem recorded else where in the document then this id must equal another entry/id in the same document instance. Application Software must be responsible for resolving the identifier back to its original object and then rendering the information in the correct place in the containing section's narrative text. Its purpose is to obviate the need to repeat the complete XML representation of the referred to entry when relating one entry to another.</sch:assert>
			<sch:assert id="a-1098-7487" test="count(cda:statusCode)=1 and count(cda:statusCode[empty(@nullFlavor) and @code='completed'])=1">SHALL contain exactly one [1..1] statusCode (CONF:1098-7487). This statusCode SHALL contain exactly one [1..1] @code="completed" Completed (CodeSystem: ActStatus urn:oid:2.16.840.1.113883.5.14 STATIC) (CONF:1098-19105).</sch:assert>
			<sch:assert id="a-1098-31229" test="count(cda:code)=1">SHALL contain exactly one [1..1] code, which MAY be selected from ValueSet Problem Type urn:oid:2.16.840.1.113883.3.88.12.3221.7.2 STATIC 2014-09-02 (CONF:1098-31229).</sch:assert>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.78-2014-06-09-errors">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.78-2014-06-09-errors-abstract" abstract="true">
			<sch:assert id="a-1098-14806" test="@classCode='OBS'">SHALL contain exactly one [1..1] @classCode="OBS" Observation (CodeSystem: HL7ActClass urn:oid:2.16.840.1.113883.5.6 STATIC) (CONF:1098-14806).</sch:assert>
			<sch:assert id="a-1098-14807" test="@moodCode='EVN'">SHALL contain exactly one [1..1] @moodCode="EVN" Event (CodeSystem: ActMood urn:oid:2.16.840.1.113883.5.1001 STATIC) (CONF:1098-14807).</sch:assert>
			<sch:assert id="a-1098-19170" test="count(cda:code)=1 and count(cda:code[empty(@nullFlavor) and @code='72166-2' and @codeSystem='2.16.840.1.113883.6.1'])=1">SHALL contain exactly one [1..1] code (CONF:1098-19170). This code SHALL contain exactly one [1..1] @code="72166-2" Tobacco smoking status NHIS (CONF:1098-31039). This code SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.6.1" (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:1098-32157).</sch:assert>
			<sch:assert id="a-1098-14809" test="count(cda:statusCode)=1 and count(cda:statusCode[empty(@nullFlavor) and @code='completed'])=1">SHALL contain exactly one [1..1] statusCode (CONF:1098-14809). This statusCode SHALL contain exactly one [1..1] @code="completed" Completed (CodeSystem: ActStatus urn:oid:2.16.840.1.113883.5.14 STATIC) (CONF:1098-19116).</sch:assert>
			<sch:assert id="a-1098-14810" test="count(cda:value[@xsi:type='CD'])=1">SHALL contain exactly one [1..1] value with @xsi:type="CD" (CONF:1098-14810).</sch:assert>
			<sch:assert id="a-1098-14817" test="count(cda:value[@xsi:type='CD'][@code=document('voc.xml')/voc:systems/voc:system[@valueSetOid='2.16.840.1.113883.11.20.9.38']/voc:code/@value])=1">This value SHALL contain exactly one [1..1] @code, which SHALL be selected from ValueSet Current Smoking Status urn:oid:2.16.840.1.113883.11.20.9.38 STATIC 2014-09-01 (CONF:1098-14817).
If the patient's current smoking status is unknown, @code SHALL contain '266927001' (Unknown if ever smoked) from ValueSet Current Smoking Status (2.16.840.1.113883.11.20.9.38 STATIC 2014-09-01) (CONF:1098-31019).</sch:assert>
			<sch:assert id="a-1098-31928" test="count(cda:effectiveTime)=1">SHALL contain exactly one [1..1] effectiveTime (CONF:1098-31928).
Note: This template represents a “snapshot in time” observation, simply reflecting what the patient’s current smoking status is at the time of the observation. As a result, the effectiveTime is constrained to just a time stamp, and will approximately correspond with the author/time.</sch:assert>
			<sch:assert id="a-1098-32401" test="exists(cda:id)">SHALL contain at least one [1..*] id (CONF:1098-32401).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.78-2014-06-09-errors" context="cda:observation[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.78' and @extension = '2014-06-09']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.78-2014-06-09-errors-abstract"/>
			<sch:assert id="a-1098-14815" test="count(cda:templateId[@root='2.16.840.1.113883.10.20.22.4.78'][@extension='2014-06-09'])=1">SHALL contain exactly one [1..1] templateId (CONF:1098-14815) such that it SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.4.78" (CONF:1098-14816). SHALL contain exactly one [1..1] @extension="2014-06-09" (CONF:1098-32573).</sch:assert>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.27-2014-06-09-errors">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.27-2014-06-09-errors-abstract" abstract="true">
			<sch:assert id="a-1098-7297" test="@classCode='OBS'">SHALL contain exactly one [1..1] @classCode="OBS" Observation (CodeSystem: HL7ActClass urn:oid:2.16.840.1.113883.5.6 STATIC) (CONF:1098-7297).</sch:assert>
			<sch:assert id="a-1098-7298" test="@moodCode='EVN'">SHALL contain exactly one [1..1] @moodCode="EVN" Event (CodeSystem: ActMood urn:oid:2.16.840.1.113883.5.1001 STATIC) (CONF:1098-7298).</sch:assert>
			<sch:assert id="a-1098-7300" test="exists(cda:id)">SHALL contain at least one [1..*] id (CONF:1098-7300).</sch:assert>
			<sch:assert id="a-1098-7301" test="count(cda:code)=1">SHALL contain exactly one [1..1] code, which SHOULD be selected from ValueSet Vital Sign Result urn:oid:2.16.840.1.113883.3.88.12.80.62 DYNAMIC (CONF:1098-7301).</sch:assert>
			<sch:assert id="a-1098-7303" test="count(cda:statusCode)=1 and count(cda:statusCode[empty(@nullFlavor) and @code='completed'])=1">SHALL contain exactly one [1..1] statusCode (CONF:1098-7303). This statusCode SHALL contain exactly one [1..1] @code="completed" Completed (CodeSystem: ActStatus urn:oid:2.16.840.1.113883.5.14 STATIC) (CONF:1098-19119).</sch:assert>
			<sch:assert id="a-1098-7304" test="count(cda:effectiveTime)=1">SHALL contain exactly one [1..1] effectiveTime (CONF:1098-7304).</sch:assert>
			<sch:assert id="a-1098-7305" test="count(cda:value[@xsi:type='PQ'])=1">SHALL contain exactly one [1..1] value with @xsi:type="PQ" (CONF:1098-7305).</sch:assert>
			<sch:assert id="a-1098-31579" test="count(cda:value[@xsi:type='PQ'][exists(@nullFlavor) or exists(@unit)])=1">This value SHALL contain exactly one [1..1] @unit, which SHALL be selected from ValueSet UnitsOfMeasureCaseSensitive urn:oid:2.16.840.1.113883.1.11.12839 DYNAMIC (CONF:1098-31579).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.27-2014-06-09-errors" context="cda:observation[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.27' and @extension = '2014-06-09']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.27-2014-06-09-errors-abstract"/>
			<sch:assert id="a-1098-7299" test="count(cda:templateId[@root='2.16.840.1.113883.10.20.22.4.27'][@extension='2014-06-09'])=1">SHALL contain exactly one [1..1] templateId (CONF:1098-7299) such that it SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.4.27" (CONF:1098-10527). SHALL contain exactly one [1..1] @extension="2014-06-09" (CONF:1098-32574).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.27-2014-06-09-branch-1098-7307-errors" context="cda:observation[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.27' and @extension = '2014-06-09']]/cda:interpretationCode">
			<sch:assert id="a-1098-32886" test="@code=document('voc.xml')/voc:systems/voc:system[@valueSetOid='2.16.840.1.113883.1.11.78']/voc:code/@value">The interpretationCode, if present, SHALL contain exactly one [1..1] @code (ValueSet: Observation Interpretation (HL7) urn:oid:2.16.840.1.113883.1.11.78 STATIC 2014-09-01) (CONF:1098-32886).</sch:assert>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.2-2014-06-09-errors">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.2-2014-06-09-errors-abstract" abstract="true">
			<sch:assert id="a-1098-7130" test="@classCode='OBS'">SHALL contain exactly one [1..1] @classCode="OBS" Observation (CodeSystem: HL7ActClass urn:oid:2.16.840.1.113883.5.6 STATIC) (CONF:1098-7130).</sch:assert>
			<sch:assert id="a-1098-7131" test="@moodCode='EVN'">SHALL contain exactly one [1..1] @moodCode="EVN" Event (CodeSystem: ActMood urn:oid:2.16.840.1.113883.5.1001 STATIC) (CONF:1098-7131).</sch:assert>
			<sch:assert id="a-1098-7137" test="exists(cda:id)">SHALL contain at least one [1..*] id (CONF:1098-7137).</sch:assert>
			<sch:assert id="a-1098-7133" test="count(cda:code)=1">SHALL contain exactly one [1..1] code, which SHOULD be selected from CodeSystem LOINC (urn:oid:2.16.840.1.113883.6.1) (CONF:1098-7133).</sch:assert>
			<sch:assert id="a-1098-7134" test="count(cda:statusCode)=1">SHALL contain exactly one [1..1] statusCode (CONF:1098-7134).</sch:assert>
			<sch:assert id="a-1098-14849" test="count(cda:statusCode[@code=document('voc.xml')/voc:systems/voc:system[@valueSetOid='2.16.840.1.113883.11.20.9.39']/voc:code/@value])=1">This statusCode SHALL contain exactly one [1..1] @code, which SHALL be selected from ValueSet Result Status urn:oid:2.16.840.1.113883.11.20.9.39 STATIC 2013-08-09 (CONF:1098-14849).</sch:assert>
			<sch:assert id="a-1098-7140" test="count(cda:effectiveTime)=1">SHALL contain exactly one [1..1] effectiveTime (CONF:1098-7140).
Note: Represents the biologically relevant time of the measurement (e.g., the time a blood pressure reading is obtained, the time the blood sample was obtained for a chemistry test).</sch:assert>
			<sch:assert id="a-1098-31484-c" test="true()">If Observation/value is a physical quantity (xsi:type="PQ"), the unit of measure SHALL be selected from ValueSet UnitsOfMeasureCaseSensitive 2.16.840.1.113883.1.11.12839 DYNAMIC (CONF:1098-31484).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.2-2014-06-09-errors" context="cda:observation[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.2' and @extension = '2014-06-09']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.2-2014-06-09-errors-abstract"/>
			<sch:assert id="a-1098-7136" test="count(cda:templateId[@root='2.16.840.1.113883.10.20.22.4.2'][@extension='2014-06-09'])=1">SHALL contain exactly one [1..1] templateId (CONF:1098-7136) such that it SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.4.2" (CONF:1098-9138). SHALL contain exactly one [1..1] @extension="2014-06-09" (CONF:1098-32575).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.2-2014-06-09-branch-1098-7147-errors" context="cda:observation[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.2' and @extension = '2014-06-09']]/cda:interpretationCode">
			<sch:assert id="a-1098-32476" test="@code=document('voc.xml')/voc:systems/voc:system[@valueSetOid='2.16.840.1.113883.1.11.78']/voc:code/@value">The interpretationCode, if present, SHALL contain exactly one [1..1] @code, which SHALL be selected from ValueSet Observation Interpretation (HL7) urn:oid:2.16.840.1.113883.1.11.78 STATIC 2014-09-01 (CONF:1098-32476).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.2-2014-06-09-branch-1098-7150-errors" context="cda:observation[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.2' and @extension = '2014-06-09']]/cda:referenceRange">
			<sch:assert id="a-1098-7151" test="count(cda:observationRange)=1">The referenceRange, if present, SHALL contain exactly one [1..1] observationRange (CONF:1098-7151).</sch:assert>
			<sch:assert id="a-1098-7152-c" test="empty(cda:observationRange/cda:code)">This observationRange SHALL NOT contain [0..0] code (CONF:1098-7152).</sch:assert>
			<sch:assert id="a-1098-32175" test="empty(cda:observationRange) or (count(cda:observationRange)=1 and count(cda:observationRange[count(cda:value)=1])=1)">This observationRange SHALL contain exactly one [1..1] value (CONF:1098-32175).</sch:assert>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.23-2014-06-09-errors">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.23-2014-06-09-errors-abstract" abstract="true">
			<sch:assert id="a-1098-7408" test="@classCode='MANU'">SHALL contain exactly one [1..1] @classCode="MANU" (CodeSystem: RoleClass urn:oid:2.16.840.1.113883.5.110 STATIC) (CONF:1098-7408).</sch:assert>
			<sch:assert id="a-1098-7411" test="count(cda:manufacturedMaterial)=1">SHALL contain exactly one [1..1] manufacturedMaterial (CONF:1098-7411).
Note: A medication should be recorded as a pre-coordinated ingredient + strength + dose form (e.g., “metoprolol 25mg tablet”, “amoxicillin 400mg/5mL suspension”) where possible. This includes RxNorm codes whose Term Type is SCD (semantic clinical drug), SBD (semantic brand drug), GPCK (generic pack), BPCK (brand pack).</sch:assert>
			<sch:assert id="a-1098-7412" test="count(cda:manufacturedMaterial[count(cda:code)=1])=1">This manufacturedMaterial SHALL contain exactly one [1..1] code, which SHALL be selected from ValueSet Medication Clinical Drug urn:oid:2.16.840.1.113762.1.4.1010.4 DYNAMIC (CONF:1098-7412).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.23-2014-06-09-errors" context="cda:manufacturedProduct[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.23' and @extension = '2014-06-09']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.23-2014-06-09-errors-abstract"/>
			<sch:assert id="a-1098-7409" test="count(cda:templateId[@root='2.16.840.1.113883.10.20.22.4.23'][@extension='2014-06-09'])=1">SHALL contain exactly one [1..1] templateId (CONF:1098-7409) such that it SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.4.23" (CONF:1098-10506). SHALL contain exactly one [1..1] @extension="2014-06-09" (CONF:1098-32579).</sch:assert>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.6-2014-06-09-errors">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.6-2014-06-09-errors-abstract" abstract="true">
			<sch:assert id="a-1098-7357" test="@classCode='OBS'">SHALL contain exactly one [1..1] @classCode="OBS" Observation (CodeSystem: HL7ActClass urn:oid:2.16.840.1.113883.5.6 STATIC) (CONF:1098-7357).</sch:assert>
			<sch:assert id="a-1098-7358" test="@moodCode='EVN'">SHALL contain exactly one [1..1] @moodCode="EVN" Event (CodeSystem: ActMood urn:oid:2.16.840.1.113883.5.1001 STATIC) (CONF:1098-7358).</sch:assert>
			<sch:assert id="a-1098-19162" test="count(cda:code)=1 and count(cda:code[empty(@nullFlavor) and @code='33999-4' and @codeSystem='2.16.840.1.113883.6.1'])=1">SHALL contain exactly one [1..1] code (CONF:1098-19162). This code SHALL contain exactly one [1..1] @code="33999-4" Status (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1 STATIC) (CONF:1098-19163).</sch:assert>
			<sch:assert id="a-1098-7364" test="count(cda:statusCode)=1 and count(cda:statusCode[empty(@nullFlavor) and @code='completed'])=1">SHALL contain exactly one [1..1] statusCode (CONF:1098-7364). This statusCode SHALL contain exactly one [1..1] @code="completed" Completed (CodeSystem: ActStatus urn:oid:2.16.840.1.113883.5.14 STATIC) (CONF:1098-19113).</sch:assert>
			<sch:assert id="a-1098-7365" test="count(cda:value[@xsi:type='CD'])=1">SHALL contain exactly one [1..1] value with @xsi:type="CD", where the code SHALL be selected from ValueSet Problem Status urn:oid:2.16.840.1.113883.3.88.12.80.68 DYNAMIC (CONF:1098-7365).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.6-2014-06-09-errors" context="cda:observation[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.6' and @extension = '2014-06-09']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.6-2014-06-09-errors-abstract"/>
			<sch:assert id="a-1098-7359" test="count(cda:templateId[@root='2.16.840.1.113883.10.20.22.4.6'][@extension='2014-06-09'])=1">SHALL contain exactly one [1..1] templateId (CONF:1098-7359) such that it SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.4.6" (CONF:1098-10518). SHALL contain exactly one [1..1] @extension="2014-06-09" (CONF:1098-32581).</sch:assert>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.26-2014-06-09-errors">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.26-2014-06-09-errors-abstract" abstract="true">
			<sch:assert id="a-1098-7279" test="@classCode='CLUSTER'">SHALL contain exactly one [1..1] @classCode="CLUSTER" CLUSTER (CodeSystem: HL7ActClass urn:oid:2.16.840.1.113883.5.6 STATIC) (CONF:1098-7279).</sch:assert>
			<sch:assert id="a-1098-7280" test="@moodCode='EVN'">SHALL contain exactly one [1..1] @moodCode="EVN" Event (CodeSystem: ActMood urn:oid:2.16.840.1.113883.5.1001 STATIC) (CONF:1098-7280).</sch:assert>
			<sch:assert id="a-1098-7282" test="exists(cda:id)">SHALL contain at least one [1..*] id (CONF:1098-7282).</sch:assert>
			<sch:assert id="a-1098-7284" test="count(cda:statusCode)=1 and count(cda:statusCode[empty(@nullFlavor) and @code='completed'])=1">SHALL contain exactly one [1..1] statusCode (CONF:1098-7284). This statusCode SHALL contain exactly one [1..1] @code="completed" Completed (CodeSystem: ActStatus urn:oid:2.16.840.1.113883.5.14 STATIC) (CONF:1098-19120).</sch:assert>
			<sch:assert id="a-1098-7285" test="exists(cda:component[count(cda:observation[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.27' and @extension = '2014-06-09']])=1])">SHALL contain at least one [1..*] component (CONF:1098-7285) such that it SHALL contain exactly one [1..1] Vital Sign Observation (V2) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.4.27:2014-06-09) (CONF:1098-15946).</sch:assert>
			<sch:assert id="a-1098-32741" test="empty(cda:code) or (count(cda:code)=1 and count(cda:code[empty(@nullFlavor) and @code='74728-7' and @codeSystem='2.16.840.1.113883.6.1'])=1)">The code, if present, SHALL contain exactly one [1..1] @code="74728-7" Vital signs, weight, height, head circumference, oximetry, BMI, and BSA panel - HL7.CCDAr1.1 (CONF:1098-32741). The code, if present, SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.6.1 " LOINC (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:1098-32742).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.26-2014-06-09-errors" context="cda:organizer[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.26' and @extension = '2014-06-09']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.26-2014-06-09-errors-abstract"/>
			<sch:assert id="a-1098-7281" test="count(cda:templateId[@root='2.16.840.1.113883.10.20.22.4.26'][@extension='2014-06-09'])=1">SHALL contain exactly one [1..1] templateId (CONF:1098-7281) such that it SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.4.26" (CONF:1098-10528). SHALL contain exactly one [1..1] @extension="2014-06-09" (CONF:1098-32582).</sch:assert>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.20.22.2.4-2014-06-09-errors">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.4-2014-06-09-errors-abstract" abstract="true">
			<sch:assert id="a-1098-7268" test="count(cda:templateId[@root='2.16.840.1.113883.10.20.22.2.4'][@extension='2014-06-09'])=1">SHALL contain exactly one [1..1] templateId (CONF:1098-7268) such that it SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.2.4" (CONF:1098-10451). SHALL contain exactly one [1..1] @extension="2014-06-09" (CONF:1098-32584).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.4-2014-06-09-errors" context="cda:section[cda:templateId[@root='2.16.840.1.113883.10.20.22.2.4' and @extension = '2014-06-09']]">
			<sch:assert id="a-1098-15242" test="count(cda:code)=1 and count(cda:code[empty(@nullFlavor) and @code='8716-3' and @codeSystem='2.16.840.1.113883.6.1'])=1">SHALL contain exactly one [1..1] code (CONF:1098-15242). This code SHALL contain exactly one [1..1] @code="8716-3" Vital Signs (CONF:1098-15243). This code SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.6.1" (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:1098-30902).</sch:assert>
			<sch:assert id="a-1098-9966" test="count(cda:title)=1">SHALL contain exactly one [1..1] title (CONF:1098-9966).</sch:assert>
			<sch:assert id="a-1098-7270" test="count(cda:text)=1">SHALL contain exactly one [1..1] text (CONF:1098-7270).</sch:assert>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.20.22.2.4.1-2014-06-09-errors">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.4.1-2014-06-09-errors-abstract" abstract="true">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.4-2014-06-09-errors-abstract"/>
			<sch:assert id="a-1098-15962" test="count(cda:code)=1 and count(cda:code[empty(@nullFlavor) and @code='8716-3' and @codeSystem='2.16.840.1.113883.6.1'])=1">SHALL contain exactly one [1..1] code (CONF:1098-15962). This code SHALL contain exactly one [1..1] @code="8716-3" Vital Signs (CONF:1098-15963). This code SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.6.1" (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:1098-30903).</sch:assert>
			<sch:assert id="a-1098-9967" test="count(cda:title)=1">SHALL contain exactly one [1..1] title (CONF:1098-9967).</sch:assert>
			<sch:assert id="a-1098-7275" test="count(cda:text)=1">SHALL contain exactly one [1..1] text (CONF:1098-7275).</sch:assert>
			<sch:assert id="a-1098-7276-c" test="exists(@nullFlavor) or (exists(cda:entry[count(cda:organizer[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.26'][@extension='2014-06-09']])=1]) and not(exists(@nullFlavor) and exists(cda:entry)))">If section/@nullFlavor is not present:
SHALL contain at least one [1..*] entry (CONF:1098-7276) such that it SHALL contain exactly one [1..1] Vital Signs Organizer (V2) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.4.26:2014-06-09) (CONF:1098-15964).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.4.1-2014-06-09-errors" context="cda:section[cda:templateId[@root='2.16.840.1.113883.10.20.22.2.4.1' and @extension = '2014-06-09']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.4.1-2014-06-09-errors-abstract"/>
			<sch:assert id="a-1098-7273" test="count(cda:templateId[@root='2.16.840.1.113883.10.20.22.2.4.1'][@extension='2014-06-09'])=1">SHALL contain exactly one [1..1] templateId (CONF:1098-7273) such that it SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.2.4.1" (CONF:1098-10452). SHALL contain exactly one [1..1] @extension="2014-06-09" (CONF:1098-32585).</sch:assert>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.1-2014-06-09-errors">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.1-2014-06-09-errors-abstract" abstract="true">
			<sch:assert id="a-1098-7121" test="exists(@nullFlavor) or @classCode='BATTERY' or @classCode='CLUSTER'">SHALL contain exactly one [1..1] @classCode (CodeSystem: HL7ActClass urn:oid:2.16.840.1.113883.5.6 STATIC) (CONF:1098-7121).</sch:assert>
			<sch:assert id="a-1098-7122" test="@moodCode='EVN'">SHALL contain exactly one [1..1] @moodCode="EVN" Event (CodeSystem: ActMood urn:oid:2.16.840.1.113883.5.1001 STATIC) (CONF:1098-7122).</sch:assert>
			<sch:assert id="a-1098-7127" test="exists(cda:id)">SHALL contain at least one [1..*] id (CONF:1098-7127).</sch:assert>
			<sch:assert id="a-1098-7128" test="count(cda:code)=1">SHALL contain exactly one [1..1] code (CONF:1098-7128).</sch:assert>
			<sch:assert id="a-1098-7123" test="count(cda:statusCode)=1">SHALL contain exactly one [1..1] statusCode (CONF:1098-7123).</sch:assert>
			<sch:assert id="a-1098-14848" test="count(cda:statusCode[@code=document('voc.xml')/voc:systems/voc:system[@valueSetOid='2.16.840.1.113883.11.20.9.39']/voc:code/@value])=1">This statusCode SHALL contain exactly one [1..1] @code, which SHALL be selected from ValueSet Result Status urn:oid:2.16.840.1.113883.11.20.9.39 STATIC 2013-08-09 (CONF:1098-14848).</sch:assert>
			<sch:assert id="a-1098-7124" test="exists(cda:component[count(cda:observation[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.2' and @extension = '2014-06-09']])=1])">SHALL contain at least one [1..*] component (CONF:1098-7124) such that it SHALL contain exactly one [1..1] Result Observation (V2) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.4.2:2014-06-09) (CONF:1098-14850).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.1-2014-06-09-errors" context="cda:organizer[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.1' and @extension = '2014-06-09']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.1-2014-06-09-errors-abstract"/>
			<sch:assert id="a-1098-7126" test="count(cda:templateId[@root='2.16.840.1.113883.10.20.22.4.1' and @extension='2014-06-09'])=1">SHALL contain exactly one [1..1] templateId (CONF:1098-7126) such that it SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.4.1" (CONF:1098-9134). SHALL contain exactly one [1..1] @extension="2014-06-09" (CONF:1098-32588).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.1-2014-06-09-branch-1098-31865-errors" context="cda:organizer[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.1' and @extension = '2014-06-09']]/cda:effectiveTime">
			<sch:assert id="a-1098-32488" test="count(cda:low)=1">The effectiveTime, if present, SHALL contain exactly one [1..1] low (CONF:1098-32488).</sch:assert>
			<sch:assert id="a-1098-32489" test="count(cda:high)=1">The effectiveTime, if present, SHALL contain exactly one [1..1] high (CONF:1098-32489).</sch:assert>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.85-2014-06-09-errors">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.85-2014-06-09-errors-abstract" abstract="true">
			<sch:assert id="a-1098-16558" test="@classCode='OBS'">SHALL contain exactly one [1..1] @classCode="OBS" Observation (CodeSystem: HL7ActClass urn:oid:2.16.840.1.113883.5.6 STATIC) (CONF:1098-16558).</sch:assert>
			<sch:assert id="a-1098-16559" test="@moodCode='EVN'">SHALL contain exactly one [1..1] @moodCode="EVN" Event (CodeSystem: ActMood urn:oid:2.16.840.1.113883.5.1001 STATIC) (CONF:1098-16559).</sch:assert>
			<sch:assert id="a-1098-19174" test="count(cda:code)=1 and count(cda:code[empty(@nullFlavor) and @code='11367-0' and @codeSystem='2.16.840.1.113883.6.1'])=1">SHALL contain exactly one [1..1] code (CONF:1098-19174). This code SHALL contain exactly one [1..1] @code="11367-0" History of tobacco use (CONF:1098-19175). This code SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.6.1" (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:1098-32172).</sch:assert>
			<sch:assert id="a-1098-16561" test="count(cda:statusCode)=1 and count(cda:statusCode[empty(@nullFlavor) and @code='completed'])=1">SHALL contain exactly one [1..1] statusCode (CONF:1098-16561). This statusCode SHALL contain exactly one [1..1] @code="completed" Completed (CodeSystem: ActStatus urn:oid:2.16.840.1.113883.5.14 STATIC) (CONF:1098-19118).</sch:assert>
			<sch:assert id="a-1098-16564" test="count(cda:effectiveTime)=1">SHALL contain exactly one [1..1] effectiveTime (CONF:1098-16564).
Note: The effectiveTime represents the biologically relevant time of the observation. Thus, an observation of “former smoker” will have an effectiveTime defining the time during which the patient has been a former smoker; an observation of “current smoker” will have an effectiveTime defining the time during which the patient has been a current smoker.</sch:assert>
			<sch:assert id="a-1098-16565" test="count(cda:effectiveTime[count(cda:low)=1])=1">This effectiveTime SHALL contain exactly one [1..1] low (CONF:1098-16565).</sch:assert>
			<sch:assert id="a-1098-16562" test="count(cda:value[@xsi:type='CD'])=1">SHALL contain exactly one [1..1] value with @xsi:type="CD" (CONF:1098-16562).</sch:assert>
			<sch:assert id="a-1098-16563" test="count(cda:value[@xsi:type='CD' and exists(@code)])=1">This value SHALL contain exactly one [1..1] @code, which SHALL be selected from ValueSet Tobacco Use urn:oid:2.16.840.1.113883.11.20.9.41 DYNAMIC (CONF:1098-16563).</sch:assert>
			<sch:assert id="a-1098-32400" test="exists(cda:id)">SHALL contain at least one [1..*] id (CONF:1098-32400).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.85-2014-06-09-errors" context="cda:observation[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.85' and @extension = '2014-06-09']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.85-2014-06-09-errors-abstract"/>
			<sch:assert id="a-1098-16566" test="count(cda:templateId[@root='2.16.840.1.113883.10.20.22.4.85'][@extension='2014-06-09'])=1">SHALL contain exactly one [1..1] templateId (CONF:1098-16566) such that it SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.4.85" (CONF:1098-16567). SHALL contain exactly one [1..1] @extension="2014-06-09" (CONF:1098-32589).</sch:assert>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.20.22.2.3-2014-06-09-errors">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.3-2014-06-09-errors-abstract" abstract="true">
			<sch:assert id="a-1098-7116" test="count(cda:templateId[@root='2.16.840.1.113883.10.20.22.2.3'][@extension='2014-06-09'])=1">SHALL contain exactly one [1..1] templateId (CONF:1098-7116) such that it SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.2.3" (CONF:1098-9136). SHALL contain exactly one [1..1] @extension="2014-06-09" (CONF:1098-32591).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.3-2014-06-09-errors" context="cda:section[cda:templateId[@root='2.16.840.1.113883.10.20.22.2.3' and @extension = '2014-06-09']]">
			<sch:assert id="a-1098-15431" test="count(cda:code)=1 and count(cda:code[empty(@nullFlavor) and @code='30954-2' and @codeSystem='2.16.840.1.113883.6.1'])=1">SHALL contain exactly one [1..1] code (CONF:1098-15431). This code SHALL contain exactly one [1..1] @code="30954-2" Relevant diagnostic tests and/or laboratory data (CONF:1098-15432). This code SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.6.1" (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:1098-31041).</sch:assert>
			<sch:assert id="a-1098-8891" test="count(cda:title)=1">SHALL contain exactly one [1..1] title (CONF:1098-8891).</sch:assert>
			<sch:assert id="a-1098-7118" test="count(cda:text)=1">SHALL contain exactly one [1..1] text (CONF:1098-7118).</sch:assert>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.20.22.2.3.1-2014-06-09-errors">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.3.1-2014-06-09-errors-abstract" abstract="true">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.3-2014-06-09-errors-abstract"/>
			<sch:assert id="a-1098-15433" test="count(cda:code)=1 and count(cda:code[empty(@nullFlavor) and @code='30954-2' and @codeSystem='2.16.840.1.113883.6.1'])=1">SHALL contain exactly one [1..1] code (CONF:1098-15433). This code SHALL contain exactly one [1..1] @code="30954-2" Relevant diagnostic tests and/or laboratory data (CONF:1098-15434). This code SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.6.1" (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:1098-31040).</sch:assert>
			<sch:assert id="a-1098-8892" test="count(cda:title)=1">SHALL contain exactly one [1..1] title (CONF:1098-8892).</sch:assert>
			<sch:assert id="a-1098-7111" test="count(cda:text)=1">SHALL contain exactly one [1..1] text (CONF:1098-7111).</sch:assert>
			<sch:assert id="a-1098-7112-c" test="exists(@nullFlavor) or (exists(cda:entry[count(cda:organizer[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.1'][@extension='2014-06-09']])=1]) and not(exists(@nullFlavor) and exists(cda:entry)))">If section/@nullFlavor is not present:
SHALL contain at least one [1..*] entry (CONF:1098-7112) such that it SHALL contain exactly one [1..1] Result Organizer (V2) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.4.1:2014-06-09) (CONF:1098-15516).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.3.1-2014-06-09-errors" context="cda:section[cda:templateId[@root='2.16.840.1.113883.10.20.22.2.3.1' and @extension = '2014-06-09']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.3.1-2014-06-09-errors-abstract"/>
			<sch:assert id="a-1098-7108" test="count(cda:templateId[@root='2.16.840.1.113883.10.20.22.2.3.1'][@extension='2014-06-09'])=1">SHALL contain exactly one [1..1] templateId (CONF:1098-7108) such that it SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.2.3.1" (CONF:1098-9137). SHALL contain exactly one [1..1] @extension="2014-06-09" (CONF:1098-32592).</sch:assert>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.61-2014-06-09-errors">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.61-2014-06-09-errors-abstract" abstract="true">
			<sch:assert id="a-1098-8898" test="@classCode='ACT'">SHALL contain exactly one [1..1] @classCode="ACT" Act (CodeSystem: HL7ActClass urn:oid:2.16.840.1.113883.5.6 STATIC) (CONF:1098-8898).</sch:assert>
			<sch:assert id="a-1098-8899" test="@moodCode='EVN'">SHALL contain exactly one [1..1] @moodCode="EVN" Event (CodeSystem: ActMood urn:oid:2.16.840.1.113883.5.1001 STATIC) (CONF:1098-8899).</sch:assert>
			<sch:assert id="a-1098-8901" test="exists(cda:id)">This id is a unique identifier for the policy or program providing the coverage
SHALL contain at least one [1..*] id (CONF:1098-8901).</sch:assert>
			<sch:assert id="a-1098-8903" test="exists(@nullFlavor) or count(cda:code)=1">SHALL contain exactly one [1..1] code, which SHOULD be selected from ValueSet Payer urn:oid:2.16.840.1.114222.4.11.3591 DYNAMIC (CONF:1098-8903).</sch:assert>
			<sch:assert id="a-1098-8902" test="count(cda:statusCode)=1 and count(cda:statusCode[@code='completed'])=1">SHALL contain exactly one [1..1] statusCode (CONF:1098-8902). This statusCode SHALL contain exactly one [1..1] @code="completed" Completed (CodeSystem: ActStatus urn:oid:2.16.840.1.113883.5.14 STATIC) (CONF:1098-19109).</sch:assert>
			<sch:assert id="a-1098-8906" test="count(cda:performer[@typeCode='PRF' and count(cda:templateId[@root='2.16.840.1.113883.10.20.22.4.87'])=1][count(cda:assignedEntity[exists(cda:id)])=1])=1">This performer represents the Payer.
SHALL contain exactly one [1..1] performer (CONF:1098-8906) such that it SHALL contain exactly one [1..1] @typeCode="PRF" Performer (CodeSystem: HL7ParticipationType urn:oid:2.16.840.1.113883.5.90 STATIC) (CONF:1098-8907). SHALL contain exactly one [1..1] templateId (CONF:1098-16808). This templateId SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.4.87" Payer Performer (CONF:1098-16809). SHALL contain exactly one [1..1] assignedEntity (CONF:1098-8908). This assignedEntity SHALL contain at least one [1..*] id (CONF:1098-8909).</sch:assert>
			<sch:assert id="a-1098-8916" test="count(cda:participant[@typeCode='COV' and count(cda:templateId[@root='2.16.840.1.113883.10.20.22.4.89'])=1][count(cda:participantRole[exists(cda:id)][count(cda:code)=1])=1])=1">SHALL contain exactly one [1..1] participant (CONF:1098-8916) such that it SHALL contain exactly one [1..1] @typeCode="COV" Coverage target (CodeSystem: HL7ParticipationType urn:oid:2.16.840.1.113883.5.90 STATIC) (CONF:1098-8917). SHALL contain exactly one [1..1] templateId (CONF:1098-16812). This templateId SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.4.89" Covered Party Participant (CONF:1098-16814). SHALL contain exactly one [1..1] participantRole (CONF:1098-8921). This participantRole SHALL contain at least one [1..*] id (CONF:1098-8922).
This id is a unique identifier for the covered party member. Implementers SHOULD use the same GUID for each instance of a member identifier from the same health plan (CONF:1098-8984). This participantRole SHALL contain exactly one [1..1] code (CONF:1098-8923).</sch:assert>
			<sch:assert id="a-1098-8939" test="exists(cda:entryRelationship[@typeCode='REFR']/cda:act[cda:templateId[@root='2.16.840.1.113883.10.20.1.19']]) or exists(cda:entryRelationship[@typeCode='REFR']/cda:act[@classCode='ACT' and @moodCode='DEF'][exists(cda:id) and count(cda:text)=1])">SHALL contain at least one [1..*] entryRelationship (CONF:1098-8939) such that it SHALL contain exactly one [1..1] @typeCode="REFR" Refers to (CodeSystem: HL7ActRelationshipType urn:oid:2.16.840.1.113883.5.1002 STATIC) (CONF:1098-8940).
The target of a policy activity with act/entryRelationship/@typeCode="REFR" SHALL be an authorization activity (templateId 2.16.840.1.113883.10.20.1.19) OR an act, with act[@classCode="ACT"] and act[@moodCode="DEF"], representing a description of the coverage plan (CONF:1098-8942).
A description of the coverage plan SHALL contain one or more act/id, to represent the plan identifier, and an act/text with the name of the plan (CONF:1098-8943).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.61-2014-06-09-errors" context="cda:act[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.61' and @extension = '2014-06-09']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.61-2014-06-09-errors-abstract"/>
			<sch:assert id="a-1098-8900" test="count(cda:templateId[@root='2.16.840.1.113883.10.20.22.4.61'][@extension='2014-06-09'])=1">SHALL contain exactly one [1..1] templateId (CONF:1098-8900) such that it SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.4.61" (CONF:1098-10516). SHALL contain exactly one [1..1] @extension="2014-06-09" (CONF:1098-32595).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.61-2014-06-09-branch-1098-8914-errors" context="cda:act[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.61' and @extension = '2014-06-09']]/cda:performer[@typeCode='PRF'][cda:templateId[@root='2.16.840.1.113883.10.20.22.4.87']]/cda:assignedEntity/cda:code">
			<sch:assert id="a-1098-15992-c" test="exists(@code)">The code, if present, SHALL contain exactly one [1..1] @code, which SHOULD be selected from ValueSet HL7FinanciallyResponsiblePartyType urn:oid:2.16.840.1.113883.1.11.10416 DYNAMIC (CONF:1098-15992).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.61-2014-06-09-branch-1098-8916-errors" context="cda:act[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.61' and @extension = '2014-06-09']]/cda:participant[@typeCode='COV'][cda:templateId[@root='2.16.840.1.113883.10.20.22.4.89']]">
			<sch:let name="policyHolder" value="../cda:participant[@typeCode='HLD'][cda:templateId[@root='2.16.840.1.113883.10.20.22.4.90']]"/>
			<sch:assert id="a-1098-17139" test="empty($policyHolder) or empty(cda:participantRole/cda:id/@root[. = $policyHolder/cda:participantRole/cda:id/@root])">When the Subscriber is the patient, the participant element describing the subscriber SHALL NOT be present. This information will be recorded instead in the data elements used to record member information (CONF:1098-17139).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.61-2014-06-09-branch-1098-8932-errors" context="cda:act[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.61' and @extension = '2014-06-09']]/cda:participant[@typeCode='COV'][cda:templateId[@root='2.16.840.1.113883.10.20.22.4.89']]/cda:participantRole/cda:playingEntity">
			<sch:assert id="a-1098-8930" test="exists(cda:name)">If the covered party’s name is recorded differently in the health plan and in the registration/pharmacy benefit summary (due to marriage or for other reasons), use the name as it is recorded in the health plan.
The playingEntity, if present, SHALL contain at least one [1..*] name (CONF:1098-8930).</sch:assert>
			<sch:assert id="a-1098-31344" test="count(sdtc:birthTime)=1">If the covered party’s date of birth is recorded differently in the health plan and in the registration/pharmacy benefit summary, use the date of birth as it is recorded in the health plan.
The playingEntity, if present, SHALL contain exactly one [1..1] sdtc:birthTime (CONF:1098-31344). The prefix sdtc: SHALL be bound to the namespace “urn:hl7-org:sdtc”. The use of the namespace provides a necessary extension to CDA R2 for the use of the birthTime element (CONF:1098-31345).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.61-2014-06-09-addr-1098-8964-errors" context="cda:act[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.61' and @extension = '2014-06-09']]/cda:performer[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.88']]/cda:assignedEntity/cda:addr">  
			<sch:extends rule="r-urn-oid-2.16.840.1.113883.10.20.22.5.2-errors-abstract"/> 
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.61-2014-06-09-addr-1098-10484-errors" context="cda:act[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.61' and @extension = '2014-06-09']]/cda:participant[@typeCode='COV'][cda:templateId[@root='2.16.840.1.113883.10.20.22.4.89']]/cda:participantRole/cda:addr">  
			<sch:extends rule="r-urn-oid-2.16.840.1.113883.10.20.22.5.2-errors-abstract"/> 
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.61-2014-06-09-addr-1098-10483-errors" context="cda:act[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.61' and @extension = '2014-06-09']]/cda:participant[@typeCode='HLD'][cda:templateId[@root='2.16.840.1.113883.10.20.22.4.90']]/cda:participantRole/cda:addr">  
			<sch:extends rule="r-urn-oid-2.16.840.1.113883.10.20.22.5.2-errors-abstract"/> 
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.61-2014-06-09-addr-1098-8910-errors" context="cda:act[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.61' and @extension = '2014-06-09']]/cda:performer[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.87']]/cda:assignedEntity/cda:addr">  
			<sch:extends rule="r-urn-oid-2.16.840.1.113883.10.20.22.5.2-errors-abstract"/> 
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.60-2014-06-09-errors">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.60-2014-06-09-errors-abstract" abstract="true">
			<sch:assert id="a-1098-8872" test="@classCode='ACT'">SHALL contain exactly one [1..1] @classCode="ACT" Act (CodeSystem: HL7ActClass urn:oid:2.16.840.1.113883.5.6 STATIC) (CONF:1098-8872).</sch:assert>
			<sch:assert id="a-1098-8873" test="@moodCode='EVN'">SHALL contain exactly one [1..1] @moodCode="EVN" Event (CodeSystem: ActMood urn:oid:2.16.840.1.113883.5.1001 STATIC) (CONF:1098-8873).</sch:assert>
			<sch:assert id="a-1098-8874" test="exists(cda:id)">SHALL contain at least one [1..*] id (CONF:1098-8874).</sch:assert>
			<sch:assert id="a-1098-8876" test="count(cda:code)=1 and count(cda:code[empty(@nullFlavor) and @code='48768-6' and @codeSystem='2.16.840.1.113883.6.1'])=1">SHALL contain exactly one [1..1] code (CONF:1098-8876). This code SHALL contain exactly one [1..1] @code="48768-6" Payment sources (CONF:1098-19160). This code SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.6.1" (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:1098-32156).</sch:assert>
			<sch:assert id="a-1098-8875" test="count(cda:statusCode)=1 and count(cda:statusCode[empty(@nullFlavor) and @code='completed'])=1">SHALL contain exactly one [1..1] statusCode (CONF:1098-8875). This statusCode SHALL contain exactly one [1..1] @code="completed" Completed (CodeSystem: ActStatus urn:oid:2.16.840.1.113883.5.14 STATIC) (CONF:1098-19094).</sch:assert>
			<sch:assert id="a-1098-8878" test="exists(cda:entryRelationship[@typeCode='COMP'][count(cda:act[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.61' and @extension = '2014-06-09']][empty(cda:sequenceNumber) or (count(cda:sequenceNumber)=1 and count(cda:sequenceNumber[count(cda:value)=1])=1)])=1])">SHALL contain at least one [1..*] entryRelationship (CONF:1098-8878) such that it SHALL contain exactly one [1..1] @typeCode="COMP" has component (CodeSystem: HL7ActRelationshipType urn:oid:2.16.840.1.113883.5.1002 STATIC) (CONF:1098-8879).
MAY contain zero or one [0..1] sequenceNumber (CONF:1098-17174). The sequenceNumber, if present, SHALL contain exactly one [1..1] @value (CONF:1098-17175). SHALL contain exactly one [1..1] Policy Activity (V2) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.4.61:2014-06-09) (CONF:1098-15528).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.60-2014-06-09-errors" context="cda:act[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.60' and @extension = '2014-06-09']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.60-2014-06-09-errors-abstract"/>
			<sch:assert id="a-1098-8897" test="count(cda:templateId[@root='2.16.840.1.113883.10.20.22.4.60'][@extension='2014-06-09'])=1">SHALL contain exactly one [1..1] templateId (CONF:1098-8897) such that it SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.4.60" (CONF:1098-10492). SHALL contain exactly one [1..1] @extension="2014-06-09" (CONF:1098-32596).</sch:assert>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.20.22.2.18-2014-06-09-errors">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.18-2014-06-09-errors-abstract" abstract="true">
			<sch:assert id="a-1098-15395" test="count(cda:code)=1 and count(cda:code[empty(@nullFlavor) and @code='48768-6' and @codeSystem='2.16.840.1.113883.6.1'])=1">SHALL contain exactly one [1..1] code (CONF:1098-15395). This code SHALL contain exactly one [1..1] @code="48768-6" Payers (CONF:1098-15396). This code SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.6.1" (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:1098-32149).</sch:assert>
			<sch:assert id="a-1098-7926" test="count(cda:title)=1">SHALL contain exactly one [1..1] title (CONF:1098-7926).</sch:assert>
			<sch:assert id="a-1098-7927" test="count(cda:text)=1">SHALL contain exactly one [1..1] text (CONF:1098-7927).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.18-2014-06-09-errors" context="cda:section[cda:templateId[@root='2.16.840.1.113883.10.20.22.2.18' and @extension = '2014-06-09']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.18-2014-06-09-errors-abstract"/>
			<sch:assert id="a-1098-7924" test="count(cda:templateId[@root='2.16.840.1.113883.10.20.22.2.18'][@extension='2014-06-09'])=1">SHALL contain exactly one [1..1] templateId (CONF:1098-7924) such that it SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.2.18" (CONF:1098-10434). SHALL contain exactly one [1..1] @extension="2014-06-09" (CONF:1098-32597).</sch:assert>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-oid-2.16.840.1.113883.10.20.22.4.119-errors">
		<sch:rule id="r-urn-oid-2.16.840.1.113883.10.20.22.4.119-errors-abstract" abstract="true">
			<sch:assert id="a-1098-31471" test="count(cda:time)=1">SHALL contain exactly one [1..1] time (CONF:1098-31471).</sch:assert>
			<sch:assert id="a-1098-31472" test="count(cda:assignedAuthor)=1">SHALL contain exactly one [1..1] assignedAuthor (CONF:1098-31472).</sch:assert>
			<sch:assert id="a-1098-31473" test="count(cda:assignedAuthor[exists(cda:id)])=1">This assignedAuthor SHALL contain at least one [1..*] id (CONF:1098-31473).
Note: This id may be set equal to (a pointer to) an id on a participant elsewhere in the document (header or entries) or a new author participant can be described here. If the id is pointing to a participant already described elsewhere in the document, assignedAuthor/id is sufficient to identify this participant and none of the remaining details of assignedAuthor are required to be set. Application Software must be responsible for resolving the identifier back to its original object and then rendering the information in the correct place in the containing section's narrative text. This id must be a pointer to another author participant.</sch:assert>
			<sch:assert id="a-1098-31477" test="empty(cda:assignedAuthor/cda:representedOrganization) or (count(cda:assignedAuthor/cda:representedOrganization)=1 and count(cda:assignedAuthor/cda:representedOrganization[@classCode='ORG'])=1)">The representedOrganization, if present, SHALL contain exactly one [1..1] @classCode="ORG" (CONF:1098-31477).</sch:assert>
			<sch:assert id="a-1098-32017" test="count(cda:templateId[@root='2.16.840.1.113883.10.20.22.4.119'])=1">SHALL contain exactly one [1..1] templateId (CONF:1098-32017) such that it SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.4.119" (CONF:1098-32018).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-oid-2.16.840.1.113883.10.20.22.4.119-errors" context="cda:author[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.119']]">
			<sch:extends rule="r-urn-oid-2.16.840.1.113883.10.20.22.4.119-errors-abstract"/>
		</sch:rule>
		<sch:rule id="r-urn-oid-2.16.840.1.113883.10.20.22.4.119-branch-1098-31473-errors" context="cda:author[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.119']]/cda:assignedAuthor/cda:id">
			<sch:let name="containsRequiredAuthorComponents" value="../empty(cda:code) or (../count(cda:code)=1 and ../count(cda:code[@code])=1) and ../exists(cda:addr) and ../exists(cda:telecom) and (../empty(cda:assignedPerson) or (../count(cda:assignedPerson)=1 and ../count(cda:assignedPerson[exists(cda:name)])=1)) and ../count(cda:assignedPerson | cda:assignedAuthoringDevice)=1"/>
			<sch:let name="matchingIds" value="//cda:id[@root=current()/@root and @extension=current()/@extension]"/>
			<sch:assert id="a-1098-32628" test="exists($matchingIds[../empty(cda:code) or (../count(cda:code)=1 and ../count(cda:code[@code])=1) and ../exists(cda:addr) and ../exists(cda:telecom) and (../empty(cda:assignedPerson) or (../count(cda:assignedPerson)=1 and ../count(cda:assignedPerson[exists(cda:name)])=1)) and ../count(cda:assignedPerson | cda:assignedAuthoringDevice)=1]) or $containsRequiredAuthorComponents">If the ID isn't referencing an author described elsewhere in the document, then the author components required in US Realm Header are required here as well (CONF:1098-32628).</sch:assert>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.46-2014-06-09-errors">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.46-2014-06-09-errors-abstract" abstract="true">
			<sch:assert id="a-1098-8586" test="@classCode='OBS'">SHALL contain exactly one [1..1] @classCode="OBS" Observation (CodeSystem: HL7ActClass urn:oid:2.16.840.1.113883.5.6 STATIC) (CONF:1098-8586).</sch:assert>
			<sch:assert id="a-1098-8587" test="@moodCode='EVN'">SHALL contain exactly one [1..1] @moodCode="EVN" Event (CodeSystem: ActMood urn:oid:2.16.840.1.113883.5.1001 STATIC) (CONF:1098-8587).</sch:assert>
			<sch:assert id="a-1098-32427" test="count(cda:code)=1">SHALL contain exactly one [1..1] code, which SHOULD be selected from ValueSet Problem Type urn:oid:2.16.840.1.113883.3.88.12.3221.7.2 STATIC 2014-09-02 (CONF:1098-32427).</sch:assert>
			<sch:assert id="a-1098-8590" test="count(cda:statusCode)=1 and count(cda:statusCode[empty(@nullFlavor) and @code='completed'])=1">SHALL contain exactly one [1..1] statusCode (CONF:1098-8590). This statusCode SHALL contain exactly one [1..1] @code="completed" Completed (CodeSystem: ActStatus urn:oid:2.16.840.1.113883.5.14 STATIC) (CONF:1098-19098).</sch:assert>
			<sch:assert id="a-1098-8591" test="count(cda:value[@xsi:type='CD'])=1">SHALL contain exactly one [1..1] value with @xsi:type="CD", where the code SHALL be selected from ValueSet Problem urn:oid:2.16.840.1.113883.3.88.12.3221.7.4 DYNAMIC (CONF:1098-8591).</sch:assert>
			<sch:assert id="a-1098-8592" test="exists(cda:id)">SHALL contain at least one [1..*] id (CONF:1098-8592).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.46-2014-06-09-errors" context="cda:observation[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.46' and @extension = '2014-06-09']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.46-2014-06-09-errors-abstract"/>
			<sch:assert id="a-1098-8599" test="count(cda:templateId[@root='2.16.840.1.113883.10.20.22.4.46' and @extension='2014-06-09'])=1">SHALL contain exactly one [1..1] templateId (CONF:1098-8599) such that it SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.4.46" (CONF:1098-10496). SHALL contain exactly one [1..1] @extension="2014-06-09" (CONF:1098-32605).</sch:assert>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.45-2014-06-09-errors">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.45-2014-06-09-errors-abstract" abstract="true">
			<sch:assert id="a-1098-8604" test="count(cda:templateId[@root='2.16.840.1.113883.10.20.22.4.45' and @extension='2014-06-09'])=1">SHALL contain exactly one [1..1] templateId (CONF:1098-8604) such that it SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.4.45" (CONF:1098-10497). SHALL contain exactly one [1..1] @extension="2014-06-09" (CONF:1098-32606).</sch:assert>
			<sch:assert id="a-1098-8609" test="count(cda:subject)=1">SHALL contain exactly one [1..1] subject (CONF:1098-8609).</sch:assert>
			<sch:assert id="a-1098-15244" test="count(cda:subject[count(cda:relatedSubject)=1])=1">This subject SHALL contain exactly one [1..1] relatedSubject (CONF:1098-15244).</sch:assert>
			<sch:assert id="a-1098-8600" test="@classCode='CLUSTER'">SHALL contain exactly one [1..1] @classCode="CLUSTER" Cluster (CodeSystem: HL7ActClass urn:oid:2.16.840.1.113883.5.6 STATIC) (CONF:1098-8600).</sch:assert>
			<sch:assert id="a-1098-8601" test="@moodCode='EVN'">SHALL contain exactly one [1..1] @moodCode="EVN" Event (CodeSystem: ActMood urn:oid:2.16.840.1.113883.5.1001 STATIC) (CONF:1098-8601).</sch:assert>
			<sch:assert id="a-1098-8602" test="count(cda:statusCode)=1 and count(cda:statusCode[empty(@nullFlavor) and @code='completed'])=1">SHALL contain exactly one [1..1] statusCode (CONF:1098-8602). This statusCode SHALL contain exactly one [1..1] @code="completed" Completed (CodeSystem: ActStatus urn:oid:2.16.840.1.113883.5.14 STATIC) (CONF:1098-19099).</sch:assert>
			<sch:assert id="a-1098-32485" test="exists(cda:id)">SHALL contain at least one [1..*] id (CONF:1098-32485).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.45-2014-06-09-errors" context="cda:organizer[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.45' and @extension = '2014-06-09']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.45-2014-06-09-errors-abstract"/>
			<sch:assert id="a-1098-32428" test="exists(cda:component)">SHALL contain at least one [1..*] component (CONF:1098-32428).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.45-2014-06-09-branch-1098-32428-errors" context="cda:organizer[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.45' and @extension = '2014-06-09']]/cda:component">
			<sch:assert id="a-1098-32429" test="count(cda:observation[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.46' and @extension = '2014-06-09']])=1">Such components SHALL contain exactly one [1..1] Family History Observation (V2) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.4.46:2014-06-09) (CONF:1098-32429).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.45-2014-06-09-branch-1098-15244-errors" context="cda:organizer[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.45' and @extension = '2014-06-09']]/cda:subject/cda:relatedSubject">
			<sch:assert id="a-1098-15246" test="count(cda:code)=1">This relatedSubject SHALL contain exactly one [1..1] code (CONF:1098-15246).</sch:assert>
			<sch:assert id="a-1098-15974" test="empty(cda:subject) or (count(cda:subject)=1 and count(cda:subject[count(cda:administrativeGenderCode)=1])=1)">The subject, if present, SHALL contain exactly one [1..1] administrativeGenderCode (CONF:1098-15974).</sch:assert>
			<sch:assert id="a-1098-15245" test="@classCode='PRS'">This relatedSubject SHALL contain exactly one [1..1] @classCode="PRS" Person (CodeSystem: EntityClass urn:oid:2.16.840.1.113883.5.41 STATIC) (CONF:1098-15245).</sch:assert>
			<sch:assert id="a-1098-15247" test="exists(cda:code[@nullFlavor or @code])">This code SHALL contain exactly one [1..1] @code, which SHOULD be selected from ValueSet Family Member Value Set urn:oid:2.16.840.1.113883.1.11.19579 DYNAMIC (CONF:1098-15247).</sch:assert>
			<sch:assert id="a-1098-15975" test="empty(cda:subject) or exists(cda:subject/cda:administrativeGenderCode/@code)">This administrativeGenderCode SHALL contain exactly one [1..1] @code, which SHALL be selected from ValueSet Administrative Gender (HL7 V3) urn:oid:2.16.840.1.113883.1.11.1 DYNAMIC (CONF:1098-15975).</sch:assert>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.20.22.2.15-2014-06-09-errors">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.15-2014-06-09-errors-abstract" abstract="true">
			<sch:assert id="a-1098-15469" test="count(cda:code)=1 and count(cda:code[empty(@nullFlavor) and @code='10157-6' and @codeSystem='2.16.840.1.113883.6.1'])=1">SHALL contain exactly one [1..1] code (CONF:1098-15469). This code SHALL contain exactly one [1..1] @code="10157-6" Family History (CONF:1098-15470). This code SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.6.1" (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:1098-32481).</sch:assert>
			<sch:assert id="a-1098-7934" test="count(cda:title)=1">SHALL contain exactly one [1..1] title (CONF:1098-7934).</sch:assert>
			<sch:assert id="a-1098-7935" test="count(cda:text)=1">SHALL contain exactly one [1..1] text (CONF:1098-7935).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.15-2014-06-09-errors" context="cda:section[cda:templateId[@root='2.16.840.1.113883.10.20.22.2.15' and @extension = '2014-06-09']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.15-2014-06-09-errors-abstract"/>
			<sch:assert id="a-1098-7932" test="count(cda:templateId[@root='2.16.840.1.113883.10.20.22.2.15'][@extension='2014-06-09'])=1">SHALL contain exactly one [1..1] templateId (CONF:1098-7932) such that it SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.2.15" (CONF:1098-10388). SHALL contain exactly one [1..1] @extension="2014-06-09" (CONF:1098-32607).</sch:assert>
		</sch:rule>
	</sch:pattern>
		<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.13.17-2014-08-08-errors">
			<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.17-2014-08-08-errors-abstract" abstract="true">
				<sch:extends rule="r-urn-oid-2.16.840.1.113883.10.20.22.5.2-errors-abstract"/>
				<sch:let name="useablePeriod" value="cda:useablePeriod[@xsi:type='IVL_TS']"/>
				<sch:assert id="a-1126-202-c" test="count(cda:city)=1 and count(cda:country)=1">SHALL contain exactly one [1..1] city (ValueSet: City urn:oid:2.16.840.1.114222.4.11.973 DYNAMIC) (CONF:1126-202).
	Note: City is required if the country is US. If country is not specified, it's assumed to be US. If country is something other than US, the city MAY be present but MAY be bound to different vocabularies. The value for city element SHALL be the "display name", selected from "city" Value Set.</sch:assert>
				<sch:assert id="a-1126-206" test="exists($useablePeriod)">SHALL contain at least one [1..*] useablePeriod (CONF:1126-206).
	Note: usablePeriod indicates patient’s address history. For example, if patient had multiple prior addresses, then occupancy start (low) and end (high) date need to be provided for each address.</sch:assert>
				<sch:assert id="a-1126-207" test="count($useablePeriod[count(cda:low)=1]) = count($useablePeriod)">Such useablePeriods SHALL contain exactly one [1..1] low (CONF:1126-207).
	Note: to indicate the time when the patient began living at the address.</sch:assert>
				<sch:assert id="a-1126-208" test="count($useablePeriod[count(cda:high) &lt; 2]) = count($useablePeriod)">Such useablePeriods SHALL contain zero or one [0..1] high (CONF:1126-208).
	Note: to indicate the time when the patient stopped living at the address.</sch:assert>
				<sch:assert id="a-1126-33226-c" test="count(cda:country)=1">SHALL contain exactly one [1..1] country, which SHALL be selected from ValueSet Country urn:oid:2.16.840.1.113883.3.88.12.80.63 (CONF:1126-33226).</sch:assert>
				<sch:assert id="a-1126-33227-c" test="count(cda:postalCode)=1 and (exists(cda:postalCode/@nullFlavor) or (matches(cda:postalCode/text(), '^\d{5}$') or matches(cda:postalCode/text(), '^\d{5}-\d{4}$')))">SHALL contain exactly one [1..1] postalCode, which SHOULD be selected from ValueSet PostalCode urn:oid:2.16.840.1.113883.3.88.12.80.2 (CONF:1126-33227).
	Note: The expected format for the Postal Code is either NNNNN or NNNNN-NNNN</sch:assert>
				<sch:assert id="a-1126-33228-c" test="count(cda:state)=1">SHALL contain exactly one [1..1] state, which SHOULD be selected from ValueSet StateValueSet urn:oid:2.16.840.1.113883.3.88.12.80.1 (CONF:1126-33228).</sch:assert>
			</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.13.18-2014-08-08-errors">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.18-2014-08-08-errors-abstract" abstract="true">
			<sch:extends rule="r-urn-oid-2.16.840.1.113883.10.20.22.5.1-errors-abstract"/>
			<sch:assert id="a-1126-243" test="exists(cda:given) and cda:given[1][empty(@nullFlavor)]">SHALL contain at least one [1..*] given (CONF:1126-243) such that it
Note: This (the first) occurrence of given is used for the first name. SHALL NOT contain [0..0] @nullFlavor (CONF:1126-33033).</sch:assert>
			<sch:assert id="a-1126-244" test="count(cda:family)=1">SHALL contain exactly one [1..1] family (CONF:1126-244).</sch:assert>
			<sch:assert id="a-1126-33032" test="count(cda:family[empty(@nullFlavor)])=1">This family SHALL NOT contain [0..0] @nullFlavor (CONF:1126-33032).</sch:assert>
			<sch:assert id="a-1126-33240" test="count(cda:given)=1 or (count(cda:given) gt 1 and cda:given[2][count(@nullFlavor) lt 2])">SHALL contain at least one [1..*] given (CONF:1126-33240) such that it
Note: This (the second) occurrence of given is used for the middle name or middle initial. MAY contain zero or one [0..1] @nullFlavor (CONF:1126-33241).</sch:assert>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.13.21-2014-08-08-errors">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.21-2014-08-08-errors-abstract" abstract="true">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.5.1-2014-06-09-errors-abstract"/>
			<sch:assert id="a-1126-33250" test="count(cda:templateId[@root='2.16.840.1.113883.10.13.21'][@extension='2014-08-08'])=1">SHALL contain exactly one [1..1] templateId (CONF:1126-33250) such that it SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.13.21" (CONF:1126-33251). SHALL contain exactly one [1..1] @extension="2014-08-08" (CONF:1126-33951).</sch:assert>
			<sch:assert id="a-1126-33252" test="exists(cda:entry)">SHALL contain at least one [1..*] entry (CONF:1126-33252).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.21-2014-08-08-errors" context="cda:section[cda:templateId[@root='2.16.840.1.113883.10.13.21' and @extension = '2014-08-08']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.21-2014-08-08-errors-abstract"/>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.21-2014-08-08-branch-1126-33252-errors" context="cda:section[cda:templateId[@root='2.16.840.1.113883.10.13.21' and @extension = '2014-08-08']]/cda:entry">
			<sch:assert id="a-1126-33253" test="count(cda:act[cda:templateId[@root='2.16.840.1.113883.10.13.22' and @extension = '2014-08-08']])=1">Such entries SHALL contain exactly one [1..1] Problem Concern Act (V2) - Cancer IG Specific Constraints (identifier: urn:hl7ii:2.16.840.1.113883.10.13.22:2014-08-08) (CONF:1126-33253).</sch:assert>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.13.21-2014-08-08-CLOSEDTEMPLATE">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.21-2014-08-08-errors-CL-abstract" abstract="true">
			<sch:assert id="a-1126-4278-CL" test="empty(./cda:templateId[not(@root = '2.16.840.1.113883.10.13.21' and @extension = '2014-08-08') and not(@root = '2.16.840.1.113883.10.20.22.2.5.1' and @extension = '2014-06-09') and not(@root = '2.16.840.1.113883.10.20.22.2.5' and @extension = '2014-06-09')]) and empty(cda:entry/cda:act/cda:templateId[not(@root = '2.16.840.1.113883.10.13.22' and @extension = '2014-08-08') and not(@root = '2.16.840.1.113883.10.20.22.4.3' and @extension = '2014-06-09')])">'urn:hl7ii:2.16.840.1.113883.10.13.21:2014-08-08' is a closed template, only defined templates are allowed.</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.21-2014-08-08-errors-CL" context="cda:section[cda:templateId[@root='2.16.840.1.113883.10.13.21' and @extension = '2014-08-08']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.21-2014-08-08-errors-CL-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.13.9-2014-08-08-errors">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.9-2014-08-08-errors-abstract" abstract="true">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.10-2014-06-09-errors-abstract"/>
			<sch:assert id="a-1126-32678" test="exists(cda:entry[count(cda:encounter[cda:templateId[@root='2.16.840.1.113883.10.13.20' and @extension = '2014-08-08']])=1])">SHALL contain at least one [1..*] entry (CONF:1126-32678) such that it SHALL contain exactly one [1..1] Planned Encounter (V2) - Cancer IG Specific Constraints (identifier: urn:hl7ii:2.16.840.1.113883.10.13.20:2014-08-08) (CONF:1126-32679).</sch:assert>
			<sch:assert id="a-1126-33020" test="exists(cda:entry[count(cda:substanceAdministration[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.42' and @extension = '2014-06-09']])=1])">SHALL contain at least one [1..*] entry (CONF:1126-33020) such that it SHALL contain exactly one [1..1] Planned Medication Activity (V2) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.4.42:2014-06-09) (CONF:1126-33021).</sch:assert>
			<sch:assert id="a-1126-33022" test="exists(cda:entry[count(cda:procedure[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.41' and @extension = '2014-06-09']])=1])">SHALL contain at least one [1..*] entry (CONF:1126-33022) such that it SHALL contain exactly one [1..1] Planned Procedure (V2) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.4.41:2014-06-09) (CONF:1126-33023).</sch:assert>
			<sch:assert id="a-1126-33056" test="count(cda:templateId[@root='2.16.840.1.113883.10.13.9'][@extension='2014-08-08'])=1">SHALL contain exactly one [1..1] templateId (CONF:1126-33056) such that it SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.13.9" (CONF:1126-33057). SHALL contain exactly one [1..1] @extension="2014-08-08" (CONF:1126-33950).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.9-2014-08-08-errors" context="cda:section[cda:templateId[@root='2.16.840.1.113883.10.13.9' and @extension = '2014-08-08']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.9-2014-08-08-errors-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.13.13-2014-08-08-errors">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.13-2014-08-08-errors-abstract" abstract="true">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.1.1-2014-06-09-errors-abstract"/>
			<sch:assert id="a-1126-32666" test="exists(cda:entry)">SHALL contain at least one [1..*] entry (CONF:1126-32666).</sch:assert>
			<sch:assert id="a-1126-33064" test="count(cda:templateId[@root='2.16.840.1.113883.10.13.13'][@extension='2014-08-08'])=1">SHALL contain exactly one [1..1] templateId (CONF:1126-33064) such that it SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.13.13" (CONF:1126-33065). SHALL contain exactly one [1..1] @extension="2014-08-08" (CONF:1126-33949).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.13-2014-08-08-errors" context="cda:section[cda:templateId[@root='2.16.840.1.113883.10.13.13' and @extension = '2014-08-08']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.13-2014-08-08-errors-abstract"/>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.13-2014-08-08-branch-1126-32666-errors" context="cda:section[cda:templateId[@root='2.16.840.1.113883.10.13.13' and @extension = '2014-08-08']]/cda:entry">
			<sch:assert id="a-1126-32667" test="count(cda:substanceAdministration[cda:templateId[@root='2.16.840.1.113883.10.13.14' and @extension = '2014-08-08']])=1">Such entries SHALL contain exactly one [1..1] Medication Activity (V2) - Cancer IG Specific Constraints (identifier: urn:hl7ii:2.16.840.1.113883.10.13.14:2014-08-08) (CONF:1126-32667).</sch:assert>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.13.12-2014-08-08-errors">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.12-2014-08-08-errors-abstract" abstract="true">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.38-2014-06-09-errors-abstract"/>
			<sch:assert id="a-1126-32662" test="exists(cda:entry)">SHALL contain at least one [1..*] entry (CONF:1126-32662).</sch:assert>
			<sch:assert id="a-1126-33062" test="count(cda:templateId[@root='2.16.840.1.113883.10.13.12'][@extension='2014-08-08'])=1">SHALL contain exactly one [1..1] templateId (CONF:1126-33062) such that it SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.13.12" (CONF:1126-33063). SHALL contain exactly one [1..1] @extension="2014-08-08" (CONF:1126-33948).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.12-2014-08-08-errors" context="cda:section[cda:templateId[@root='2.16.840.1.113883.10.13.12' and @extension = '2014-08-08']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.12-2014-08-08-errors-abstract"/>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.12-2014-08-08-branch-1126-32662-errors" context="cda:section[cda:templateId[@root='2.16.840.1.113883.10.13.12' and @extension = '2014-08-08']]/cda:entry">
			<sch:assert id="a-1126-32663" test="count(cda:substanceAdministration[cda:templateId[@root='2.16.840.1.113883.10.13.14' and @extension = '2014-08-08']])=1">Such entries SHALL contain exactly one [1..1] Medication Activity (V2) - Cancer IG Specific Constraints (identifier: urn:hl7ii:2.16.840.1.113883.10.13.14:2014-08-08) (CONF:1126-32663).</sch:assert>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.13.10-2014-08-08-errors">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.10-2014-08-08-errors-abstract" abstract="true">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.7.1-2014-06-09-errors-abstract"/>
			<sch:assert id="a-1126-32676" test="exists(cda:entry)">SHALL contain at least one [1..*] entry (CONF:1126-32676).</sch:assert>
			<sch:assert id="a-1126-33058" test="count(cda:templateId[@root='2.16.840.1.113883.10.13.10' and @extension='2014-08-08'])=1">SHALL contain exactly one [1..1] templateId (CONF:1126-33058) such that it SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.13.10" (CONF:1126-33059). SHALL contain exactly one [1..1] @extension="2014-08-08" (CONF:1126-33952).</sch:assert>
			<sch:assert id="a-1126-33579" test="count(cda:component)=1 and count(cda:component[count(cda:section[cda:templateId[@root='2.16.840.1.113883.10.13.24' and @extension = '2014-08-08']])=1])=1">SHALL contain exactly one [1..1] component (CONF:1126-33579). This component SHALL contain exactly one [1..1] Radiation Oncology Section (identifier: urn:hl7ii:2.16.840.1.113883.10.13.24:2014-08-08) (CONF:1126-33580).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.10-2014-08-08-errors" context="cda:section[cda:templateId[@root='2.16.840.1.113883.10.13.10' and @extension = '2014-08-08']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.10-2014-08-08-errors-abstract"/>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.10-2014-08-08-branch-1126-32676-errors" context="cda:section[cda:templateId[@root='2.16.840.1.113883.10.13.10' and @extension = '2014-08-08']]/cda:entry">
			<sch:assert id="a-1126-32677" test="count(cda:procedure[cda:templateId[@root='2.16.840.1.113883.10.13.15' and @extension = '2014-08-08']])=1">Such entries SHALL contain exactly one [1..1] Procedure Activity Procedure (V2) - Cancer IG Specific Constraints (identifier: urn:hl7ii:2.16.840.1.113883.10.13.15:2014-08-08) (CONF:1126-32677).</sch:assert>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.13.24-2014-08-08-errors">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.24-2014-08-08-errors-abstract" abstract="true">
			<sch:assert id="a-1126-32641" test="count(cda:templateId)=1 and count(cda:templateId[@root='2.16.840.1.113883.10.13.24' and @extension='2014-08-08'])=1">SHALL contain exactly one [1..1] templateId (CONF:1126-32641). This templateId SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.13.24" (CONF:1126-32642). This templateId SHALL contain exactly one [1..1] @extension="2014-08-08" (CONF:1126-33953).</sch:assert>
			<sch:assert id="a-1126-32643" test="count(cda:code)=1 and count(cda:code[empty(@nullFlavor) and @code='34832-6' and @codeSystem='2.16.840.1.113883.6.1'])=1">SHALL contain exactly one [1..1] code (CONF:1126-32643). This code SHALL contain exactly one [1..1] @code="34832-6" Radiation Oncology Note (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:1126-32644).</sch:assert>
			<sch:assert id="a-1126-32645" test="count(cda:title)=1">SHALL contain exactly one [1..1] title (CONF:1126-32645).</sch:assert>
			<sch:assert id="a-1126-32646" test="count(cda:text)=1">SHALL contain exactly one [1..1] text (CONF:1126-32646).</sch:assert>
			<sch:assert id="a-1126-33395" test="count(cda:entry[count(cda:organizer[cda:templateId[@root='2.16.840.1.113883.10.13.29' and @extension = '2014-08-08']])=1])=1">SHALL contain exactly one [1..1] entry (CONF:1126-33395) such that it SHALL contain exactly one [1..1] Radiation Regional Treatment Modality Organizer (identifier: urn:hl7ii:2.16.840.1.113883.10.13.29:2014-08-08) (CONF:1126-33653).</sch:assert>
			<sch:assert id="a-1126-33652" test="count(cda:entry[count(cda:organizer[cda:templateId[@root='2.16.840.1.113883.10.13.30' and @extension = '2014-08-08']])=1])=1">SHALL contain exactly one [1..1] entry (CONF:1126-33652) such that it SHALL contain exactly one [1..1] Radiation Boost Modality Organizer (identifier: urn:hl7ii:2.16.840.1.113883.10.13.30:2014-08-08) (CONF:1126-33654).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.24-2014-08-08-errors" context="cda:section[cda:templateId[@root='2.16.840.1.113883.10.13.24' and @extension = '2014-08-08']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.24-2014-08-08-errors-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.13.14-2014-08-08-errors">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.14-2014-08-08-errors-abstract" abstract="true">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.16-2014-06-09-errors-abstract"/>
			<sch:assert id="a-1126-32664" test="exists(cda:entryRelationship[@typeCode='RSON'][count(cda:observation[cda:templateId[@root='2.16.840.1.113883.10.13.19' and @extension = '2014-08-08']])=1])">SHALL contain at least one [1..*] entryRelationship (CONF:1126-32664) such that it
Note: The reason for administering medication SHALL be provided for all cancer-related medications. The reason for administering medication MAY be provided for all NON-cancer-related medications. If the reason is not known, then appropriate nullFlavor SHALL be used. SHALL contain exactly one [1..1] @typeCode="RSON" (CodeSystem: HL7ActRelationshipType urn:oid:2.16.840.1.113883.5.1002) (CONF:1126-32665). SHALL contain exactly one [1..1] Indication (V2) - Cancer IG Specific Constraints (identifier: urn:hl7ii:2.16.840.1.113883.10.13.19:2014-08-08) (CONF:1126-33211).</sch:assert>
			<sch:assert id="a-1126-33066" test="count(cda:templateId[@root='2.16.840.1.113883.10.13.14'][@extension='2014-08-08'])=1">SHALL contain exactly one [1..1] templateId (CONF:1126-33066) such that it SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.13.14" (CONF:1126-33067). SHALL contain exactly one [1..1] @extension="2014-08-08" (CONF:1126-33959).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.14-2014-08-08-errors" context="cda:substanceAdministration[cda:templateId[@root='2.16.840.1.113883.10.13.14' and @extension = '2014-08-08']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.14-2014-08-08-errors-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.13.15-2014-08-08-errors">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.15-2014-08-08-errors-abstract" abstract="true">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.14-2014-06-09-errors-abstract"/>
			<sch:assert id="a-1126-32672" test="exists(cda:participant[@typeCode='LOC'][count(cda:participantRole[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.32']])=1])">SHALL contain at least one [1..*] participant (CONF:1126-32672) such that it SHALL contain exactly one [1..1] @typeCode="LOC" Location (CodeSystem: HL7ParticipationType urn:oid:2.16.840.1.113883.5.90) (CONF:1126-32673). SHALL contain exactly one [1..1] Service Delivery Location (identifier: urn:oid:2.16.840.1.113883.10.20.22.4.32) (CONF:1126-33024).</sch:assert>
			<sch:assert id="a-1126-33068" test="count(cda:templateId[@root='2.16.840.1.113883.10.13.15'][@extension='2014-08-08'])=1">SHALL contain exactly one [1..1] templateId (CONF:1126-33068) such that it SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.13.15" (CONF:1126-33069). SHALL contain exactly one [1..1] @extension="2014-08-08" (CONF:1126-33965).</sch:assert>
			<sch:assert id="a-1126-33212" test="exists(cda:entryRelationship[@typeCode='RSON'][count(cda:observation[cda:templateId[@root='2.16.840.1.113883.10.13.19' and @extension = '2014-08-08']])=1])">SHALL contain at least one [1..*] entryRelationship (CONF:1126-33212) such that it SHALL contain exactly one [1..1] @typeCode="RSON" Has Reason (CodeSystem: HL7ActRelationshipType urn:oid:2.16.840.1.113883.5.1002 STATIC) (CONF:1126-33213). SHALL contain exactly one [1..1] Indication (V2) - Cancer IG Specific Constraints (identifier: urn:hl7ii:2.16.840.1.113883.10.13.19:2014-08-08) (CONF:1126-33214).</sch:assert>
			<sch:assert id="a-1126-33248" test="count(cda:effectiveTime)=1">SHALL contain exactly one [1..1] effectiveTime (CONF:1126-33248).</sch:assert>
			<sch:assert id="a-1126-33249" test="count(cda:effectiveTime[count(cda:low)=1])=1">This effectiveTime SHALL contain exactly one [1..1] low (CONF:1126-33249).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.15-2014-08-08-errors" context="cda:procedure[cda:templateId[@root='2.16.840.1.113883.10.13.15' and @extension = '2014-08-08']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.15-2014-08-08-errors-abstract"/>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.15-2014-08-08-branch-1126-33928-errors" context="cda:procedure[cda:templateId[@root='2.16.840.1.113883.10.13.15' and @extension = '2014-08-08']]/cda:performer/cda:assignedEntity">
			<sch:assert id="a-1126-33929" test="exists(cda:id[@root='2.16.840.1.113883.4.6' and (exists(@nullFlavor) or matches(@extension, '^\d{10}$'))])">This assignedEntity SHALL contain at least one [1..*] id (CONF:1126-33929) such that it SHOULD contain zero or one [0..1] @root="2.16.840.1.113883.4.6" National Provider Identifier (CONF:1126-33932).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.15-2014-08-08-addr-1126-33934-errors" context="cda:procedure[cda:templateId[@root='2.16.840.1.113883.10.13.15' and @extension = '2014-08-08']]/cda:performer/cda:assignedEntity/cda:addr">  
			<sch:extends rule="r-urn-oid-2.16.840.1.113883.10.20.22.5.2-errors-abstract"/> 
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.15-2014-08-08-personName-1126-33936-errors" context="cda:procedure[cda:templateId[@root='2.16.840.1.113883.10.13.15' and @extension = '2014-08-08']]/cda:performer/cda:assignedEntity/cda:assignedPerson/cda:name">  
			<sch:extends rule="r-urn-oid-2.16.840.1.113883.10.20.22.5.1.1-errors-abstract"/> 
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.13.19-2014-08-08-errors">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.19-2014-08-08-errors-abstract" abstract="true">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.19-2014-06-09-errors-abstract"/>
			<sch:assert id="a-1126-33204" test="@classCode='OBS'">SHALL contain exactly one [1..1] @classCode="OBS" (CodeSystem: HL7ActClass urn:oid:2.16.840.1.113883.5.6 STATIC) (CONF:1126-33204).</sch:assert>
			<sch:assert id="a-1126-33205" test="@moodCode='EVN'">SHALL contain exactly one [1..1] @moodCode="EVN" (CodeSystem: ActMood urn:oid:2.16.840.1.113883.5.1001 STATIC) (CONF:1126-33205).</sch:assert>
			<sch:assert id="a-1126-33215" test="exists(cda:id)">SHALL contain at least one [1..*] id (CONF:1126-33215).
Note: The "id" is intended to reference a problem recorded in the Problem Observation, Medication Activity, Procedure Activity, Radiation Boost Modality Procedure, and Radiation Regional Treatment Modality Procedure, by matching the Observation's id element. When a related problem has not been recorded, then use a null flavor such as "NA"  on this id element to indicate there is not a related problem documented (@nullFlavor="NA").</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.19-2014-08-08-errors" context="cda:observation[cda:templateId[@root='2.16.840.1.113883.10.13.19' and @extension = '2014-08-08']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.19-2014-08-08-errors-abstract"/>
			<sch:assert id="a-1126-33202" test="count(cda:templateId[@root='2.16.840.1.113883.10.13.19' and @extension='2014-08-08'])=1">SHALL contain exactly one [1..1] templateId (CONF:1126-33202) such that it SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.13.19" (CONF:1126-33206). SHALL contain exactly one [1..1] @extension="2014-08-08" (CONF:1126-33958).</sch:assert>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.13.20-2014-08-08-errors">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.20-2014-08-08-errors-abstract" abstract="true">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.40-2014-06-09-errors-abstract"/>
			<sch:assert id="a-1126-33216" test="count(cda:templateId[@root='2.16.840.1.113883.10.13.20'][@extension='2014-08-08'])=1">SHALL contain exactly one [1..1] templateId (CONF:1126-33216) such that it SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.13.20" (CONF:1126-33217). SHALL contain exactly one [1..1] @extension="2014-08-08" (CONF:1126-33962).</sch:assert>
			<sch:assert id="a-1126-33218" test="@classCode='ENC'">SHALL contain exactly one [1..1] @classCode="ENC" Encounter (CONF:1126-33218).</sch:assert>
			<sch:assert id="a-1126-33219" test="@moodCode">SHALL contain exactly one [1..1] @moodCode (CONF:1126-33219).</sch:assert>
			<sch:assert id="a-1126-33220" test="count(cda:performer[@typeCode='PRF'][count(cda:assignedEntity)=1])=1">SHALL contain exactly one [1..1] performer (CONF:1126-33220) such that it SHALL contain exactly one [1..1] assignedEntity (CONF:1126-33937). SHALL contain exactly one [1..1] @typeCode="PRF" Performer (CodeSystem: HL7ParticipationType urn:oid:2.16.840.1.113883.5.90) (CONF:1126-33980).</sch:assert>
			<sch:assert id="a-1126-33222" test="exists(cda:participant[@typeCode='LOC'][count(cda:participantRole[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.32']])=1])">SHALL contain at least one [1..*] participant (CONF:1126-33222) such that it SHALL contain exactly one [1..1] @typeCode="LOC" Location (CodeSystem: HL7ParticipationType urn:oid:2.16.840.1.113883.5.90) (CONF:1126-33982). SHALL contain exactly one [1..1] Service Delivery Location (identifier: urn:oid:2.16.840.1.113883.10.20.22.4.32) (CONF:1126-33983).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.20-2014-08-08-errors" context="cda:encounter[cda:templateId[@root='2.16.840.1.113883.10.13.20' and @extension = '2014-08-08']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.20-2014-08-08-errors-abstract"/>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.20-2014-08-08-branch-1126-33220-errors" context="cda:encounter[cda:templateId[@root='2.16.840.1.113883.10.13.20' and @extension = '2014-08-08']]/cda:performer[cda:assignedEntity][@typeCode='PRF']">
			<sch:assert id="a-1126-33938" test="count(cda:assignedEntity[exists(cda:id[@root='2.16.840.1.113883.4.6'])])=1">This assignedEntity SHALL contain at least one [1..*] id (CONF:1126-33938) such that it SHOULD contain zero or one [0..1] @root="2.16.840.1.113883.4.6" National Provider Identifier (CONF:1126-33941).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.20-2014-08-08-addr-1126-33943-errors" context="cda:encounter[cda:templateId[@root='2.16.840.1.113883.10.13.20' and @extension = '2014-08-08']]/cda:performer[cda:assignedEntity][@typeCode='PRF']/cda:assignedEntity/cda:addr">  
			<sch:extends rule="r-urn-oid-2.16.840.1.113883.10.20.22.5.2-errors-abstract"/> 
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.20-2014-08-08-personName-1126-33945-errors" context="cda:encounter[cda:templateId[@root='2.16.840.1.113883.10.13.20' and @extension = '2014-08-08']]/cda:performer[@typeCode='PRF']/cda:assignedEntity/cda:assignedPerson/cda:name">
			<sch:extends rule="r-urn-oid-2.16.840.1.113883.10.20.22.5.1.1-errors-abstract"/>
		 </sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.13.22-2014-08-08-errors">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.22-2014-08-08-errors-abstract" abstract="true">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.3-2014-06-09-errors-abstract"/>
			<sch:assert id="a-1126-33254" test="count(cda:templateId[@root='2.16.840.1.113883.10.13.22'and @extension='2014-08-08'])=1">SHALL contain exactly one [1..1] templateId (CONF:1126-33254) such that it SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.13.22" (CONF:1126-33256). SHALL contain exactly one [1..1] @extension="2014-08-08" (CONF:1126-33963).</sch:assert>
			<sch:assert id="a-1126-33255" test="@classCode='ACT'">SHALL contain exactly one [1..1] @classCode="ACT" Act (CodeSystem: HL7ActClass urn:oid:2.16.840.1.113883.5.6) (CONF:1126-33255).</sch:assert>
			<sch:assert id="a-1126-33257" test="@moodCode='EVN'">SHALL contain exactly one [1..1] @moodCode="EVN" Event (CodeSystem: ActMood urn:oid:2.16.840.1.113883.5.1001) (CONF:1126-33257).</sch:assert>
			<sch:assert id="a-1126-33258" test="exists(cda:entryRelationship[@typeCode='SUBJ' and count(cda:observation[cda:templateId[@root='2.16.840.1.113883.10.13.23' and @extension = '2014-08-08']])=1])">SHALL contain at least one [1..*] entryRelationship (CONF:1126-33258) such that it SHALL contain exactly one [1..1] @typeCode="SUBJ" Has Subject (CodeSystem: HL7ActRelationshipType urn:oid:2.16.840.1.113883.5.1002) (CONF:1126-33259).
SHALL contain exactly one [1..1] Problem Observation (V2) - Cancer IG Specific Constraints (identifier: urn:hl7ii:2.16.840.1.113883.10.13.23:2014-08-08) (CONF:1126-33260).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.22-2014-08-08-errors" context="cda:act[cda:templateId[@root='2.16.840.1.113883.10.13.22' and @extension = '2014-08-08']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.22-2014-08-08-errors-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.13.23-2014-08-08-errors">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.23-2014-08-08-errors-abstract" abstract="true">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.4-2014-06-09-errors-abstract"/>
			<sch:assert id="a-1126-33261" test="@classCode='OBS'">SHALL contain exactly one [1..1] @classCode="OBS" Observation (CodeSystem: HL7ActClass urn:oid:2.16.840.1.113883.5.6) (CONF:1126-33261).</sch:assert>
			<sch:assert id="a-1126-33262" test="@moodCode='EVN'">SHALL contain exactly one [1..1] @moodCode="EVN" Event (CodeSystem: ActMood urn:oid:2.16.840.1.113883.5.1001) (CONF:1126-33262).</sch:assert>
			<sch:assert id="a-1126-33263" test="count(cda:templateId[@root='2.16.840.1.113883.10.13.23' and @extension='2014-08-08'])=1">SHALL contain exactly one [1..1] templateId (CONF:1126-33263) such that it SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.13.23" (CONF:1126-33264). SHALL contain exactly one [1..1] @extension="2014-08-08" (CONF:1126-33964).</sch:assert>
			<sch:assert id="a-1126-33265" test="count(cda:value[@xsi:type='CD'])=1">SHALL contain exactly one [1..1] value with @xsi:type="CD" (CONF:1126-33265).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.23-2014-08-08-errors" context="cda:observation[cda:templateId[@root='2.16.840.1.113883.10.13.23' and @extension = '2014-08-08']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.23-2014-08-08-errors-abstract"/>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.23-2014-08-08-branch-1126-33265-errors" context="cda:observation[cda:templateId[@root='2.16.840.1.113883.10.13.23'][@extension = '2014-08-08']]/cda:value[@xsi:type='CD']">
			<sch:assert id="a-1126-33267" test="exists(@code)">This value SHALL contain exactly one [1..1] @code (CONF:1126-33267).</sch:assert>
			<sch:assert id="a-1126-33268-c" test="true()">@code in a problem observation SHALL be selected from:
(a) Problem Value Set (Value Set OID: 2.16.840.1.113883.3.88.12.3221.7.4) or
(b) ICD-10-CM (CodeSystem: 2.16.840.1.113883.6.90) or
(c) ICD-9-CM (CodeSystem: 2.16.840.1.113883.6.103) (CONF:1126-33268).
Note: Problem Value Set a subset of SNOMED CT CodeSystem: 2.16.840.1.113883.6.96).</sch:assert>
			<sch:assert id="a-1126-33269" test="@codeSystem='2.16.840.1.113883.6.96' or @codeSystem='2.16.840.1.113883.6.90' or @codeSystem='2.16.840.1.113883.6.103'">This value SHALL contain exactly one [1..1] @codeSystem (CONF:1126-33269). @codeSystem associated with the code for problem SHALL be selected from:
(a) SNOMED-CT (Code System: 2.16.840.1.113883.6.96) or
(b) ICD-10-CM (CodeSystem: 2.16.840.1.113883.6.90) or
(c) ICD-9-CM (CodeSystem: 2.16.840.1.113883.6.103) (CONF:1126-33601).
Note: Problem Value Set a subset of SNOMED CT (CodeSystem: 2.16.840.1.113883.6.96).</sch:assert>
			<sch:assert id="a-1126-33270" test="exists(@displayName)">This value SHALL contain exactly one [1..1] @displayName (CONF:1126-33270).</sch:assert>
			<sch:assert id="a-1126-33271-c" test="true()">@displayName associated with the code for problem SHALL be selected from:
(a) Problem Value Set (Value Set OID: 2.16.840.1.113883.3.88.12.3221.7.4) or
(b) ICD-10-CM (CodeSystem: 2.16.840.1.113883.6.90) or
(c) ICD-9-CM (CodeSystem: 2.16.840.1.113883.6.103) (CONF:1126-33271).</sch:assert>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.13.27-2014-08-08-errors">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.27-2014-08-08-errors-abstract" abstract="true">
			<sch:assert id="a-1126-33317" test="count(cda:templateId)=1 and count(cda:templateId[@root='2.16.840.1.113883.10.13.27'][@extension='2014-08-08'])=1">SHALL contain exactly one [1..1] templateId (CONF:1126-33317). This templateId SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.13.27" (CONF:1126-33323). This templateId SHALL contain exactly one [1..1] @extension="2014-08-08" (CONF:1126-33971).</sch:assert>
			<sch:assert id="a-1126-33318" test="count(cda:code)=1 and count(cda:code[empty(@nullFlavor) and @code='21958-4' and @codeSystem='2.16.840.1.113883.6.1'])=1">SHALL contain exactly one [1..1] code (CONF:1126-33318). This code SHALL contain exactly one [1..1] @code="21958-4" Regional radiation treatment Dose (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:1126-33324). This code SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.6.1" (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:1126-33325).</sch:assert>
			<sch:assert id="a-1126-33319" test="count(cda:value[@xsi:type='PQ'])=1">SHALL contain exactly one [1..1] value with @xsi:type="PQ" (CONF:1126-33319).</sch:assert>
			<sch:assert id="a-1126-33321" test="@classCode='OBS'">SHALL contain exactly one [1..1] @classCode="OBS" Observation (CodeSystem: HL7ActClass urn:oid:2.16.840.1.113883.5.6) (CONF:1126-33321).</sch:assert>
			<sch:assert id="a-1126-33322" test="@moodCode='EVN'">SHALL contain exactly one [1..1] @moodCode="EVN" Event (CodeSystem: ActMood urn:oid:2.16.840.1.113883.5.1001) (CONF:1126-33322).</sch:assert>
			<sch:assert id="a-1126-33326" test="count(cda:value[@xsi:type='PQ'][@value])=1">This value SHALL contain exactly one [1..1] @value (CONF:1126-33326).</sch:assert>
			<sch:assert id="a-1126-33327" test="count(cda:value[@xsi:type='PQ'][@unit='cGy'])=1">This value SHALL contain exactly one [1..1] @unit="cGy" centiGray (CodeSystem: UCUM urn:oid:2.16.840.1.113883.6.8) (CONF:1126-33327).</sch:assert>
			<sch:assert id="a-1126-33584" test="empty(cda:statusCode) or (count(cda:statusCode)=1 and count(cda:statusCode[empty(@nullFlavor) and @code='completed'])=1)">The statusCode, if present, SHALL contain exactly one [1..1] @code="completed" Completed (CONF:1126-33584).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.27-2014-08-08-errors" context="cda:observation[cda:templateId[@root='2.16.840.1.113883.10.13.27' and @extension = '2014-08-08']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.27-2014-08-08-errors-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.13.26-2014-08-08-errors">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.26-2014-08-08-errors-abstract" abstract="true">
			<sch:assert id="a-1126-33328" test="count(cda:templateId)=1 and count(cda:templateId[@root='2.16.840.1.113883.10.13.26'][@extension='2014-08-08'])=1">SHALL contain exactly one [1..1] templateId (CONF:1126-33328). This templateId SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.13.26" (CONF:1126-33341). This templateId SHALL contain exactly one [1..1] @extension="2014-08-08" (CONF:1126-33970).</sch:assert>
			<sch:assert id="a-1126-33329" test="count(cda:code)=1">SHALL contain exactly one [1..1] code (CONF:1126-33329).
Note: Procedure code that identifies the radiation treatment—boost modality used to deliver the most clinically significant dose to the primary volume of interest during the first course of treatment.</sch:assert>
			<sch:assert id="a-1126-33339" test="@classCode='PROC'">SHALL contain exactly one [1..1] @classCode="PROC" procedure (CodeSystem: HL7ActClass urn:oid:2.16.840.1.113883.5.6) (CONF:1126-33339).</sch:assert>
			<sch:assert id="a-1126-33340" test="@moodCode='EVN'">SHALL contain exactly one [1..1] @moodCode="EVN" Event (CodeSystem: ActMood urn:oid:2.16.840.1.113883.5.1001 STATIC) (CONF:1126-33340).</sch:assert>
			<sch:assert id="a-1126-33342" test="exists(cda:id)">SHALL contain at least one [1..*] id (CONF:1126-33342).</sch:assert>
			<sch:assert id="a-1126-33345" test="count(cda:statusCode)=1 and count(cda:statusCode[empty(@nullFlavor) and @code='completed'])=1">SHALL contain exactly one [1..1] statusCode (CONF:1126-33345). This statusCode SHALL contain exactly one [1..1] @code="completed" Completed (CodeSystem: ActStatus urn:oid:2.16.840.1.113883.5.14 STATIC) (CONF:1126-33591).</sch:assert>
			<sch:assert id="a-1126-33392" test="count(cda:entryRelationship[@typeCode='RSON'][count(cda:observation[cda:templateId[@root='2.16.840.1.113883.10.13.19' and @extension = '2014-08-08']])=1])=1">SHALL contain exactly one [1..1] entryRelationship (CONF:1126-33392) such that it SHALL contain exactly one [1..1] @typeCode="RSON" has reason (CodeSystem: HL7ActRelationshipType urn:oid:2.16.840.1.113883.5.1002) (CONF:1126-33393). SHALL contain exactly one [1..1] Indication (V2) - Cancer IG Specific Constraints (identifier: urn:hl7ii:2.16.840.1.113883.10.13.19:2014-08-08) (CONF:1126-33394).</sch:assert>
			<sch:assert id="a-1126-33592" test="empty(cda:effectiveTime) or (count(cda:effectiveTime)=1 and count(cda:effectiveTime[count(cda:low)=1])=1)">The effectiveTime, if present, SHALL contain exactly one [1..1] low (CONF:1126-33592).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.26-2014-08-08-errors" context="cda:procedure[cda:templateId[@root='2.16.840.1.113883.10.13.26' and @extension = '2014-08-08']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.26-2014-08-08-errors-abstract"/>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.26-2014-08-08-branch-1126-33333-errors" context="cda:procedure[cda:templateId[@root='2.16.840.1.113883.10.13.26' and @extension = '2014-08-08']]/cda:targetSiteCode">
			<sch:assert id="a-1126-33347" test="exists(@code)">The targetSiteCode, if present, SHALL contain exactly one [1..1] @code, which SHALL be selected from ValueSet Body Site urn:oid:2.16.840.1.113883.3.88.12.3221.8.9 DYNAMIC (CONF:1126-33347).</sch:assert>
			<sch:assert id="a-1126-33593" test="@codeSystem='2.16.840.1.113883.6.96'">The targetSiteCode, if present, SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.6.96" (CodeSystem: SNOMED CT urn:oid:2.16.840.1.113883.6.96) (CONF:1126-33593).</sch:assert>
			<sch:assert id="a-1126-33721" test="@sdtc:valueSet='2.16.840.1.113883.3.88.12.3221.8.9'">The targetSiteCode, if present, SHALL contain exactly one [1..1] @sdtc:valueSet="2.16.840.1.113883.3.88.12.3221.8.9" (CodeSystem: SNOMED CT urn:oid:2.16.840.1.113883.6.96) (CONF:1126-33721).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.26-2014-08-08-branch-1126-33334-errors" context="cda:procedure[cda:templateId[@root='2.16.840.1.113883.10.13.26' and @extension = '2014-08-08']]/cda:performer">
			<sch:assert id="a-1126-33335" test="count(cda:assignedEntity)=1">The performer, if present, SHALL contain exactly one [1..1] assignedEntity (CONF:1126-33335).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.26-2014-08-08-branch-1126-33335-errors" context="cda:procedure[cda:templateId[@root='2.16.840.1.113883.10.13.26' and @extension = '2014-08-08']]/cda:performer/cda:assignedEntity">
			<sch:assert id="a-1126-33348" test="exists(cda:id)">This assignedEntity SHALL contain at least one [1..*] id (CONF:1126-33348).</sch:assert>
			<sch:assert id="a-1126-33349" test="count(cda:addr)=1">This assignedEntity SHALL contain exactly one [1..1] addr (CONF:1126-33349).</sch:assert>
			<sch:assert id="a-1126-33350" test="count(cda:telecom)=1">This assignedEntity SHALL contain exactly one [1..1] telecom (CONF:1126-33350).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.26-2014-08-08-branch-1126-33336-errors" context="cda:procedure[cda:templateId[@root='2.16.840.1.113883.10.13.26' and @extension = '2014-08-08']]/cda:performer/cda:assignedEntity/cda:representedOrganization">
			<sch:assert id="a-1126-33351" test="exists(cda:id)">The representedOrganization, if present, SHALL contain at least one [1..*] id (CONF:1126-33351).</sch:assert>
			<sch:assert id="a-1126-33353" test="count(cda:telecom)=1">The representedOrganization, if present, SHALL contain exactly one [1..1] telecom (CONF:1126-33353).</sch:assert>
			<sch:assert id="a-1126-33354" test="count(cda:addr)=1">The representedOrganization, if present, SHALL contain exactly one [1..1] addr (CONF:1126-33354).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.26-2014-08-08-branch-1126-33337-errors" context="cda:procedure[cda:templateId[@root='2.16.840.1.113883.10.13.26' and @extension = '2014-08-08']]/cda:participant">
			<sch:assert id="a-1126-33355" test="@typeCode='LOC'">The participant, if present, SHALL contain exactly one [1..1] @typeCode="LOC" location (CodeSystem: HL7ParticipationType urn:oid:2.16.840.1.113883.5.90) (CONF:1126-33355).</sch:assert>
			<sch:assert id="a-1126-33356" test="count(cda:participantRole[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.32']])=1">The participant, if present, SHALL contain exactly one [1..1] Service Delivery Location (identifier: urn:oid:2.16.840.1.113883.10.20.22.4.32) (CONF:1126-33356).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.26-2014-08-08-personName-1126-33582-errors" context="cda:procedure[cda:templateId[@root='2.16.840.1.113883.10.13.26' and @extension = '2014-08-08']]/cda:performer/cda:assignedEntity/cda:assignedPerson/cda:name">
			<sch:extends rule="r-urn-oid-2.16.840.1.113883.10.20.22.5.1.1-errors-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.13.25-2014-08-08-errors">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.25-2014-08-08-errors-abstract" abstract="true">
			<sch:assert id="a-1126-33361" test="count(cda:templateId)=1 and count(cda:templateId[@root='2.16.840.1.113883.10.13.25'][@extension='2014-08-08'])=1">SHALL contain exactly one [1..1] templateId (CONF:1126-33361). This templateId SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.13.25" (CONF:1126-33374). This templateId SHALL contain exactly one [1..1] @extension="2014-08-08" (CONF:1126-33975).</sch:assert>
			<sch:assert id="a-1126-33362" test="count(cda:code)=1">SHALL contain exactly one [1..1] code (CONF:1126-33362).
Note: Procedure code that identifies the dominant modality of radiation therapy used to deliver the clinically most significant regional dose to the primary volume of interest during the first course of treatment.</sch:assert>
			<sch:assert id="a-1126-33371" test="exists(cda:entryRelationship[@typeCode='RSON'][count(cda:observation[cda:templateId[@root='2.16.840.1.113883.10.13.19' and @extension = '2014-08-08']])=1])">SHALL contain at least one [1..*] entryRelationship (CONF:1126-33371) such that it SHALL contain exactly one [1..1] @typeCode="RSON" has reason (CodeSystem: HL7ActRelationshipType urn:oid:2.16.840.1.113883.5.1002) (CONF:1126-33390). SHALL contain exactly one [1..1] Indication (V2) - Cancer IG Specific Constraints (identifier: urn:hl7ii:2.16.840.1.113883.10.13.19:2014-08-08) (CONF:1126-33391).</sch:assert>
			<sch:assert id="a-1126-33372" test="@classCode='PROC'">SHALL contain exactly one [1..1] @classCode="PROC" Procedure (CodeSystem: HL7ActClass urn:oid:2.16.840.1.113883.5.6) (CONF:1126-33372).</sch:assert>
			<sch:assert id="a-1126-33373" test="@moodCode='EVN'">SHALL contain exactly one [1..1] @moodCode="EVN" Event (CodeSystem: ActMood urn:oid:2.16.840.1.113883.5.1001 STATIC) (CONF:1126-33373).</sch:assert>
			<sch:assert id="a-1126-33375" test="exists(cda:id)">SHALL contain at least one [1..*] id (CONF:1126-33375).</sch:assert>
			<sch:assert id="a-1126-33378" test="count(cda:statusCode)=1 and count(cda:statusCode[empty(@nullFlavor) and @code='completed'])=1">SHALL contain exactly one [1..1] statusCode (CONF:1126-33378). This statusCode SHALL contain exactly one [1..1] @code="completed" Completed (CodeSystem: ActStatus urn:oid:2.16.840.1.113883.5.14 STATIC) (CONF:1126-33598).</sch:assert>
			<sch:assert id="a-1126-33599" test="empty(cda:effectiveTime) or (count(cda:effectiveTime)=1 and count(cda:effectiveTime[count(cda:low)=1])=1)">The effectiveTime, if present, SHALL contain exactly one [1..1] low (CONF:1126-33599).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.25-2014-08-08-errors" context="cda:procedure[cda:templateId[@root='2.16.840.1.113883.10.13.25' and @extension = '2014-08-08']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.25-2014-08-08-errors-abstract"/>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.25-2014-08-08-branch-1126-33362-errors" context="cda:procedure[cda:templateId[@root='2.16.840.1.113883.10.13.25' and @extension = '2014-08-08']]/cda:code">
			<sch:let name="origTextValue" value="cda:originalText/cda:reference/@value"/>
			<sch:assert id="a-1126-33376-c" test="empty(cda:originalText/cda:reference[@value]) or (count($origTextValue)=1 and starts-with($origTextValue, '#') and count(//*[@ID=substring($origTextValue, 2)])=1)">This reference/@value SHALL begin with a '#' and SHALL point to its corresponding narrative (using the approach defined in CDA Release 2, section 4.3.5.1) (CONF:1126-33376).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.25-2014-08-08-branch-1126-33366-errors" context="cda:procedure[cda:templateId[@root='2.16.840.1.113883.10.13.25' and @extension = '2014-08-08']]/cda:targetSiteCode">
			<sch:assert id="a-1126-33380" test="exists(@code)">The targetSiteCode, if present, SHALL contain exactly one [1..1] @code, which SHALL be selected from ValueSet Body Site urn:oid:2.16.840.1.113883.3.88.12.3221.8.9 DYNAMIC (CONF:1126-33380).</sch:assert>
			<sch:assert id="a-1126-33600" test="@codeSystem='2.16.840.1.113883.6.96'">The targetSiteCode, if present, SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.6.96" (CodeSystem: SNOMED CT urn:oid:2.16.840.1.113883.6.96) (CONF:1126-33600).</sch:assert>
			<sch:assert id="a-1126-33722" test="@sdtc:valueSet='2.16.840.1.113883.3.88.12.3221.8.9'">The targetSiteCode, if present, SHALL contain exactly one [1..1] @sdtc:valueSet="2.16.840.1.113883.3.88.12.3221.8.9" (CodeSystem: SNOMED CT urn:oid:2.16.840.1.113883.6.96) (CONF:1126-33722).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.25-2014-08-08-branch-1126-33367-errors" context="cda:procedure[cda:templateId[@root='2.16.840.1.113883.10.13.25' and @extension = '2014-08-08']]/cda:performer">
			<sch:assert id="a-1126-33368" test="count(cda:assignedEntity)=1">The performer, if present, SHALL contain exactly one [1..1] assignedEntity (CONF:1126-33368).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.25-2014-08-08-branch-1126-33368-errors" context="cda:procedure[cda:templateId[@root='2.16.840.1.113883.10.13.25' and @extension = '2014-08-08']]/cda:performer/cda:assignedEntity">
			<sch:assert id="a-1126-33381" test="exists(cda:id)">This assignedEntity SHALL contain at least one [1..*] id (CONF:1126-33381).</sch:assert>
			<sch:assert id="a-1126-33382" test="count(cda:addr)=1">This assignedEntity SHALL contain exactly one [1..1] addr (CONF:1126-33382).</sch:assert>
			<sch:assert id="a-1126-33383" test="count(cda:telecom)=1">This assignedEntity SHALL contain exactly one [1..1] telecom (CONF:1126-33383).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.25-2014-08-08-branch-1126-33369-errors" context="cda:procedure[cda:templateId[@root='2.16.840.1.113883.10.13.25' and @extension = '2014-08-08']]/cda:performer/cda:assignedEntity/cda:representedOrganization">
			<sch:assert id="a-1126-33384" test="exists(cda:id)">The representedOrganization, if present, SHALL contain at least one [1..*] id (CONF:1126-33384).</sch:assert>
			<sch:assert id="a-1126-33386" test="count(cda:telecom)=1">The representedOrganization, if present, SHALL contain exactly one [1..1] telecom (CONF:1126-33386).</sch:assert>
			<sch:assert id="a-1126-33387" test="count(cda:addr)=1">The representedOrganization, if present, SHALL contain exactly one [1..1] addr (CONF:1126-33387).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.25-2014-08-08-branch-1126-33370-errors" context="cda:procedure[cda:templateId[@root='2.16.840.1.113883.10.13.25' and @extension = '2014-08-08']]/cda:participant">
			<sch:assert id="a-1126-33388" test="@typeCode='LOC'">The participant, if present, SHALL contain exactly one [1..1] @typeCode="LOC" location (CodeSystem: HL7ParticipationType urn:oid:2.16.840.1.113883.5.90) (CONF:1126-33388).</sch:assert>
			<sch:assert id="a-1126-33389" test="count(cda:participantRole[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.32']])=1">The participant, if present, SHALL contain exactly one [1..1] Service Delivery Location (identifier: urn:oid:2.16.840.1.113883.10.20.22.4.32) (CONF:1126-33389).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.25-2014-08-08-personName-1126-33586-errors" context="cda:procedure[cda:templateId[@root='2.16.840.1.113883.10.13.25' and @extension = '2014-08-08']]/cda:performer/cda:assignedEntity/cda:assignedPerson/cda:name">  
			<sch:extends rule="r-urn-oid-2.16.840.1.113883.10.20.22.5.1.1-errors-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.13.28-2014-08-08-errors">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.28-2014-08-08-errors-abstract" abstract="true">
			<sch:assert id="a-1126-33621" test="count(cda:templateId)=1 and count(cda:templateId[@root='2.16.840.1.113883.10.13.28'][@extension='2014-08-08'])=1">SHALL contain exactly one [1..1] templateId (CONF:1126-33621). This templateId SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.13.28" (CONF:1126-33622). This templateId SHALL contain exactly one [1..1] @extension="2014-08-08" (CONF:1126-33966).</sch:assert>
			<sch:assert id="a-1126-33626" test="count(cda:code)=1 and count(cda:code[@codeSystem='2.16.840.1.113883.6.1'])=1">SHALL contain exactly one [1..1] code (CONF:1126-33626). This code SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.6.1" LOINC (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:1126-33632).</sch:assert>
			<sch:assert id="a-1126-33628" test="count(cda:value[@xsi:type='PQ' and exists(@value) and @unit='cGy'])=1">SHALL contain exactly one [1..1] value with @xsi:type="PQ" (CONF:1126-33628). This value SHALL contain exactly one [1..1] @value (CONF:1126-33634). This value SHALL contain exactly one [1..1] @unit="cGy" centiGray (CodeSystem: UCUM urn:oid:2.16.840.1.113883.6.8) (CONF:1126-33635).</sch:assert>
			<sch:assert id="a-1126-33629" test="@classCode='OBS'">SHALL contain exactly one [1..1] @classCode="OBS" observation (CodeSystem: HL7ActClass urn:oid:2.16.840.1.113883.5.6) (CONF:1126-33629).</sch:assert>
			<sch:assert id="a-1126-33630" test="@moodCode='EVN'">SHALL contain exactly one [1..1] @moodCode="EVN" Event (CodeSystem: ActMood urn:oid:2.16.840.1.113883.5.1001) (CONF:1126-33630).</sch:assert>
			<sch:assert id="a-1126-33633" test="empty(cda:statusCode) or (count(cda:statusCode)=1 and count(cda:statusCode[empty(@nullFlavor) and @code='completed'])=1)">The statusCode, if present, SHALL contain exactly one [1..1] @code="completed" Completed (CodeSystem: ActStatus urn:oid:2.16.840.1.113883.5.14) (CONF:1126-33633).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.28-2014-08-08-errors" context="cda:observation[cda:templateId[@root='2.16.840.1.113883.10.13.28' and @extension = '2014-08-08']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.28-2014-08-08-errors-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.13.29-2014-08-08-errors">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.29-2014-08-08-errors-abstract" abstract="true">
			<sch:assert id="a-1126-33636" test="exists(cda:component)">SHALL contain at least one [1..*] component (CONF:1126-33636).</sch:assert>
			<sch:assert id="a-1126-33637" test="@classCode='CLUSTER'">SHALL contain exactly one [1..1] @classCode="CLUSTER" cluster (CodeSystem: HL7ActClass urn:oid:2.16.840.1.113883.5.6) (CONF:1126-33637).</sch:assert>
			<sch:assert id="a-1126-33638" test="@moodCode='EVN'">SHALL contain exactly one [1..1] @moodCode="EVN" event (CodeSystem: ActMood urn:oid:2.16.840.1.113883.5.1001) (CONF:1126-33638).</sch:assert>
			<sch:assert id="a-1126-33648" test="count(cda:code)=1 and count(cda:code[empty(@nullFlavor) and @code='21964-2' and @codeSystem='2.16.840.1.113883.6.1'])=1">SHALL contain exactly one [1..1] code (CONF:1126-33648). This code SHALL contain exactly one [1..1] @code="21964-2" Modality Radiation treatment (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:1126-33649). This code SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.6.1 " LOINC (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:1126-33650).</sch:assert>
			<sch:assert id="a-1126-33972" test="count(cda:templateId)=1 and count(cda:templateId[@root='2.16.840.1.113883.10.13.29' and @extension='2014-08-08'])=1">SHALL contain exactly one [1..1] templateId (CONF:1126-33972). This templateId SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.13.29" (CONF:1126-33973). This templateId SHALL contain exactly one [1..1] @extension="2014-08-08" (CONF:1126-33974).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.29-2014-08-08-errors" context="cda:organizer[cda:templateId[@root='2.16.840.1.113883.10.13.29' and @extension = '2014-08-08']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.29-2014-08-08-errors-abstract"/>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.29-2014-08-08-branch-1126-33636-errors" context="cda:organizer[cda:templateId[@root='2.16.840.1.113883.10.13.29' and @extension = '2014-08-08']]/cda:component">
			<sch:assert id="a-1126-33651" test="@typeCode='COMP'">Such components SHALL contain exactly one [1..1] @typeCode="COMP" component (CodeSystem: HL7ActRelationshipType urn:oid:2.16.840.1.113883.5.1002) (CONF:1126-33651).</sch:assert>
			<sch:assert id="a-1126-33639" test="count(cda:procedure[cda:templateId[@root='2.16.840.1.113883.10.13.25' and @extension = '2014-08-08']])=1">Such components SHALL contain exactly one [1..1] Radiation Regional Treatment Modality Procedure (identifier: urn:hl7ii:2.16.840.1.113883.10.13.25:2014-08-08) (CONF:1126-33639).</sch:assert>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.13.30-2014-08-08-errors">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.30-2014-08-08-errors-abstract" abstract="true">
			<sch:assert id="a-1126-33640" test="count(cda:code)=1 and count(cda:code[empty(@nullFlavor) and @code='42128-9' and @codeSystem='2.16.840.1.113883.6.1'])=1">SHALL contain exactly one [1..1] code (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:1126-33640). This code SHALL contain exactly one [1..1] @code="42128-9" Boost radiation treatment modality Radiation treatment (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:1126-33644). This code SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.6.1" LOINC (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:1126-33645).</sch:assert>
			<sch:assert id="a-1126-33641" test="exists(cda:component)">SHALL contain at least one [1..*] component (CONF:1126-33641).</sch:assert>
			<sch:assert id="a-1126-33642" test="@classCode='CLUSTER'">SHALL contain exactly one [1..1] @classCode="CLUSTER" cluster (CodeSystem: HL7ActClass urn:oid:2.16.840.1.113883.5.6) (CONF:1126-33642).</sch:assert>
			<sch:assert id="a-1126-33643" test="@moodCode='EVN'">SHALL contain exactly one [1..1] @moodCode="EVN" event (CodeSystem: ActMood urn:oid:2.16.840.1.113883.5.1001) (CONF:1126-33643).</sch:assert>
			<sch:assert id="a-1126-33967" test="count(cda:templateId)=1 and count(cda:templateId[@root='2.16.840.1.113883.10.13.30'][@extension='2014-08-08'])=1">SHALL contain exactly one [1..1] templateId (CONF:1126-33967). This templateId SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.13.30" (CONF:1126-33968). This templateId SHALL contain exactly one [1..1] @extension="2014-08-08" (CONF:1126-33969).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.30-2014-08-08-errors" context="cda:organizer[cda:templateId[@root='2.16.840.1.113883.10.13.30' and @extension = '2014-08-08']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.30-2014-08-08-errors-abstract"/>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.30-2014-08-08-branch-1126-33641-errors" context="cda:organizer[cda:templateId[@root='2.16.840.1.113883.10.13.30' and @extension = '2014-08-08']]/cda:component">
			<sch:assert id="a-1126-33646" test="@typeCode='COMP'">Such components SHALL contain exactly one [1..1] @typeCode="COMP" component (CodeSystem: HL7ActRelationshipType urn:oid:2.16.840.1.113883.5.1002) (CONF:1126-33646).</sch:assert>
			<sch:assert id="a-1126-33647" test="count(cda:procedure[cda:templateId[@root='2.16.840.1.113883.10.13.26' and @extension = '2014-08-08']])=1">Such components SHALL contain exactly one [1..1] Radiation Boost Modality Procedure (identifier: urn:hl7ii:2.16.840.1.113883.10.13.26:2014-08-08) (CONF:1126-33647).</sch:assert>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.13.16-2015-01-29-errors">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.16-2015-01-29-errors-abstract" abstract="true">
			<sch:assert id="a-1169-32704-c" test="(exists(@nullFlavor) and empty(cda:component)) or count(cda:component[@typeCode='COMP'][@contextConductionInd='true'][count(cda:observation[cda:templateId[@root='2.16.840.1.113883.10.13.33' and @extension = '2015-01-29']])=1])=1">If organizer/@nullFlavor is not present:
SHALL contain exactly one [1..1] component (CONF:1169-32704) such that it SHALL contain exactly one [1..1] Usual Industry History (identifier: urn:hl7ii:2.16.840.1.113883.10.13.33:2015-01-29) (CONF:1169-32707). SHALL contain exactly one [1..1] @typeCode="COMP" (CONF:1169-32705). SHALL contain exactly one [1..1] @contextConductionInd="true" (CONF:1169-32706).</sch:assert>
			<sch:assert id="a-1169-32712-c" test="(exists(@nullFlavor) and empty(cda:component)) or count(cda:component[@typeCode='COMP'][@contextConductionInd='true'][count(cda:observation[cda:templateId[@root='2.16.840.1.113883.10.13.34' and @extension = '2015-01-29']])=1])=1">If organizer/@nullFlavor is not present:
SHALL contain exactly one [1..1] component (CONF:1169-32712) such that it SHALL contain exactly one [1..1] Usual Occupation History (identifier: urn:hl7ii:2.16.840.1.113883.10.13.34:2015-01-29) (CONF:1169-32715). SHALL contain exactly one [1..1] @typeCode="COMP" (CONF:1169-32713). SHALL contain exactly one [1..1] @contextConductionInd="true" (CONF:1169-32714).</sch:assert>
			<sch:assert id="a-1169-33070" test="count(cda:templateId)=1 and count(cda:templateId[@root='2.16.840.1.113883.10.13.16'][@extension='2015-01-29'])=1">SHALL contain exactly one [1..1] templateId (CONF:1169-33070). This templateId SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.13.16" (CONF:1169-33071). This templateId SHALL contain exactly one [1..1] @extension="2015-01-29" (CONF:1169-33957).</sch:assert>
			<sch:assert id="a-1169-32701" test="@classCode='CLUSTER'">SHALL contain exactly one [1..1] @classCode="CLUSTER" (CONF:1169-32701).</sch:assert>
			<sch:assert id="a-1169-32702" test="@moodCode='EVN'">SHALL contain exactly one [1..1] @moodCode="EVN" (CONF:1169-32702).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.16-2015-01-29-errors" context="cda:organizer[cda:templateId[@root='2.16.840.1.113883.10.13.16' and @extension = '2015-01-29']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.16-2015-01-29-errors-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.13.33-2015-01-29-errors">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.33-2015-01-29-errors-abstract" abstract="true">
			<sch:assert id="a-1169-34005" test="count(cda:code)=1 and count(cda:code[empty(@nullFlavor) and @code='21844-6' and @codeSystem='2.16.840.1.113883.6.1'])=1">SHALL contain exactly one [1..1] code (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:1169-34005). This code SHALL contain exactly one [1..1] @code="21844-6" Usual Industry Hx (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:1169-34008). This code SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.6.1" (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:1169-34009).</sch:assert>
			<sch:assert id="a-1169-34006" test="@classCode='OBS'">SHALL contain exactly one [1..1] @classCode="OBS" (CONF:1169-34006).</sch:assert>
			<sch:assert id="a-1169-34007" test="@moodCode='EVN'">SHALL contain exactly one [1..1] @moodCode="EVN" (CONF:1169-34007).</sch:assert>
			<sch:assert id="a-1169-34010" test="count(cda:effectiveTime)=1">SHALL contain exactly one [1..1] effectiveTime (CONF:1169-34010).</sch:assert>
			<sch:assert id="a-1169-34013" test="count(cda:value[@xsi:type='CD'])=1">SHALL contain exactly one [1..1] value with @xsi:type="CD" (CONF:1169-34013).</sch:assert>
			<sch:assert id="a-1169-34377" test="count(cda:templateId[@root='2.16.840.1.113883.10.13.33'][@extension='2015-01-29'])=1">SHALL contain exactly one [1..1] templateId (CONF:1169-34377) such that it SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.13.33" (CONF:1169-34378). SHALL contain exactly one [1..1] @extension="2015-01-29" (CONF:1169-34379).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.33-2015-01-29-errors" context="cda:observation[cda:templateId[@root='2.16.840.1.113883.10.13.33' and @extension = '2015-01-29']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.33-2015-01-29-errors-abstract"/>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.33-2015-01-29-branch-1169-34013-errors" context="cda:observation[cda:templateId[@root='2.16.840.1.113883.10.13.33' and @extension = '2015-01-29']]/cda:value[@xsi:type='CD'][empty(@nullFlavor)]">
			<sch:let name="origTextValue" value="cda:originalText/cda:reference/@value"/>
			<sch:assert id="a-1169-34014-c" test="@code=document('voc.xml')/voc:systems/voc:system[@valueSetOid='2.16.840.1.114222.4.11.7187']/voc:code/@value">If value/@nullFlavor is not present then
This value SHALL contain exactly one [1..1] @code, which SHALL be selected from ValueSet PHVS_Industry_CDC_Census2010 urn:oid:2.16.840.1.114222.4.11.7187 STATIC (CONF:1169-34014).</sch:assert>
			<sch:assert id="a-1169-34015-c" test="@codeSystem='2.16.840.1.114222.4.5.315'">If value/@nullFlavor is not present then
This value SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.114222.4.5.315" Industry CDC Census 2010 (CodeSystem: Industry CDC Census 2010 urn:oid:2.16.840.1.114222.4.5.315) (CONF:1169-34015).</sch:assert>
			<sch:assert id="a-1169-34016-c" test="@displayName=document('voc.xml')/voc:systems/voc:system[@valueSetOid='2.16.840.1.114222.4.11.7187']/voc:code/@displayName">If value/@nullFlavor is not present then
This value SHALL contain exactly one [1..1] @displayName, which SHALL be selected from ValueSet PHVS_Industry_CDC_Census2010 urn:oid:2.16.840.1.114222.4.11.7187 STATIC (CONF:1169-34016).</sch:assert>
			<sch:assert id="a-1169-34017-c" test="@sdtc:valueSet='2.16.840.1.114222.4.11.7187'">If value/@nullFlavor is not present then
This value SHALL contain exactly one [1..1] @sdtc:valueSet="2.16.840.1.114222.4.11.7187" (CodeSystem: Industry CDC Census 2010 urn:oid:2.16.840.1.114222.4.5.315) (CONF:1169-34017).</sch:assert>
			<sch:assert id="a-1169-34021-c" test="empty(cda:originalText/cda:reference[@value]) or (count($origTextValue)=1 and starts-with($origTextValue, '#') and count(//*[@ID=substring($origTextValue, 2)])=1)">This reference/@value SHALL begin with a '#' and SHALL point to its corresponding narrative (using the approach defined in CDA Release 2, section 4.3.5.1) (CONF:1169-34021).</sch:assert>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.13.34-2015-01-29-errors">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.34-2015-01-29-errors-abstract" abstract="true">
			<sch:assert id="a-1169-34022" test="@classCode='OBS'">SHALL contain exactly one [1..1] @classCode="OBS" (CONF:1169-34022).</sch:assert>
			<sch:assert id="a-1169-34023" test="@moodCode='EVN'">SHALL contain exactly one [1..1] @moodCode="EVN" (CONF:1169-34023).</sch:assert>
			<sch:assert id="a-1169-34024" test="count(cda:code)=1 and count(cda:code[empty(@nullFlavor) and @code='21843-8' and @codeSystem='2.16.840.1.113883.6.1'])=1">SHALL contain exactly one [1..1] code (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:1169-34024). This code SHALL contain exactly one [1..1] @code="21843-8" Usual occupation Hx (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:1169-34025). This code SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.6.1" (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:1169-34026).</sch:assert>
			<sch:assert id="a-1169-34027" test="count(cda:effectiveTime)=1">SHALL contain exactly one [1..1] effectiveTime (CONF:1169-34027).</sch:assert>
			<sch:assert id="a-1169-34030" test="count(cda:value[@xsi:type='CD'])=1">SHALL contain exactly one [1..1] value with @xsi:type="CD" (CONF:1169-34030).</sch:assert>
			<sch:assert id="a-1169-34380" test="count(cda:templateId[@root='2.16.840.1.113883.10.13.34'][@extension='2015-01-29'])=1">SHALL contain exactly one [1..1] templateId (CONF:1169-34380) such that it SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.13.34" (CONF:1169-34381). SHALL contain exactly one [1..1] @extension="2015-01-29" (CONF:1169-34382).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.34-2015-01-29-errors" context="cda:observation[cda:templateId[@root='2.16.840.1.113883.10.13.34' and @extension = '2015-01-29']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.34-2015-01-29-errors-abstract"/>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.34-2015-01-29-branch-1169-34030-errors" context="cda:observation[cda:templateId[@root='2.16.840.1.113883.10.13.34' and @extension = '2015-01-29']]/cda:value[@xsi:type='CD'][empty(@nullFlavor)]">
			<sch:let name="origTextValue" value="cda:originalText/cda:reference/@value"/>
			<sch:assert id="a-1169-34031-c" test="@code=document('voc.xml')/voc:systems/voc:system[@valueSetOid='2.16.840.1.114222.4.11.7186']/voc:code/@value">If value/@nullFlavor is not present then
This value SHALL contain exactly one [1..1] @code, which SHALL be selected from ValueSet PHVS_Occupation_CDC_Census2010 urn:oid:2.16.840.1.114222.4.11.7186 STATIC (CONF:1169-34031).</sch:assert>
			<sch:assert id="a-1169-34032-c" test="@codeSystem='2.16.840.1.114222.4.5.314'">If value/@nullFlavor is not present then
This value SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.114222.4.5.314" Occupation CDC Census 2010 (CodeSystem: Occupation CDC Census 2010 urn:oid:2.16.840.1.114222.4.5.314) (CONF:1169-34032).</sch:assert>
			<sch:assert id="a-1169-34033-c" test="@displayName=document('voc.xml')/voc:systems/voc:system[@valueSetOid='2.16.840.1.114222.4.11.7186']/voc:code/@displayName">If value/@nullFlavor is not present then
This value SHALL contain exactly one [1..1] @displayName, which SHALL be selected from ValueSet PHVS_Occupation_CDC_Census2010 urn:oid:2.16.840.1.114222.4.11.7186 STATIC (CONF:1169-34033).</sch:assert>
			<sch:assert id="a-1169-34034-c" test="@sdtc:valueSet='2.16.840.1.114222.4.11.7186'">If value/@nullFlavor is not present then
This value SHALL contain exactly one [1..1] @sdtc:valueSet="2.16.840.1.114222.4.11.7186" (CodeSystem: Occupation CDC Census 2010 urn:oid:2.16.840.1.114222.4.5.314) (CONF:1169-34034).</sch:assert>
			<sch:assert id="a-1169-34038-c" test="empty(cda:originalText/cda:reference[@value]) or (count($origTextValue)=1 and starts-with($origTextValue, '#') and count(//*[@ID=substring($origTextValue, 2)])=1)">This reference/@value SHALL begin with a '#' and SHALL point to its corresponding narrative (using the approach defined in CDA Release 2, section 4.3.5.1) (CONF:1169-34038).</sch:assert>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.13.11-2015-01-29-errors">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.11-2015-01-29-errors-abstract" abstract="true">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.17-2014-06-09-errors-abstract"/>
			<sch:assert id="a-1169-32699" test="exists(cda:entry[count(cda:organizer[cda:templateId[@root='2.16.840.1.113883.10.13.16' and @extension = '2015-01-29']])=1])">SHALL contain at least one [1..*] entry (CONF:1169-32699) such that it SHALL contain exactly one [1..1] Employment History Observation Organizer (V1.1) (identifier: urn:hl7ii:2.16.840.1.113883.10.13.16:2015-01-29) (CONF:1169-32700).</sch:assert>
			<sch:assert id="a-1169-33060" test="count(cda:templateId[@root='2.16.840.1.113883.10.13.11'][@extension='2015-01-29'])=1">SHALL contain exactly one [1..1] templateId (CONF:1169-33060) such that it SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.13.11" (CONF:1169-33061). SHALL contain exactly one [1..1] @extension="2015-01-29" (CONF:1169-33954).</sch:assert>
			<sch:assert id="a-1169-33884" test="empty(cda:entry[count(cda:observation[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.38' and @extension = '2014-06-09']])=1])">SHALL NOT contain [0..0] entry (CONF:1169-33884) such that it SHALL contain exactly one [1..1] Social History Observation (V2) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.4.38:2014-06-09) (CONF:1169-33889).</sch:assert>
			<sch:assert id="a-1169-33885" test="empty(cda:entry[count(cda:observation[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.109']])=1])">SHALL NOT contain [0..0] entry (CONF:1169-33885) such that it SHALL contain exactly one [1..1] Characteristics of Home Environment (identifier: urn:oid:2.16.840.1.113883.10.20.22.4.109) (CONF:1169-33890).</sch:assert>
			<sch:assert id="a-1169-33886" test="empty(cda:entry[count(cda:observation[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.111']])=1])">SHALL NOT contain [0..0] entry (CONF:1169-33886) such that it SHALL contain exactly one [1..1] Cultural and Religious Observation (identifier: urn:oid:2.16.840.1.113883.10.20.22.4.111) (CONF:1169-33891).</sch:assert>
			<sch:assert id="a-1169-33887" test="empty(cda:entry[count(cda:observation[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.72']])=1])">SHALL NOT contain [0..0] entry (CONF:1169-33887) such that it SHALL contain exactly one [1..1] Caregiver Characteristics (identifier: urn:oid:2.16.840.1.113883.10.20.22.4.72) (CONF:1169-33892).</sch:assert>
			<sch:assert id="a-1169-33888" test="empty(cda:entry[count(cda:observation[cda:templateId[@root='2.16.840.1.113883.10.20.15.3.8']])=1])">SHALL NOT contain [0..0] entry (CONF:1169-33888) such that it SHALL contain exactly one [1..1] Pregnancy Observation (identifier: urn:oid:2.16.840.1.113883.10.20.15.3.8) (CONF:1169-33893).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.11-2015-01-29-errors" context="cda:section[cda:templateId[@root='2.16.840.1.113883.10.13.11' and @extension = '2015-01-29']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.11-2015-01-29-errors-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.13.1-2015-01-29-errors">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.1-2015-01-29-errors-abstract" abstract="true">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.1.1-2014-06-09-errors-abstract"/>
			<sch:assert id="a-1169-210" test="count(cda:componentOf)=1">SHALL contain exactly one [1..1] componentOf (CONF:1169-210).</sch:assert>
			<sch:assert id="a-1169-220" test="exists(cda:recordTarget)">SHALL contain at least one [1..*] recordTarget (CONF:1169-220).</sch:assert>
			<sch:assert id="a-1169-32647" test="count(cda:component)=1 and count(cda:component[count(cda:structuredBody)=1])=1">SHALL contain exactly one [1..1] component (CONF:1169-32647). This component SHALL contain exactly one [1..1] structuredBody (CONF:1169-32648).</sch:assert>
			<sch:assert id="a-1169-32656" test="count(cda:code)=1 and count(cda:code[empty(@nullFlavor) and @code='72134-0' and @codeSystem='2.16.840.1.113883.6.1'])=1">SHALL contain exactly one [1..1] code (CONF:1169-32656). This code SHALL contain exactly one [1..1] @code="72134-0" Cancer event report (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:1169-32657). This code SHALL NOT contain [0..0] @nullFlavor (CONF:1169-33042).</sch:assert>
			<sch:assert id="a-1169-33025" test="count(cda:effectiveTime)=1 and count(cda:effectiveTime[empty(@nullFlavor)])=1">SHALL contain exactly one [1..1] effectiveTime (CONF:1169-33025). This effectiveTime SHALL NOT contain [0..0] @nullFlavor (CONF:1169-33026).</sch:assert>
			<sch:assert id="a-1169-33027" test="count(cda:id)=1">SHALL contain exactly one [1..1] id (CONF:1169-33027).</sch:assert>
			<sch:assert id="a-1169-33054" test="count(cda:templateId[@root='2.16.840.1.113883.10.13.1'][@extension='2015-01-29'])=1">SHALL contain exactly one [1..1] templateId (CONF:1169-33054) such that it SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.13.1" (CONF:1169-33055). SHALL contain exactly one [1..1] @extension="2015-01-29" (CONF:1169-33946).</sch:assert>
			<sch:assert id="a-1169-33229" test="count(cda:author[count(cda:assignedAuthor[count(cda:assignedPerson)=1])=1])=1">SHALL contain exactly one [1..1] author (CONF:1169-33229) such that it SHALL contain exactly one [1..1] assignedAuthor (CONF:1169-33230). This assignedAuthor SHALL contain exactly one [1..1] assignedPerson (CONF:1169-33233).
Note: Author information needs to be provided in 2 separate instances of author participation for both person and device playing the role of author</sch:assert>
			<sch:assert id="a-1169-33234" test="count(cda:custodian)=1">SHALL contain exactly one [1..1] custodian (CONF:1169-33234).</sch:assert>
			<sch:assert id="a-1169-33686" test="count(cda:author[count(cda:assignedAuthor[count(cda:assignedAuthoringDevice)=1])=1])=1">SHALL contain exactly one [1..1] author (CONF:1169-33686) such that it SHALL contain exactly one [1..1] assignedAuthor (CONF:1169-33687). This assignedAuthor SHALL contain exactly one [1..1] assignedAuthoringDevice (CONF:1169-33690).
Note: Author information needs to be provided in 2 separate instances of author participation for both person and device playing the role of author</sch:assert>
			<sch:assert id="a-1169-33978-c" test="empty(cda:component/cda:structuredBody/cda:component[empty(cda:section[cda:templateId[@root='2.16.840.1.113883.10.13.2' or @root='2.16.840.1.113883.10.20.22.2.8' or @root='2.16.840.1.113883.10.20.22.2.15' or @root='2.16.840.1.113883.10.13.12' or @root='2.16.840.1.113883.10.20.22.2.38' or @root='2.16.840.1.113883.10.13.13' or @root='2.16.840.1.113883.10.20.22.2.1.1' or @root='2.16.840.1.113883.10.20.22.2.1' or @root='2.16.840.1.113883.10.20.22.2.18' or @root='2.16.840.1.113883.10.13.9' or @root='2.16.840.1.113883.10.20.22.2.10' or @root='2.16.840.1.113883.10.13.21' or @root='2.16.840.1.113883.10.20.22.2.5' or @root='2.16.840.1.113883.10.20.22.2.5.1' or @root='2.16.840.1.113883.10.13.10' or @root='2.16.840.1.113883.10.20.22.2.7' or @root='2.16.840.1.113883.10.20.22.2.7.1' or @root='2.16.840.1.113883.10.20.22.2.3.1' or @root='2.16.840.1.113883.10.13.11' or @root='2.16.840.1.113883.10.20.22.2.17' or @root='2.16.840.1.113883.10.20.22.2.4.1']])])">This structuredBody SHALL NOT contain [0..0] any other component sections than those identified above (CONF:1169-33978).</sch:assert>
			<sch:assert id="a-1169-0" test="count(cda:title)=1">SHALL contain exactly one [1..1] title (CONF:1169-0).</sch:assert>
			<sch:assert id="a-1169-33545-c" test="count(cda:id)=1 and count(//cda:id[deep-equal(., current()/cda:id)])=1">This id SHALL be a globally unique identifier for the document (CONF:1169-33545).</sch:assert>
			<sch:assert id="a-1169-33577" test="count(cda:setId)=1">SHALL contain exactly one [1..1] setId (CONF:1169-33577).</sch:assert>
			<sch:assert id="a-1169-33578" test="count(cda:versionNumber)=1">SHALL contain exactly one [1..1] versionNumber (CONF:1169-33578).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.1-2015-01-29-errors" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.13.1' and @extension = '2015-01-29']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.1-2015-01-29-errors-abstract"/>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.1-2015-01-29-branch-1169-210-errors" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.13.1' and @extension = '2015-01-29']]/cda:componentOf">
			<sch:let name="encompassingEncounter_1169_212" value="cda:encompassingEncounter/cda:encounterParticipant[@typeCode='REF'][count(cda:assignedEntity)=1 and count(cda:assignedEntity[cda:id][count(cda:representedOrganization)=1])=1]"/>
			<sch:let name="encompassingEncounter_1169_34264" value="cda:encompassingEncounter[count(cda:location)=1 and count(cda:location[count(cda:healthCareFacility)=1])=1]/cda:encounterParticipant[count(cda:assignedEntity)=1 and count(cda:assignedEntity[exists(@nullFlavor)])=1]"/>
			<sch:assert id="a-1169-211" test="count(count(cda:encompassingEncounter)=1)=1 and (count($encompassingEncounter_1169_212)=1 or count($encompassingEncounter_1169_34264)=1)">This componentOf SHALL contain exactly one [1..1] encompassingEncounter (CONF:1169-211). The encompassingEncounter SHALL Contain Either:
This encompassingEncounter SHALL contain exactly one [1..1] encounterParticipant (CONF:1169-212) such that it
Note: This element records the provider that referred the patient to the reporting facility. This element SHALL be provided in the header of the CDA document in the event the patient was referred to this ambulatory healthcare provider.  SHALL contain exactly one [1..1] assignedEntity (CONF:1169-214). SHALL contain exactly one [1..1] @typeCode="REF" (CONF:1169-217).
Or encompassingEncounter SHALL Contain: This encompassingEncounter SHALL contain exactly one [1..1] encounterParticipant (CONF:1169-34264) such that it
Note: This element records the provider that referred the patient to the reporting facility. This element SHALL be provided in the header of the CDA document in the event the patient was referred to this ambulatory healthcare provider. This encompassingEncounter SHALL contain exactly one [1..1] location (CONF:1169-33894). This location SHALL contain exactly one [1..1] healthCareFacility (CONF:1169-33895) such that it</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.1-2015-01-29-branch-1169-214-errors" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.13.1' and @extension = '2015-01-29']]/cda:componentOf/cda:encompassingEncounter/cda:encounterParticipant[@typeCode='REF'][cda:assignedEntity]/cda:assignedEntity[empty(@nullFlavor)]">
			<sch:assert id="a-1169-215" test="count(cda:assignedPerson) lt 2">This assignedEntity SHALL contain zero or one [0..1] assignedPerson (CONF:1169-215).</sch:assert>
			<sch:assert id="a-1169-218" test="exists(cda:id[@root='2.16.840.1.113883.4.6' and (exists(@nullFlavor) or matches(@extension, '^\d{10}$'))])">This assignedEntity SHALL contain at least one [1..*] id (CONF:1169-218) such that it If assignedEntity/id is a provider then this id, SHALL include one [1..1] id where id/@root ="2.16.840.1.113883.4.6" National Provider Identifier (CONF:1169-219).</sch:assert>
			<sch:assert id="a-1169-33921" test="count(cda:representedOrganization)=1">This assignedEntity SHALL contain exactly one [1..1] representedOrganization (CONF:1169-33921).</sch:assert>
			<sch:assert id="a-1169-33922" test="count(cda:representedOrganization[exists(cda:id)])=1">This representedOrganization SHALL contain at least one [1..*] id (CONF:1169-33922) such that it</sch:assert>
			<sch:assert id="a-1169-216" test="empty(cda:assignedPerson) or (count(cda:assignedPerson)=1 and count(cda:assignedPerson[count(cda:name)=1])=1)">This assignedPerson SHALL contain exactly one [1..1] US Realm Person Name (PN.US.FIELDED) (identifier: urn:oid:2.16.840.1.113883.10.20.22.5.1.1) (CONF:1169-216).</sch:assert>
			<sch:assert id="a-1169-33925" test="count(cda:representedOrganization[exists(cda:name)])=1">This representedOrganization SHALL contain at least one [1..*] name (CONF:1169-33925).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.1-2015-01-29-branch-1169-33895-errors" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.13.1' and @extension = '2015-01-29']]/cda:componentOf/cda:encompassingEncounter/cda:location/cda:healthCareFacility">
			<sch:assert id="a-1169-33896" test="exists(cda:id[@root='2.16.840.1.113883.4.6' and (exists(@nullFlavor) or matches(@extension, '^\d{10}$'))])">SHALL contain at least one [1..*] id (CONF:1169-33896) such that it SHALL contain exactly one [1..1] @root="2.16.840.1.113883.4.6" National Provider Identifier (CONF:1169-33899).</sch:assert>
			<sch:assert id="a-1169-33897" test="count(cda:serviceProviderOrganization)=1">SHALL contain exactly one [1..1] serviceProviderOrganization (CONF:1169-33897) such that it</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.1-2015-01-29-branch-1169-33897-errors" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.13.1' and @extension = '2015-01-29']]/cda:componentOf/cda:encompassingEncounter/cda:location/cda:healthCareFacility/cda:serviceProviderOrganization">
			<sch:assert id="a-1169-33904" test="exists(cda:addr)">SHALL contain at least one [1..*] US Realm Address (AD.US.FIELDED) (identifier: urn:oid:2.16.840.1.113883.10.20.22.5.2) (CONF:1169-33904).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.1-2015-01-29-branch-1169-32650-errors" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.13.1' and @extension = '2015-01-29']]/cda:component/cda:structuredBody/cda:component/cda:section[cda:templateId[@root='2.16.840.1.113883.10.13.2' and @extension = '2015-02-05']]">
			<sch:assert id="a-1169-33044" test="empty(@nullFlavor)">This section SHALL NOT contain [0..0] @nullFlavor (CONF:1169-33044).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.1-2015-01-29-branch-1169-33229-errors" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.13.1' and @extension = '2015-01-29']]/cda:author[cda:assignedAuthor[cda:assignedPerson]]">
			<sch:assert id="a-1169-33231" test="count(cda:assignedAuthor)=1 and count(cda:assignedAuthor[exists(cda:addr)])=1">This assignedAuthor SHALL contain at least one [1..*] US Realm Address (AD.US.FIELDED) (V2) - Cancer IG Specific Constraints (identifier: urn:oid:2.16.840.1.113883.10.20.22.5.2) (CONF:1169-33231).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.1-2015-01-29-branch-1169-33686-errors" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.13.1' and @extension = '2015-01-29']]/cda:author[cda:assignedAuthor[cda:assignedAuthoringDevice]]">
			<sch:assert id="a-1169-33688" test="count(cda:assignedAuthor[exists(cda:addr)])=1">This assignedAuthor SHALL contain at least one [1..*] US Realm Address (AD.US.FIELDED) (identifier: urn:oid:2.16.840.1.113883.10.20.22.5.2) (CONF:1169-33688).</sch:assert>
			<sch:assert id="a-1169-33726" test="count(cda:assignedAuthor/cda:assignedAuthoringDevice[count(cda:softwareName)=1])=1">This assignedAuthoringDevice SHALL contain exactly one [1..1] softwareName (CONF:1169-33726).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.1-2015-01-29-branch-1169-33234-errors" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.13.1' and @extension = '2015-01-29']]/cda:custodian">
			<sch:assert id="a-1169-33235" test="count(cda:assignedCustodian)=1">This custodian SHALL contain exactly one [1..1] assignedCustodian (CONF:1169-33235).</sch:assert>
			<sch:assert id="a-1169-33236" test="count(cda:assignedCustodian[count(cda:representedCustodianOrganization)=1])=1">This assignedCustodian SHALL contain exactly one [1..1] representedCustodianOrganization (CONF:1169-33236).</sch:assert>
			<sch:assert id="a-1169-33237-c" test="count(cda:assignedCustodian/cda:representedCustodianOrganization[count(cda:addr)=1])=1">This representedCustodianOrganization SHALL contain exactly one [1..1] US Realm Address (AD.US.FIELDED) (identifier: urn:oid:2.16.840.1.113883.10.20.22.5.2) (CONF:1169-33237).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.1-2015-01-29-branch-1169-33905-errors" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.13.1' and @extension = '2015-01-29']]/cda:documentationOf">
			<sch:assert id="a-1169-33906" test="count(cda:serviceEvent)=1">The documentationOf, if present, SHALL contain exactly one [1..1] serviceEvent (CONF:1169-33906).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.1-2015-01-29-branch-1169-33908-errors" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.13.1' and @extension = '2015-01-29']]/cda:documentationOf/cda:serviceEvent/cda:performer/cda:assignedEntity">
			<sch:assert id="a-1169-33909" test="exists(cda:id)">This assignedEntity SHALL contain at least one [1..*] id (CONF:1169-33909) such that it</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.1-2015-01-29-branch-1169-33602-errors" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.13.1' and @extension = '2015-01-29']]/cda:relatedDocument">
			<sch:assert id="a-1169-33604" test="@typeCode='RPLC'">SHALL contain exactly one [1..1] @typeCode="RPLC" replace (CodeSystem:  HL7ActRelationshipType urn:oid:2.16.840.1.113883.5.1002) (CONF:1169-33604).</sch:assert>
			<sch:assert id="a-1169-33603" test="count(../cda:versionNumber[@value=1])=1 or (count(../cda:versionNumber[number(@value) gt 1])=1 and @typeCode='RPLC' and count(cda:parentDocument[count(cda:id[@root])=1 and count(cda:code[empty(@nullFlavor) and @code='72134-0' and @codeSystem='2.16.840.1.113883.6.1' and @codeSystemName='LOINC' and @displayName='Cancer event report'])=1 and count(cda:setId[@root])=1 and count(cda:versionNumber[@value])=1])=1)">If versionNumber/@value is greater than 1, a relatedDocument element SHALL be present where the value of @typeCode SHALL be RPLC (replace) and the value of parentDocument/id SHALL be populated with the ClinicalDocument/id of the document being replaced. In all cases (regardless of the version number), values of APND and XFRM SHALL NOT be used for relatedDocument/@typeCode (CONF:1169-33603).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.1-2015-01-29-branch-1169-34264-errors" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.13.1' and @extension = '2015-01-29']]/cda:componentOf/cda:encompassingEncounter[cda:location]/cda:encounterParticipant[cda:assignedEntity[exists(@nullFlavor)]]">
			<sch:assert id="a-1169-34373" test="count(cda:assignedEntity)=1">SHALL contain exactly one [1..1] assignedEntity (CONF:1169-34373).</sch:assert>
			<sch:assert id="a-1169-34374" test="count(cda:assignedEntity[count(cda:id)=1])=1">This assignedEntity SHALL contain exactly one [1..1] id (CONF:1169-34374).</sch:assert>
			<sch:assert id="a-1169-34375" test="count(cda:assignedEntity[exists(@nullFlavor)])=1">This assignedEntity SHALL contain exactly one [1..1] @nullFlavor, which SHALL be selected from ValueSet NullValues_UNK_NA urn:oid:2.16.840.1.113883.10.20.5.9.2 DYNAMIC (CONF:1169-34375).</sch:assert>
			<sch:assert id="a-1169-34376" test="count(cda:assignedEntity/cda:id[@nullFlavor='NA'])=1">This id SHALL contain exactly one [1..1] @nullFlavor="NA" Not applicable (CONF:1169-34376).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.1-2015-01-29-branch-1169-220-errors" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.13.1' and @extension = '2015-01-29']]/cda:recordTarget">
			<sch:assert id="a-1169-221" test="count(cda:patientRole)=1">Such recordTargets SHALL contain exactly one [1..1] patientRole (CONF:1169-221).</sch:assert>
			<sch:assert id="a-1169-222" test="count(cda:patientRole[count(cda:patient)=1])=1">This patientRole SHALL contain exactly one [1..1] patient (CONF:1169-222).</sch:assert>
			<sch:assert id="a-1169-33542" test="count(cda:patientRole[count(cda:id[@root='2.16.840.1.113883.4.1' and (exists(@nullFlavor) or matches(@extension, '^\d{9}') or matches(@extension, '^\d{3}-\d{2}-\d{4}$'))])=1])=1">This patientRole SHALL contain exactly one [1..1] id (CONF:1169-33542) such that it
Note: This field SHALL be used for Social Security Number (SSN). SHALL contain exactly one [1..1] @root="2.16.840.1.113883.4.1" (CONF:1169-33543).
Note: This root OID is assigning authority for Social Security Number (SSN).</sch:assert>
			<sch:assert id="a-1169-33544" test="count(cda:patientRole[exists(cda:id)])=1">This patientRole SHALL contain at least one [1..*] id (CONF:1169-33544).
Note: This field SHALL be used for Medical Record Number (MRN).</sch:assert>
			<sch:assert id="a-1169-32655-c" test="count(cda:patientRole[exists(cda:addr)])=1">This patientRole SHALL contain at least one [1..*] US Realm Address (AD.US.FIELDED) (V2) - Cancer IG Specific Constraints (identifier: urn:hl7ii:2.16.840.1.113883.10.13.17:2014-08-08) (CONF:1169-32655).
Note: SHALL provide ALL addresses for that patient over time. In other words, ALL historical and current addresses where patient has or is residing SHALL be provided.  Note: The intent of this requirement is for the EHR system to have the capability to capture addresses over time when reported. Physicians are not expected to obtain an address history during the patient visit/encounter.</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.1-2015-01-29-patientName-1169-33034-errors" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.13.1' and @extension = '2015-01-29']]/cda:recordTarget/cda:patientRole/cda:patient/cda:name">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.18-2014-08-08-errors-abstract"/>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.1-2015-01-29-addr-1169-33237-errors" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.13.1' and @extension = '2015-01-29']]/cda:custodian/cda:assignedCustodian/cda:representedCustodianOrganization/cda:addr"> 
			<sch:extends rule="r-urn-oid-2.16.840.1.113883.10.20.22.5.2-errors-abstract"/>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.1-2015-01-29-addr-1169-32655-errors" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.13.1' and @extension = '2015-01-29']]/cda:recordTarget/cda:patientRole/cda:addr">
					<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.17-2014-08-08-errors-abstract"/>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.1-2015-01-29-personName-1169-33916-errors" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.13.1' and @extension = '2015-01-29']]/cda:documentationOf/cda:serviceEvent/cda:performer/cda:assignedEntity/cda:assignedPerson/cda:name"> 
			<sch:extends rule="r-urn-oid-2.16.840.1.113883.10.20.22.5.1.1-errors-abstract"/>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.1-2015-01-29-personName-1169-216-errors" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.13.1' and @extension = '2015-01-29']]/cda:componentOf/cda:encompassingEncounter/cda:encounterParticipant[@typeCode='REF'][cda:assignedEntity]/cda:assignedEntity/cda:assignedPerson/cda:name"> 
			<sch:extends rule="r-urn-oid-2.16.840.1.113883.10.20.22.5.1.1-errors-abstract"/>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.1-2015-01-29-addr-1169-33914-errors" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.13.1' and @extension = '2015-01-29']]/cda:documentationOf/cda:serviceEvent/cda:performer/cda:assignedEntity/cda:addr"> 
			<sch:extends rule="r-urn-oid-2.16.840.1.113883.10.20.22.5.2-errors-abstract"/>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.1-2015-01-29-addr-1169-33231-errors" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.13.1' and @extension = '2015-01-29']]/cda:author/cda:assignedAuthor[cda:assignedPerson]/cda:addr">
					<sch:extends rule="r-urn-oid-2.16.840.1.113883.10.20.22.5.2-errors-abstract"/>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.1-2015-01-29-addr-1169-33688-errors" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.13.1' and @extension = '2015-01-29']]/cda:author[cda:assignedAuthor[cda:assignedAuthoringDevice]]/cda:addr"> 
			<sch:extends rule="r-urn-oid-2.16.840.1.113883.10.20.22.5.2-errors-abstract"/>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.1-2015-01-29-addr-1169-33919-errors" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.13.1' and @extension = '2015-01-29']]/cda:componentOf/cda:encompassingEncounter/cda:encounterParticipant[@typeCode='REF'][cda:assignedEntity]/cda:assignedEntity/cda:addr"> 
			<sch:extends rule="r-urn-oid-2.16.840.1.113883.10.20.22.5.2-errors-abstract"/>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.1-2015-01-29-addr-1169-33926-errors" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.13.1' and @extension = '2015-01-29']]/cda:componentOf/cda:encompassingEncounter/cda:encounterParticipant[@typeCode='REF'][cda:assignedEntity]/cda:assignedEntity/cda:representedOrganization/cda:addr"> 
			<sch:extends rule="r-urn-oid-2.16.840.1.113883.10.20.22.5.2-errors-abstract"/>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.1-2015-01-29-addr-1169-33904-errors" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.13.1' and @extension = '2015-01-29']]/cda:componentOf/cda:encompassingEncounter/cda:location/cda:healthCareFacility/cda:serviceProviderOrganization/cda:addr"> 
			<sch:extends rule="r-urn-oid-2.16.840.1.113883.10.20.22.5.2-errors-abstract"/>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.1-2015-01-29-branch-1169-32648-errors" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.13.1' and @extension = '2015-01-29']]/cda:component/cda:structuredBody"> 
			<sch:assert id="a-1169-32649" test="count(cda:component[empty(@nullFlavor) and count(cda:section[cda:templateId[@root='2.16.840.1.113883.10.13.2' and @extension = '2015-02-05']])=1])=1">This structuredBody SHALL contain exactly one [1..1] component (CONF:1169-32649) such that it SHALL NOT contain [0..0] @nullFlavor (CONF:1169-33043). SHALL contain exactly one [1..1] Cancer Diagnosis Section (entries required) (V1.1) (identifier: urn:hl7ii:2.16.840.1.113883.10.13.2:2015-02-05) (CONF:1169-32650).</sch:assert>
			<sch:assert id="a-1169-32658" test="count(cda:component[count(cda:section[cda:templateId[@root='2.16.840.1.113883.10.13.21' and @extension = '2014-08-08']])=1])=1">This structuredBody SHALL contain exactly one [1..1] component (CONF:1169-32658) such that it SHALL contain exactly one [1..1] Problem Section (entries required) (V2) - Cancer IG Specific Constraints (identifier: urn:hl7ii:2.16.840.1.113883.10.13.21:2014-08-08) (CONF:1169-32659).</sch:assert>
			<sch:assert id="a-1169-32660" test="count(cda:component[count(cda:section[cda:templateId[@root='2.16.840.1.113883.10.13.9' and @extension = '2014-08-08']])=1])=1">This structuredBody SHALL contain exactly one [1..1] component (CONF:1169-32660) such that it SHALL contain exactly one [1..1] Plan of Treatment Section (V2) - Cancer IG Specific Constraints (identifier: urn:hl7ii:2.16.840.1.113883.10.13.9:2014-08-08) (CONF:1169-32661).</sch:assert>
			<sch:assert id="a-1169-32668" test="count(cda:component[count(cda:section[cda:templateId[@root='2.16.840.1.113883.10.20.22.2.18' and @extension = '2014-06-09']])=1])=1">This structuredBody SHALL contain exactly one [1..1] component (CONF:1169-32668) such that it SHALL contain exactly one [1..1] Payers Section (V2) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.2.18:2014-06-09) (CONF:1169-32669).</sch:assert>
			<sch:assert id="a-1169-32670" test="count(cda:component[count(cda:section[cda:templateId[@root='2.16.840.1.113883.10.13.13' and @extension = '2014-08-08']])=1])=1">This structuredBody SHALL contain exactly one [1..1] component (CONF:1169-32670) such that it SHALL contain exactly one [1..1] Medications Section (entries required) (V2) - Cancer IG Specific Constraints (identifier: urn:hl7ii:2.16.840.1.113883.10.13.13:2014-08-08) (CONF:1169-32671).</sch:assert>
			<sch:assert id="a-1169-32674" test="count(cda:component[count(cda:section[cda:templateId[@root='2.16.840.1.113883.10.13.12' and @extension = '2014-08-08']])=1])=1">This structuredBody SHALL contain exactly one [1..1] component (CONF:1169-32674) such that it SHALL contain exactly one [1..1] Medications Administered Section (V2) - Cancer IG Specific Constraints (identifier: urn:hl7ii:2.16.840.1.113883.10.13.12:2014-08-08) (CONF:1169-32675).</sch:assert>
			<sch:assert id="a-1169-32720" test="count(cda:component[count(cda:section[cda:templateId[@root='2.16.840.1.113883.10.20.22.2.15' and @extension = '2014-06-09']])=1])=1">This structuredBody SHALL contain exactly one [1..1] component (CONF:1169-32720) such that it SHALL contain exactly one [1..1] Family History Section (V2) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.2.15:2014-06-09) (CONF:1169-32721).</sch:assert>
			<sch:assert id="a-1169-33045" test="count(cda:component[count(cda:section[cda:templateId[@root='2.16.840.1.113883.10.13.10' and @extension = '2014-08-08']])=1])=1">This structuredBody SHALL contain exactly one [1..1] component (CONF:1169-33045) such that it SHALL contain exactly one [1..1] Procedures Section (entries required) (V2) - Cancer IG Specific Constraints (identifier: urn:hl7ii:2.16.840.1.113883.10.13.10:2014-08-08) (CONF:1169-33046).</sch:assert>
			<sch:assert id="a-1169-33047" test="count(cda:component[count(cda:section[cda:templateId[@root='2.16.840.1.113883.10.20.22.2.3.1' and @extension = '2014-06-09']])=1])=1">This structuredBody SHALL contain exactly one [1..1] component (CONF:1169-33047) such that it SHALL contain exactly one [1..1] Results Section (entries required) (V2) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.2.3.1:2014-06-09) (CONF:1169-33048).</sch:assert>
			<sch:assert id="a-1169-33049" test="count(cda:component[count(cda:section[cda:templateId[@root='2.16.840.1.113883.10.13.11' and @extension = '2015-01-29']])=1])=1">This structuredBody SHALL contain exactly one [1..1] component (CONF:1169-33049) such that it SHALL contain exactly one [1..1] Social History Section (V2) - Cancer IG Specific Constraints (V1.1) (identifier: urn:hl7ii:2.16.840.1.113883.10.13.11:2015-01-29) (CONF:1169-33050).</sch:assert>
			<sch:assert id="a-1169-33051" test="count(cda:component[count(cda:section[cda:templateId[@root='2.16.840.1.113883.10.20.22.2.4.1' and @extension = '2014-06-09']])=1])=1">This structuredBody SHALL contain exactly one [1..1] component (CONF:1169-33051) such that it SHALL contain exactly one [1..1] Vital Signs Section (entries required) (V2) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.2.4.1:2014-06-09) (CONF:1169-33052).</sch:assert>
			<sch:assert id="a-1169-33701" test="count(cda:component[count(cda:section[cda:templateId[@root='2.16.840.1.113883.10.20.22.2.8']])=1])=1">This structuredBody SHALL contain exactly one [1..1] component (CONF:1169-33701) such that it SHALL contain exactly one [1..1] Assessment Section (identifier: urn:oid:2.16.840.1.113883.10.20.22.2.8) (CONF:1169-33702).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.1-2015-01-29-branch-1169-222-errors" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.13.1' and @extension = '2015-01-29']]/cda:recordTarget/cda:patientRole/cda:patient">
			<sch:assert id="a-1169-223" test="count(cda:birthplace)=1">This patient SHALL contain exactly one [1..1] birthplace (CONF:1169-223).</sch:assert>
			<sch:assert id="a-1169-33034-c" test="exists(cda:name[empty(@nullFlavor)])">This patient SHALL contain at least one [1..*] US Realm Patient Name (PTN.US.FIELDED) - Cancer IG Specific Constraints  (identifier: urn:hl7ii:2.16.840.1.113883.10.13.18:2014-08-08) (CONF:1169-33034) such that it SHALL NOT contain [0..0] @nullFlavor (CONF:1169-33035).</sch:assert>
			<sch:assert id="a-1169-33037" test="count(cda:administrativeGenderCode)=1 and count(cda:administrativeGenderCode[empty(@nullFlavor)])=1">This patient SHALL contain exactly one [1..1] administrativeGenderCode (CONF:1169-33037). This administrativeGenderCode SHALL NOT contain [0..0] @nullFlavor (CONF:1169-33038).</sch:assert>
			<sch:assert id="a-1169-33039" test="count(cda:birthTime)=1 and count(cda:birthTime[empty(@nullFlavor)])=1 and string-length(cda:birthTime/@value)=8">This patient SHALL contain exactly one [1..1] birthTime (CONF:1169-33039). This birthTime SHALL NOT contain [0..0] @nullFlavor (CONF:1169-33040). SHALL be precise to day (CONF:1169-33041).</sch:assert>
			<sch:assert id="a-1169-33243-c" test="count(cda:maritalStatusCode)=1 and count(cda:maritalStatusCode[exists(@nullFlavor) or (@codeSystem='2.16.840.1.113883.5.2' and @code=document('voc.xml')/voc:systems/voc:system[@valueSetOid='2.16.840.1.113883.1.11.12212']/voc:code/@value)])=1">This patient SHALL contain exactly one [1..1] maritalStatusCode, which SHALL be selected from ValueSet Marital Status urn:oid:2.16.840.1.113883.1.11.12212 (CONF:1169-33243).</sch:assert>
			<sch:assert id="a-1169-33605-c" test="count(sdtc:raceCode) ge 1">This patient SHALL contain at least one [1..*] sdtc:raceCode, which SHALL be selected from ValueSet Race urn:oid:2.16.840.1.113883.1.11.14914 (CONF:1169-33605).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.1-2015-01-29-branch-1169-223-errors" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.13.1' and @extension = '2015-01-29']]/cda:recordTarget/cda:patientRole/cda:patient/cda:birthplace">
			<sch:assert id="a-1169-225" test="count(cda:place)=1">This birthplace SHALL contain exactly one [1..1] place (CONF:1169-225).</sch:assert>
			<sch:assert id="a-1169-226" test="count(cda:place[count(cda:addr)=1])=1">This place SHALL contain exactly one [1..1] addr (CONF:1169-226).</sch:assert>
			<sch:assert id="a-1169-227" test="count(cda:place/cda:addr[count(cda:country)=1])=1">This addr SHALL contain exactly one [1..1] country (CONF:1169-227).
Note: Use nullFlavor when the patients birth country is not known.</sch:assert>
			<sch:assert id="a-1169-228" test="count(cda:place/cda:addr[count(cda:state)=1])=1">This addr SHALL contain exactly one [1..1] state (CONF:1169-228).
Note: Use nullFlavor when the patients birth state is not known.</sch:assert>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.13.35-2015-02-05-errors">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.35-2015-02-05-errors-abstract" abstract="true">
			<sch:assert id="a-1169-34047" test="@classCode='OBS'">SHALL contain exactly one [1..1] @classCode="OBS" Observation (CodeSystem: HL7ActClass urn:oid:2.16.840.1.113883.5.6) (CONF:1169-34047).</sch:assert>
			<sch:assert id="a-1169-34048" test="@moodCode='EVN'">SHALL contain exactly one [1..1] @moodCode="EVN" Event (CodeSystem: ActMood urn:oid:2.16.840.1.113883.5.1001) (CONF:1169-34048).</sch:assert>
			<sch:assert id="a-1169-34049" test="count(cda:code)=1 and count(cda:code[empty(@nullFlavor) and @code='21908-9' and @codeSystem='2.16.840.1.113883.6.1'])=1">SHALL contain exactly one [1..1] code (CONF:1169-34049). This code SHALL contain exactly one [1..1] @code="21908-9" Stage group.clinical (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:1169-34050). This code SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.6.1" (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:1169-34051).</sch:assert>
			<sch:assert id="a-1169-34052" test="count(cda:statusCode)=1 and count(cda:statusCode[empty(@nullFlavor) and @code='completed'])=1">SHALL contain exactly one [1..1] statusCode (CONF:1169-34052). This statusCode SHALL contain exactly one [1..1] @code="completed" Completed (CodeSystem: ActStatus urn:oid:2.16.840.1.113883.5.14) (CONF:1169-34053).</sch:assert>
			<sch:assert id="a-1169-34054" test="count(cda:value[@xsi:type='CD'])=1">SHALL contain exactly one [1..1] value with @xsi:type="CD" (CONF:1169-34054).</sch:assert>
			<sch:assert id="a-1169-34071" test="count(cda:entryRelationship[@typeCode='COMP'][count(cda:observation[cda:templateId[@root='2.16.840.1.113883.10.13.36' and @extension = '2015-02-05']])=1])=1">SHALL contain exactly one [1..1] entryRelationship (CONF:1169-34071) such that it
Note: This entryRelationship provides information on the TNM Clinical Stage Tumor (T). SHALL contain exactly one [1..1] @typeCode="COMP" Component (CodeSystem: HL7ActRelationshipType urn:oid:2.16.840.1.113883.5.1002) (CONF:1169-34072). SHALL contain exactly one [1..1] Primary Tumor Clinical (identifier: urn:hl7ii:2.16.840.1.113883.10.13.36:2015-02-05) (CONF:1169-34073).</sch:assert>
			<sch:assert id="a-1169-34090" test="count(cda:entryRelationship[@typeCode='COMP'][count(cda:observation[cda:templateId[@root='2.16.840.1.113883.10.13.37' and @extension = '2015-02-05']])=1])=1">SHALL contain exactly one [1..1] entryRelationship (CONF:1169-34090) such that it
Note: This entryRelationship provides information on the TNM Clinical Stage Node (N). SHALL contain exactly one [1..1] @typeCode="COMP" Component (CodeSystem: HL7ActRelationshipType urn:oid:2.16.840.1.113883.5.1002) (CONF:1169-34091). SHALL contain exactly one [1..1] Regional Lymph Nodes Clinical (identifier: urn:hl7ii:2.16.840.1.113883.10.13.37:2015-02-05) (CONF:1169-34092).</sch:assert>
			<sch:assert id="a-1169-34093" test="count(cda:entryRelationship[@typeCode='COMP'][count(cda:observation[cda:templateId[@root='2.16.840.1.113883.10.13.38' and @extension = '2015-02-05']])=1])=1">SHALL contain exactly one [1..1] entryRelationship (CONF:1169-34093) such that it
Note: This entryRelationship provides information on the TNM Clinical Stage Metastasis (M). SHALL contain exactly one [1..1] @typeCode="COMP" Component (CodeSystem: HL7ActRelationshipType urn:oid:2.16.840.1.113883.5.1002) (CONF:1169-34094). SHALL contain exactly one [1..1] Distant Metastases Clinical (identifier: urn:hl7ii:2.16.840.1.113883.10.13.38:2015-02-05) (CONF:1169-34097).</sch:assert>
			<sch:assert id="a-1169-34095" test="count(cda:entryRelationship[@typeCode='COMP'][count(cda:observation[cda:templateId[@root='2.16.840.1.113883.10.13.39' and @extension = '2015-02-05']])=1])=1">SHALL contain exactly one [1..1] entryRelationship (CONF:1169-34095) such that it
Note: Identifies the role of the person who recorded the staging elements. SHALL contain exactly one [1..1] @typeCode="COMP" Component (CodeSystem: HL7ActRelationshipType urn:oid:2.16.840.1.113883.5.1002) (CONF:1169-34096). SHALL contain exactly one [1..1] Stager Clinical Cancer (identifier: urn:hl7ii:2.16.840.1.113883.10.13.39:2015-02-05) (CONF:1169-34098).</sch:assert>
			<sch:assert id="a-1169-34254" test="count(cda:templateId[@root='2.16.840.1.113883.10.13.35'][@extension='2015-02-05'])=1">SHALL contain exactly one [1..1] templateId (CONF:1169-34254) such that it SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.13.35" (CONF:1169-34255). SHALL contain exactly one [1..1] @extension="2015-02-05" (CONF:1169-34256).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.35-2015-02-05-errors" context="cda:observation[cda:templateId[@root='2.16.840.1.113883.10.13.35' and @extension = '2015-02-05']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.35-2015-02-05-errors-abstract"/>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.35-2015-02-05-branch-1169-34054-errors" context="cda:observation[cda:templateId[@root='2.16.840.1.113883.10.13.35' and @extension = '2015-02-05']]/cda:value[@xsi:type='CD']">
			<sch:let name="origTextValue" value="cda:originalText/cda:reference/@value"/>

			<!--8/21/2019-->
			<sch:assert id="a-1169-34055" test="(@sdtc:valueSet='2.16.840.1.113883.3.520.4.9' and @code=document('voc.xml')/voc:systems/voc:system[@valueSetOid='2.16.840.1.113883.3.520.4.9']/voc:code/@value) or (@sdtc:valueSet='2.16.840.1.113883.3.520.4.30' and @code=document('voc.xml')/voc:systems/voc:system[@valueSetOid='2.16.840.1.113883.3.520.4.30']/voc:code/@value)">This value SHALL contain exactly one [1..1] @code, which SHALL be selected from:(a) ValueSet TNM Clinical Stage Group 7th Edition(urn:oid:2.16.840.1.113883.3.520.4.9) DYNAMIC or (b)ValueSet TNM Clinical Stage Group 8th Edition (urn:oid:2.16.840.1.113883.3.520.4.30 DYNAMI(CONF:1169-34055).</sch:assert>
			<sch:assert id="a-1169-34056" test="@codeSystem='2.16.840.1.113883.15.6' or @codeSystem='2.16.840.1.113883.3.520.3.18'">This value SHALL contain exactly one [1..1] @codeSystem. The @codeSystem associated with the code for TNM Clinical Stage Group SHALL be selected from: (a)TNM 7. Edition (CodeSystem: urn:oid:2.16.840.1.113883.15.6) or (b) TNM 8. Edition (Code System: urn:oid:2.16.840.1.113883.3.520.3.18)(CONF:1169-34056).</sch:assert>
			<sch:assert id="a-1169-34057" test="@sdtc:valueSet='2.16.840.1.113883.3.520.4.9' or @sdtc:valueSet='2.16.840.1.113883.3.520.4.30'">This value SHALL contain exactly one [1..1] @sdtc:valueSet. The @sdtc:valueSet associated with the code for TNM Clinical Stage Group SHALL be selected from:(a)  "Value Set O ID2.16.840.1.113883.3.520.4.9" (CodeSystem: TNM 7. Edition urn:oid:2.16.840.1.113883.15.6) or (b)  "Value Set OID 2.16.840.1.113883.3.520.4.30" (Code System: TNM 8. Edition urn:oid:2.16.840.1.113883.3.520.3.18) (CONF:1169-34057).</sch:assert>
			<sch:assert id="a-1169-34061-c" test="empty(cda:originalText/cda:reference[@value]) or (count($origTextValue)=1 and starts-with($origTextValue, '#') and count(//*[@ID=substring($origTextValue, 2)])=1)">This reference/@value SHALL begin with a '#' and SHALL point to its corresponding narrative (using the approach defined in CDA Release 2, section 4.3.5.1) (CONF:1169-34061).</sch:assert>
			<sch:assert id="a-1169-34062" test="count(cda:qualifier)=1">This value SHALL contain exactly one [1..1] qualifier (CONF:1169-34062).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.35-2015-02-05-branch-1169-34062-errors" context="cda:observation[cda:templateId[@root='2.16.840.1.113883.10.13.35' and @extension = '2015-02-05']]/cda:value[@xsi:type='CD']/cda:qualifier">
			<sch:let name="origTextValue" value="cda:value/cda:originalText/cda:reference/@value"/>
			<sch:assert id="a-1169-34063" test="count(cda:name)=1 and count(cda:name[empty(@nullFlavor) and @code='21909-7' and @codeSystem='2.16.840.1.113883.6.1'])=1">This qualifier SHALL contain exactly one [1..1] name (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:1169-34063). This name SHALL contain exactly one [1..1] @code="21909-7" Descriptor.clinical Cancer Narrative (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:1169-34064). This name SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.6.1" (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:1169-34065).</sch:assert>
			<sch:assert id="a-1169-34066" test="count(cda:value)=1 and count(cda:value[empty(@nullFlavor) and exists(@code) and @code=document('voc.xml')/voc:systems/voc:system[@valueSetOid='2.16.840.1.113883.3.520.4.10']/voc:code/@value and @codeSystem='2.16.840.1.113883.15.6' and @sdtc:valueSet='2.16.840.1.113883.3.520.4.10'])=1">This qualifier SHALL contain exactly one [1..1] value (CONF:1169-34066).
This value SHALL contain exactly one [1..1] @code, which SHALL be selected from ValueSet TNM Clinical Stage Descriptor urn:oid:2.16.840.1.113883.3.520.4.10 DYNAMIC (CONF:1169-34067). This value SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.15.6" (CodeSystem: TNM 7. Edition urn:oid:2.16.840.1.113883.15.6) (CONF:1169-34068). This value SHALL contain exactly one [1..1] @sdtc:valueSet="2.16.840.1.113883.3.520.4.10" (CodeSystem: TNM 7. Edition urn:oid:2.16.840.1.113883.15.6) (CONF:1169-34070).</sch:assert>
			<sch:assert id="a-1169-34260-c" test="empty(cda:value/cda:originalText/cda:reference[@value]) or (count($origTextValue)=1 and starts-with($origTextValue, '#') and count(//*[@ID=substring($origTextValue, 2)])=1)">This reference/@value SHALL begin with a '#' and SHALL point to its corresponding narrative (using the approach defined in CDA Release 2, section 4.3.5.1) (CONF:1169-34260).</sch:assert>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.13.5-2015-02-05-errors">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.5-2015-02-05-errors-abstract" abstract="true">
			<sch:assert id="a-1169-32498" test="count(cda:statusCode)=1 and count(cda:statusCode[empty(@nullFlavor) and @code='completed'])=1">SHALL contain exactly one [1..1] statusCode (CodeSystem: ActStatus urn:oid:2.16.840.1.113883.5.14 STATIC) (CONF:1169-32498). This statusCode SHALL contain exactly one [1..1] @code="completed" Completed (CodeSystem: ActStatus urn:oid:2.16.840.1.113883.5.14 STATIC) (CONF:1169-32512).</sch:assert>
			<sch:assert id="a-1169-32499" test="count(cda:effectiveTime)=1">SHALL contain exactly one [1..1] effectiveTime (CONF:1169-32499).</sch:assert>
			<sch:assert id="a-1169-32513" test="count(cda:effectiveTime[count(cda:low)=1])=1">The effectiveTime/low documents when detailed site-specific information on the progression of disease for the cancer/tumor was recorded. This effectiveTime SHALL contain exactly one [1..1] low (CONF:1169-32513).</sch:assert>
			<sch:assert id="a-1169-32510" test="count(cda:code)=1 and count(cda:code[empty(@nullFlavor) and @code='75620-5' and @codeSystem='2.16.840.1.113883.6.1'])=1">SHALL contain exactly one [1..1] code (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:1169-32510). This code SHALL contain exactly one [1..1] @code="75620-5" TNM clinical staging before treatment panel Cancer (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:1169-33659). This code SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.6.1" (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:1169-33660).</sch:assert>
			<sch:assert id="a-1169-33399" test="count(cda:entryRelationship)=1 and count(cda:entryRelationship[@typeCode='COMP'][count(cda:observation[cda:templateId[@root='2.16.840.1.113883.10.13.35' and @extension = '2015-02-05']])=1])=1">SHALL contain exactly one [1..1] entryRelationship (CONF:1169-33399).
Note: This entryRelationship provides information on the TNM Clinical Stage Group. This entryRelationship SHALL contain exactly one [1..1] @typeCode="COMP" Component (CodeSystem: HL7ActRelationshipType urn:oid:2.16.840.1.113883.5.1002) (CONF:1169-33470). This entryRelationship SHALL contain exactly one [1..1] TNM Clinical Stage Group (identifier: urn:hl7ii:2.16.840.1.113883.10.13.35:2015-02-05) (CONF:1169-33400).</sch:assert>
			<sch:assert id="a-1169-32505" test="@classCode='OBS'">SHALL contain exactly one [1..1] @classCode="OBS" Observation (CodeSystem: HL7ActClass urn:oid:2.16.840.1.113883.5.6 STATIC) (CONF:1169-32505).</sch:assert>
			<sch:assert id="a-1169-32506" test="@moodCode='EVN'">SHALL contain exactly one [1..1] @moodCode="EVN" Event (CodeSystem: ActMood urn:oid:2.16.840.1.113883.5.1001 STATIC) (CONF:1169-32506).</sch:assert>
			<sch:assert id="a-1169-32509" test="exists(cda:id)">SHALL contain at least one [1..*] id (CONF:1169-32509).</sch:assert>
			<sch:assert id="a-1169-33188" test="empty(@nullFlavor)">SHALL NOT contain [0..0] @nullFlavor (CONF:1169-33188).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.5-2015-02-05-errors" context="cda:observation[cda:templateId[@root='2.16.840.1.113883.10.13.5' and @extension = '2015-02-05']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.5-2015-02-05-errors-abstract"/>
			<sch:assert id="a-1169-32494" test="count(cda:templateId[@root='2.16.840.1.113883.10.13.5'][@extension='2015-02-05'])=1">SHALL contain exactly one [1..1] templateId (CONF:1169-32494) such that it SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.13.5" (CONF:1169-32508). SHALL contain exactly one [1..1] @extension="2015-02-05" (CONF:1169-33976).</sch:assert>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.13.2-2015-02-05-errors">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.2-2015-02-05-errors-abstract" abstract="true">
			<sch:assert id="a-1169-253" test="exists(cda:entry[empty(@nullFlavor)][count(cda:act[cda:templateId[@root='2.16.840.1.113883.10.13.3' and @extension = '2015-02-05']])=1])">SHALL contain at least one [1..*] entry (CONF:1169-253) such that it SHALL NOT contain [0..0] @nullFlavor (CONF:1169-33244).
SHALL contain exactly one [1..1] Cancer Diagnosis Concern Act (V1.1) (identifier: urn:hl7ii:2.16.840.1.113883.10.13.3:2015-02-05) (CONF:1169-257).</sch:assert>
			<sch:assert id="a-1169-255" test="count(cda:code)=1 and count(cda:code[empty(@nullFlavor) and @code='72135-7' and @codeSystem='2.16.840.1.113883.6.1'])=1">SHALL contain exactly one [1..1] code (CONF:1169-255). This code SHALL contain exactly one [1..1] @code="72135-7" Cancer diagnosis (CONF:1169-259). This code SHALL contain exactly one [1..1]  @codeSystem="2.16.840.1.113883.6.1" (CONF:1169-260).</sch:assert>
			<sch:assert id="a-1169-261" test="count(cda:title)=1">SHALL contain exactly one [1..1] title (CONF:1169-261).</sch:assert>
			<sch:assert id="a-1169-262" test="count(cda:text)=1">SHALL contain exactly one [1..1] text (CONF:1169-262).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.2-2015-02-05-errors" context="cda:section[cda:templateId[@root='2.16.840.1.113883.10.13.2' and @extension = '2015-02-05']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.2-2015-02-05-errors-abstract"/>
			<sch:assert id="a-1169-254" test="count(cda:templateId[@root='2.16.840.1.113883.10.13.2'][@extension='2015-02-05'])=1">SHALL contain exactly one [1..1] templateId (CONF:1169-254) such that it SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.13.2" (CONF:1169-258). SHALL contain exactly one [1..1] @extension="2015-02-05" (CONF:1169-33947).</sch:assert>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.13.3-2015-02-05-errors">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.3-2015-02-05-errors-abstract" abstract="true">
			<sch:assert id="a-1169-32420" test="exists(cda:entryRelationship[@typeCode='SUBJ'][count(cda:observation[cda:templateId[@root='2.16.840.1.113883.10.13.4' and @extension = '2015-02-05']])=1])">SHALL contain at least one [1..*] entryRelationship (CONF:1169-32420) such that it SHALL contain exactly one [1..1] Cancer Diagnosis Observation (V1.1) (identifier: urn:hl7ii:2.16.840.1.113883.10.13.4:2015-02-05) (CONF:1169-32426). SHALL contain exactly one [1..1] @typeCode="SUBJ" Has subject (CodeSystem: HL7ActRelationshipType urn:oid:2.16.840.1.113883.5.1002 STATIC) (CONF:1169-32436).</sch:assert>
			<sch:assert id="a-1169-32422" test="count(cda:code)=1 and count(cda:code[empty(@nullFlavor) and @code='CONC' and @codeSystem='2.16.840.1.113883.5.6'])=1">SHALL contain exactly one [1..1] code (CONF:1169-32422). This code SHALL contain exactly one [1..1] @code="CONC" Concern (CONF:1169-32431). This code SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.5.6" (CodeSystem: HL7ActClass urn:oid:2.16.840.1.113883.5.6) (CONF:1169-32432).</sch:assert>
			<sch:assert id="a-1169-32423" test="count(cda:statusCode)=1">SHALL contain exactly one [1..1] statusCode (CONF:1169-32423).</sch:assert>
			<sch:assert id="a-1169-32433" test="count(cda:statusCode[@code=document('voc.xml')/voc:systems/voc:system[@valueSetOid='2.16.840.1.113883.11.20.9.19']/voc:code/@value])=1">This statusCode SHALL contain exactly one [1..1] @code, which SHALL be selected from ValueSet ProblemAct statusCode urn:oid:2.16.840.1.113883.11.20.9.19 STATIC (CONF:1169-32433).</sch:assert>
			<sch:assert id="a-1169-32424" test="count(cda:effectiveTime)=1">SHALL contain exactly one [1..1] effectiveTime (CONF:1169-32424).</sch:assert>
			<sch:assert id="a-1169-32435" test="(count(cda:statusCode[empty(@nullFlavor) and @code='completed'])=1 and count(cda:effectiveTime[count(cda:high)=1])=1) or (count(cda:statusCode[@code !='completed'])=1 and count(cda:effectiveTime[empty(cda:high)])=1)">This effectiveTime SHALL contain zero or one [0..1] high (CONF:1169-32435).
Note: The effectiveTime/high asserts when the concern was completed (e.g. when the clinician deemed there is no longer any need to track the underlying condition). This element SHALL be present when statusCode="completed" and SHALL not be present otherwise.</sch:assert>
			<sch:assert id="a-1169-32434" test="count(cda:effectiveTime[count(cda:low)=1])=1">This effectiveTime SHALL contain exactly one [1..1] low (CONF:1169-32434).
Note: The effectiveTime/low asserts when the concern became active. This equates to the time the concern was authored in the patient's chart. </sch:assert>
			<sch:assert id="a-1169-32427" test="@classCode='ACT'">SHALL contain exactly one [1..1] @classCode="ACT" Act (CodeSystem: HL7ActClass urn:oid:2.16.840.1.113883.5.6 STATIC) (CONF:1169-32427).</sch:assert>
			<sch:assert id="a-1169-32428" test="@moodCode='EVN'">SHALL contain exactly one [1..1] @moodCode="EVN" Event (CodeSystem: ActMood urn:oid:2.16.840.1.113883.5.1001 STATIC) (CONF:1169-32428).</sch:assert>
			<sch:assert id="a-1169-32430" test="exists(cda:id)">SHALL contain at least one [1..*] id (CONF:1169-32430).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.3-2015-02-05-errors" context="cda:act[cda:templateId[@root='2.16.840.1.113883.10.13.3' and @extension = '2015-02-05']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.3-2015-02-05-errors-abstract"/>
			<sch:assert id="a-1169-32421" test="count(cda:templateId[@root='2.16.840.1.113883.10.13.3'][@extension='2015-02-05'])=1">SHALL contain exactly one [1..1] templateId (CONF:1169-32421) such that it SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.13.3" (CONF:1169-32429). SHALL contain exactly one [1..1] @extension="2015-02-05" (CONF:1169-33955).</sch:assert>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.13.4-2015-02-05-errors">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.4-2015-02-05-errors-abstract" abstract="true">
			<sch:let name="textRefValue" value="cda:text/cda:reference/@value"/>
			<sch:assert id="a-1169-32440-c" test="count(cda:entryRelationship[empty(@nullFlavor)][@typeCode='SUBJ'][@inversionInd='true']/cda:observation/cda:templateId[@root='2.16.840.1.113883.10.13.5' or @root='2.16.840.1.113883.10.13.31'])=1">SHALL contain exactly one [1..1] entryRelationship (CONF:1169-32440) such that it
SHALL NOT contain [0..0] @nullFlavor (CONF:1169-33186). SHALL contain exactly one [1..1] @typeCode="SUBJ" Has subject (CodeSystem: HL7ActRelationshipType urn:oid:2.16.840.1.113883.5.1002 STATIC) (CONF:1169-32465). SHALL contain exactly one [1..1] @inversionInd="true" True (CONF:1169-32466). This entryRelationship SHALL contain either
SHALL contain exactly one [1..1] TNM Clinical Stage Observation (V1.1) (identifier: urn:hl7ii:2.16.840.1.113883.10.13.5:2015-02-05) (CONF:1169-32451).
SHALL contain exactly one [1..1] No Known TNM Clinical Stage Observation (V1.1) (identifier: urn:hl7ii:2.16.840.1.113883.10.13.31:2015-04-02) (CONF:1169-34365).</sch:assert>
			<sch:assert id="a-1169-32444" test="empty(cda:text/cda:reference) or (count(cda:text/cda:reference)=1 and count(cda:text/cda:reference[@value])=1)">The reference, if present, SHALL contain exactly one [1..1] @value (CONF:1169-32444).</sch:assert>
			<sch:assert id="a-1169-32445" test="count(cda:statusCode)=1 and count(cda:statusCode[empty(@nullFlavor) and @code='completed'])=1">SHALL contain exactly one [1..1] statusCode (CONF:1169-32445). This statusCode SHALL contain exactly one [1..1] @code="completed" Completed (CodeSystem: ActStatus urn:oid:2.16.840.1.113883.5.14 STATIC) (CONF:1169-32459).</sch:assert>
			<sch:assert id="a-1169-32446" test="count(cda:effectiveTime)=1">SHALL contain exactly one [1..1] effectiveTime (CONF:1169-32446).
Note: Records the date of initial diagnosis by a recognized medical practitioner for the cancer being reported.</sch:assert>
			<sch:assert id="a-1169-32447" test="count(cda:value[@xsi:type='CD' and empty(@nullFlavor) and exists(@code) and exists(@displayName) and exists(@codeSystem)])=1 or count(cda:value[@xsi:type='CD' and exists(@nullFlavor) and empty(@code) and empty(@displayName) and empty(@codeSystem)]/cda:originalText)=1">SHALL contain exactly one [1..1] value with @xsi:type="CD" (CONF:1169-32447).
Note: The value records the histologic type (or cell type) of a malignant tumor (e.g., carcinoma, melanoma, sarcoma, lymphoma, leukemia). Histologic tumor type SHOULD be encoded and selected from one of the following coding systems: ICD-O-3, ICD-9-CM Appendix A, ICD-10-CM, SNOMED CT. If the code for histologic tumor type cannot be found in one of the aforementioned coding systems then the string value of the histologic tumor type must be provided. In summary: - If tumor histologic type is coded, then the value for the code SHALL be provided in @code field. In this case, the values for @displayName and @codeSystem associated with @code value SHALL be provided.- If tumor histologic type is NOT coded, then the value for the code SHALL be provided in &lt;originalText&gt; field. In this case @code attribute (as well as @displayName and @codeSystem) with be empty.</sch:assert>
			<sch:assert id="a-1169-32463" test="count(cda:value[@xsi:type='CD'][count(cda:qualifier[count(cda:name[empty(@nullFlavor) and @code='31206-6' and @codeSystem='2.16.840.1.113883.6.1'])=1])=1])=1">This value SHALL contain exactly one [1..1] qualifier (CONF:1169-32463) such that it
Note: This qualifier provides Behavior information, indicating whether the tumor has a  benign, uncertain, in situ, malignant or metastatic behavior. SHALL contain exactly one [1..1] name (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:1169-32474). This name SHALL contain exactly one [1..1] @code="31206-6" Behavior ICD-O-3 Cancer (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:1169-34041). This name SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.6.1" CodeSystem: LOINC 2.16.840.1.113883.6.1 (CONF:1169-34042).</sch:assert>
			<sch:assert id="a-1169-32490" test="count(cda:value[@xsi:type='CD'][count(cda:qualifier[count(cda:name[empty(@nullFlavor) and @code='21861-0' and @codeSystem='2.16.840.1.113883.6.1'])=1])=1])=1">This value SHALL contain exactly one [1..1] qualifier (CONF:1169-32490) such that it
Note: This qualifier provides Diagnostic Confirmation information, indicating the best method used to confirm the presence of the cancer being reported, such that SHALL contain exactly one [1..1] name="21861-0" Dx confirmed by Cancer (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:1169-32481). This name SHALL contain exactly one [1..1] @code="21861-0" Dx confirmed by Cancer (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:1169-34043). This name SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.6.1" CodeSystem: LOINC 2.16.840.1.113883.6.1 (CONF:1169-34044).</sch:assert>
			<sch:assert id="a-1169-32537" test="count(cda:value[@xsi:type='CD'][empty(@code)][count(cda:originalText)=1])=1 or count(cda:value[@xsi:type='CD'][@code])=1">If value/@code not present then
This value SHALL contain exactly one [1..1] originalText (CONF:1169-32537).
Note: This &lt;originalText&gt; element is used to document string value of histologic type of tumor in both cases: when histologic type of tumor is coded or is not coded. For example:(1) If histologic tumor type is coded, then the code value SHALL be provided in @code attribute (along with @displayName and @codeSystem values associated with the @code value). In addition, string value (typically the string that the user uses in his own information system) should be provided in &lt;originalText&gt; field. Note that if the user uses the same string value for histologic tumor type in his own system as the string value (=displayName) from the coding system, then the string values for &lt;originalText&gt; and @displayName will be equivalent in Cancer Report.(2) If histologic tumor type is NOT coded, then the string value SHALL be provided in &lt;originalText&gt;.</sch:assert>
			<sch:assert id="a-1169-33606" test="count(cda:value[@xsi:type='CD'][count(cda:qualifier[count(cda:name[empty(@nullFlavor) and @code='21858-6' and @codeSystem='2.16.840.1.113883.6.1'])=1])=1])=1">This value SHALL contain exactly one [1..1] qualifier (CONF:1169-33606) such that it
Note: This qualifier is used to indicate the Grade (or degree of differentiation) of tumor. SHALL contain exactly one [1..1] name (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:1169-33607). This name SHALL contain exactly one [1..1] @code="21858-6" Grade Cancer (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:1169-34045). This name SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.6.1" CodeSystem: LOINC 2.16.840.1.113883.6.1 (CONF:1169-34046).</sch:assert>
			<sch:assert id="a-1169-32457" test="count(cda:code)=1 and count(cda:code[empty(@nullFlavor) and @code='29308-4' and @codeSystem='2.16.840.1.113883.6.1'])=1">SHALL contain exactly one [1..1] code (CONF:1169-32457). This code SHALL contain exactly one [1..1] @code="29308-4" Diagnosis (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:1169-33309). This code SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.6.1" (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1 STATIC) (CONF:1169-33310).</sch:assert>
			<sch:assert id="a-1169-32487" test="count(cda:targetSiteCode)=1">SHALL contain exactly one [1..1] targetSiteCode (CONF:1169-32487).
Note: targetSiteCode indicates the anatomic location where the primary tumor originated (referred to as primary site).</sch:assert>
			<sch:assert id="a-1169-33177-c" test="count(cda:entryRelationship[empty(@nullFlavor)][@typeCode='SUBJ'][@inversionInd='true']/cda:observation/cda:templateId[@root='2.16.840.1.113883.10.13.7' or @root='2.16.840.1.113883.10.13.32'])=1">SHALL contain exactly one [1..1] entryRelationship (CONF:1169-33177) such that it
SHALL NOT contain [0..0] @nullFlavor (CONF:1169-33187).	SHALL contain exactly one [1..1] @typeCode="SUBJ" Has subject (CodeSystem: HL7ActRelationshipType urn:oid:2.16.840.1.113883.5.1002) (CONF:1169-33178). SHALL contain exactly one [1..1] @inversionInd="true" True (CONF:1169-33179). This entryRelationship SHALL contain either
SHALL contain exactly one [1..1] TNM Pathologic Stage Observation (V1.1) (identifier: urn:hl7ii:2.16.840.1.113883.10.13.7:2015-02-06) (CONF:1169-33180) OR SHALL contain exactly one [1..1] No Known TNM Pathologic Stage Observation (V1.1) (identifier: urn:hl7ii:2.16.840.1.113883.10.13.32:2015-04-02) (CONF:1169-34366).</sch:assert>
			<sch:assert id="a-1169-33192" test="exists(cda:entryRelationship[@typeCode='REFR'][count(cda:observation[count(cda:id)=1])=1])">SHALL contain at least one [1..*] entryRelationship (CONF:1169-33192) such that it SHALL contain exactly one [1..1] observation (CONF:1169-33193). This observation SHALL contain exactly one [1..1] id (CONF:1169-33195).
Note: This "id" is used to link cancer diagnosis observation to the problem observation "id". SHALL contain exactly one [1..1] @typeCode="REFR" Reference (CONF:1169-33194).</sch:assert>
			<sch:assert id="a-1169-32458-c" test="empty(cda:text/cda:reference[@value]) or (count($textRefValue)=1 and starts-with($textRefValue, '#') and count(//*[@ID=substring($textRefValue, 2)])=1)">This reference/@value SHALL begin with a '#' and SHALL point to its corresponding narrative (using the approach defined in CDA Release 2, section 4.3.5.1) (CONF:1169-32458).</sch:assert>
			<sch:assert id="a-1169-32452" test="@classCode='OBS'">SHALL contain exactly one [1..1] @classCode="OBS" Observation (CodeSystem: HL7ActClass urn:oid:2.16.840.1.113883.5.6 STATIC) (CONF:1169-32452).</sch:assert>
			<sch:assert id="a-1169-32453" test="@moodCode='EVN'">SHALL contain exactly one [1..1] @moodCode="EVN" Event (CodeSystem: ActMood urn:oid:2.16.840.1.113883.5.1001 STATIC) (CONF:1169-32453).</sch:assert>
			<sch:assert id="a-1169-32456" test="exists(cda:id)">SHALL contain at least one [1..*] id (CONF:1169-32456).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.4-2015-02-05-errors" context="cda:observation[cda:templateId[@root='2.16.840.1.113883.10.13.4' and @extension = '2015-02-05']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.4-2015-02-05-errors-abstract"/>
			<sch:assert id="a-1169-32441" test="count(cda:templateId[@root='2.16.840.1.113883.10.13.4' and @extension='2015-02-05'])=1">SHALL contain exactly one [1..1] templateId (CONF:1169-32441) such that it SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.13.4" (CONF:1169-32455). SHALL contain exactly one [1..1] @extension="2015-02-05" (CONF:1169-33956).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.4-2015-02-05-branch-1169-33195-errors" context="cda:observation[cda:templateId[@root='2.16.840.1.113883.10.13.4' and @extension = '2015-02-05']]/cda:entryRelationship[@typeCode='REFR'][cda:observation]/cda:observation/cda:id">
			<sch:assert id="a-1169-33195" test="exists(//cda:observation[cda:templateId[@root='2.16.840.1.113883.10.13.23' and @extension='2014-08-08']]/cda:id[deep-equal(., current())])">Note: This "id" is used to link cancer diagnosis observation to the problem observation "id".</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.4-2015-02-05-branch-1169-32446-errors" context="cda:observation[cda:templateId[@root='2.16.840.1.113883.10.13.4' and @extension = '2015-02-05']]/cda:effectiveTime">
			<sch:assert id="a-1169-33245" test="empty(@nullFlavor)">This effectiveTime SHALL NOT contain [0..0] @nullFlavor (CONF:1169-33245).</sch:assert>
			<sch:assert id="a-1169-32460" test="count(cda:low)=1 and count(cda:low[empty(@nullFlavor)])=1">This effectiveTime SHALL contain exactly one [1..1] low (CONF:1169-32460).
Note: The effectiveTime/low (a.k.a. "onset date") indicates Cancer Diagnosis Date. This low SHALL NOT contain [0..0] @nullFlavor (CONF:1169-33246).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.4-2015-02-05-branch-1169-32487-errors" context="cda:observation[cda:templateId[@root='2.16.840.1.113883.10.13.4' and @extension = '2015-02-05']]/cda:targetSiteCode">
			<sch:assert id="a-1169-32488" test="exists(@code)">This targetSiteCode SHALL contain exactly one [1..1] @code (CONF:1169-32488).</sch:assert>
			<sch:assert id="a-1169-32489-c" test="true()">The value for @code attribute SHALL be selected from:
(a) ICD-9-CM Volume 1 &amp; 2 (CodeSystem: 2.16.840.1.113883.6.103) or
(b) ICD-10-CM (CodeSystem: 2.16.840.1.113883.6.90) or
(c) Value Set: "Body Site" (ValueSet: 2.16.840.1.113883.3.88.12.3221.8.9) - SNOMED CT (CodeSystem: 2.16.840.1.113883.6.96) or
(d) ICD-O-3 (CodeSystem: 2.16.840.1.113883.6.43.1) (CONF:1169-32489).</sch:assert>
			<sch:assert id="a-1169-32639-c" test="true()">The value for @displayName associated with @code SHALL be selected from:
(a) ICD-9-CM Volume 1 &amp; 2 (CodeSystem: 2.16.840.1.113883.6.103) or
(b) ICD-10-CM (CodeSystem: 2.16.840.1.113883.6.90) or
(c) Value Set: "Body Site" (ValueSet: 2.16.840.1.113883.3.88.12.3221.8.9) - SNOMED CT (CodeSystem: 2.16.840.1.113883.6.96) or
(d) ICD-O-3 (CodeSystem: 2.16.840.1.113883.6.43.1) (CONF:1169-32639).</sch:assert>
			<sch:assert id="a-1169-33008" test="count(cda:qualifier)=1">This targetSiteCode SHALL contain exactly one [1..1] qualifier (CONF:1169-33008).</sch:assert>
			<sch:assert id="a-1169-33182" test="@codeSystem='2.16.840.1.113883.6.43.1' or @codeSystem='2.16.840.1.113883.6.103' or @codeSystem='2.16.840.1.113883.6.90' or @codeSystem='2.16.840.1.113883.6.96'">This targetSiteCode SHALL contain exactly one [1..1] @codeSystem (CONF:1169-33182). The value for @codeSystem attribute SHALL be selected from:
(a) ICD-9-CM Volume 1 &amp; 2 (CodeSystem: 2.16.840.1.113883.6.103) or
(b) ICD-10-CM (CodeSystem: 2.16.840.1.113883.6.90) or
(c) SNOMED CT (CodeSystem: 2.16.840.1.113883.6.96) or
(d) ICD-O-3 (CodeSystem: 2.16.840.1.113883.6.43.1) (CONF:1169-33620).</sch:assert>
			<sch:assert id="a-1169-33247" test="empty(@nullFlavor)">This targetSiteCode SHALL NOT contain [0..0] @nullFlavor (CONF:1169-33247).</sch:assert>
			<sch:assert id="a-1169-33707-c" test="(@codeSystem='2.16.840.1.113883.6.96' and @sdtc:valueSet='2.16.840.1.113883.3.88.12.3221.8.9') or (@codeSystem!='2.16.840.1.113883.6.96' and (empty(@sdtc:valueSet) or @sdtc:valueSet!='2.16.840.1.113883.3.88.12.3221.8.9'))">If the @code is selected from the Value Set "Body Site", then the value for @valueSet SHALL be "2.16.840.1.113883.3.88.12.3221.8.9" (CONF:1169-33707).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.4-2015-02-05-branch-1169-33008-errors" context="cda:observation[cda:templateId[@root='2.16.840.1.113883.10.13.4' and @extension = '2015-02-05']]/cda:targetSiteCode/cda:qualifier">
			<sch:assert id="a-1169-33009" test="count(cda:name)=1 and count(cda:name[empty(@nullFlavor) and @code='20228-3' and @codeSystem='2.16.840.1.113883.6.1' and @codeSystemName='LOINC'])=1">This qualifier SHALL contain exactly one [1..1] name (CONF:1169-33009). This name SHALL contain exactly one [1..1] @code="20228-3" Anatomic part Laterality (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:1169-33011). This name SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.6.1" (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:1169-33013). This name SHALL contain exactly one [1..1] @codeSystemName="LOINC" (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:1169-33014).</sch:assert>
			<sch:assert id="a-1169-33010" test="count(cda:value)=1">This qualifier SHALL contain exactly one [1..1] value (CONF:1169-33010). Note: This qualifier provides Laterality, the side of a paired organ, or the side of the body on which the reportable tumor originated.</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.4-2015-02-05-branch-1169-33010-errors" context="cda:observation[cda:templateId[@root='2.16.840.1.113883.10.13.4' and @extension = '2015-02-05']]/cda:targetSiteCode/cda:qualifier/cda:value">
            <sch:assert id="a-1169-33012-c" test="exists(@code)">This value SHALL contain exactly one [1..1] @code, which SHALL be selected from ValueSet Laterality urn:oid:2.16.840.1.113883.3.520.4.22 (CONF:1169-33012).</sch:assert>
            <sch:assert id="a-1169-33015" test="@codeSystem='2.16.840.1.113883.6.96'">This value SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.6.96" (CodeSystem: SNOMED CT urn:oid:2.16.840.1.113883.6.96 STATIC) (CONF:1169-33015).</sch:assert>
            <sch:assert id="a-1169-33185-c" test="exists(@displayName)">This value SHALL contain exactly one [1..1] @displayName, which SHALL be selected from ValueSet Laterality urn:oid:2.16.840.1.113883.3.520.4.22 (CONF:1169-33185).</sch:assert>
            <sch:assert id="a-1169-33708" test="@sdtc:valueSet='2.16.840.1.113883.3.520.4.22'">This value SHALL contain exactly one [1..1] @sdtc:valueSet="2.16.840.1.113883.3.520.4.22" (CodeSystem: SNOMED CT urn:oid:2.16.840.1.113883.6.96 STATIC) (CONF:1169-33708).</sch:assert>
        </sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.4-2015-02-05-branch-1169-32447-errors" context="cda:observation[cda:templateId[@root='2.16.840.1.113883.10.13.4' and @extension = '2015-02-05']]/cda:value[@xsi:type='CD'][empty(@nullFlavor)]">
			<sch:assert id="a-1169-32464" test="(@code!='8000' and @code!='8000/3' and @code!='86049000') or ((@code='8000' or @code='8000/3') and @displayName='Neoplasm' and (@codeSystem='2.16.840.1.113883.6.43.1' or @codeSystem='2.16.840.1.114222.4.11.6038')) or (@code='86049000' and @displayName='Neoplasm, malignant (primary)' and @codeSystem='2.16.840.1.113883.6.96')">If value/@nullFlavor is not present then
This value SHALL contain exactly one [1..1] @code (CONF:1169-32464).
Note: This @code attribute is used to document histologic type of tumor. If the histologic type isn’t known, the value of “8000” (with @displayName="Neoplasm") should be used when using code systems ICD-O-3, ICD-9-CM, ICD-10-CM and "86049000" (with @displayName="Neoplasm, malignant (primary)") when using SNOMED CT code system.</sch:assert>
			<sch:assert id="a-1169-32473-c" test="exists(@code)">
The @code for histologic type of tumor, if present, SHALL be selected from:
(a) ICD-O-3 (CodeSystem: 2.16.840.1.113883.6.43.1) or
(b) Morphologic Abnormality of Neoplasms Value Set (ValueSet: 2.16.840.1.114222.4.11.7256) or
(c) ICD-9-CM Appendix A-Morphology of Neoplasms (ValueSet: 2.16.840.1.114222.4.11.6038).</sch:assert>
			<sch:assert id="a-1169-32634" test="@codeSystem='2.16.840.1.113883.6.43.1' or @codeSystem='2.16.840.1.113883.6.103' or @codeSystem='2.16.840.1.113883.6.96'">If value/@nullFlavor not present then
This value SHALL contain exactly one [1..1] @codeSystem (CONF:1169-32634). The @codeSystem associated with the code for histologic type of tumor SHALL be selected from:
(a) ICD-O-3 (CodeSystem: 2.16.840.1.113883.6.43.1) or
(b) SNOMED CT (CodeSystem: 2.16.840.1.113883.6.96) or
(c) ICD-9-CM Appendix A-Morphology of Neoplasms (ValueSet: 2.16.840.1.114222.4.11.6038)(CONF:1169-32635).</sch:assert>
			<sch:assert id="a-1169-32618" test="exists(@displayName)">If value/@nullFlavor not present then
This value SHALL contain exactly one [1..1] @displayName (CONF:1169-32618).</sch:assert>
			<sch:assert id="a-1169-32619-c" test="exists(@displayName)">The @displayName associated with the code for histologic type of tumor SHALL be selected from:
(a) ICD-O-3 (CodeSystem: 2.16.840.1.113883.6.43.1) or
(b) Morphologic Abnormality of Neoplasms Value Set (ValueSet: 2.16.840.1.114222.4.11.7256) or
(c) ICD-9-CM Appendix A-Morphology of Neoplasms (ValueSet: 2.16.840.1.114222.4.11.6038) (CONF:1169-32619).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.4-2015-02-05-branch-1169-32537-errors" context="cda:observation[cda:templateId[@root='2.16.840.1.113883.10.13.4' and @extension = '2015-02-05']]/cda:value[@xsi:type='CD']/cda:originalText">
			<sch:let name="origTextValue" value="cda:reference/@value"/>
			<sch:assert id="a-1169-32538" test="count(cda:reference)=1">This originalText SHALL contain exactly one [1..1] reference (CONF:1169-32538).
Note: This reference/@value SHALL begin with a '#' and SHALL point to its corresponding narrative (using the approach defined in CDA Release 2, section 4.3.5.1).</sch:assert>
			<sch:assert id="a-1169-32539" test="count(cda:reference[@value])=1">This reference SHALL contain exactly one [1..1] @value (CONF:1169-32539).</sch:assert>
			<sch:assert id="a-1169-32613-c" test="empty(cda:reference[@value]) or (count($origTextValue)=1 and starts-with($origTextValue, '#') and count(//*[@ID=substring($origTextValue, 2)])=1)">This reference/@value SHALL begin with a '#' and SHALL point to its corresponding narrative (using the approach defined in CDA Release 2, section 4.3.5.1) (CONF:1169-32613).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.4-2015-02-05-branch-1169-32463-errors" context="cda:observation[cda:templateId[@root='2.16.840.1.113883.10.13.4' and @extension = '2015-02-05']]/cda:value[@xsi:type='CD']/cda:qualifier[cda:name[@code='31206-6'][@codeSystem='2.16.840.1.113883.6.1']]">
			<sch:let name="origTextValue" value="cda:value/cda:originalText/cda:reference/@value"/>
        	<sch:assert id="a-1169-32475" test="count(cda:value[@code and @displayName and @codeSystem])=1 or count(cda:value[not(@code)]/cda:originalText)=1">SHALL contain exactly one [1..1] value (CONF:1169-32475).
Note: - If coded, the code value describing the behavior of the tumor/cancerSHALL be provided in @code (associated @displayName and @codeSystem SHALL also be provided along with the @code).- If uncoded, the string value describing the behavior of the tumor/cancer SHALL be provided within &lt;originalText&gt; element.</sch:assert>
			<sch:assert id="a-1169-32614" test="empty(cda:value/cda:originalText/cda:reference[@value]) or (count($origTextValue)=1 and starts-with($origTextValue, '#') and count(//*[@ID=substring($origTextValue, 2)])=1)">This reference/@value SHALL begin with a '#' and SHALL point to its corresponding narrative (using the approach defined in CDA Release 2, section 4.3.5.1) (CONF:1169-32614).</sch:assert>
        </sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.4-2015-02-05-branch-1169-32490-errors" context="cda:observation[cda:templateId[@root='2.16.840.1.113883.10.13.4' and @extension = '2015-02-05']]/cda:value[@xsi:type='CD']/cda:qualifier[cda:name[@code='21861-0'][@codeSystem='2.16.840.1.113883.6.1']]">
			<sch:let name="origTextValue" value="cda:value/cda:originalText/cda:reference/@value"/>
			<sch:assert id="a-1169-32482" test="count(cda:value[@code and @displayName and @codeSystem])=1 or count(cda:value[not(@code)]/cda:originalText)=1">SHALL contain exactly one [1..1] value (CONF:1169-32482).
Note: - If coded, the code value describing the best method of diagnosis of the tumor/cancer SHALL be provided in @code (associated @displayName and @codeSystem SHALL also be provided along with the @code).- If uncoded, the string value describing the best method of diagnosis of the tumor/cancer SHALL be provided within &lt;originalText&gt; element. </sch:assert>
			<sch:assert id="a-1169-33181" test="empty(cda:value/cda:originalText/cda:reference[@value]) or (count($origTextValue)=1 and starts-with($origTextValue, '#') and count(//*[@ID=substring($origTextValue, 2)])=1)">This reference/@value SHALL begin with a '#' and SHALL point to its corresponding narrative (using the approach defined in CDA Release 2, section 4.3.5.1) (CONF:1169-33181).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.4-2015-02-05-branch-1169-33606-errors" context="cda:observation[cda:templateId[@root='2.16.840.1.113883.10.13.4' and @extension = '2015-02-05']]/cda:value[@xsi:type='CD']/cda:qualifier[cda:name[@code='21858-6'][@codeSystem='2.16.840.1.113883.6.1']]">
			<sch:let name="origTextValue" value="cda:value/cda:originalText/cda:reference/@value"/>
			<sch:assert id="a-1169-33608" test="count(cda:value[@code and @displayName and @codeSystem])=1 or count(cda:value[not(@code)]/cda:originalText)=1">SHALL contain exactly one [1..1] value (CONF:1169-33608).
Note: - If coded, the code value describing the grade of the tumor/cancer SHALL be provided in @code (associated @displayName and @codeSystem SHALL also be provided along with the @code).- If uncoded, the string value describing the grade of the tumor/cancer SHALL be provided within &lt;originalText&gt; element. </sch:assert>
			<sch:assert id="a-1169-33615" test="empty(cda:value/cda:originalText/cda:reference[@value]) or (count($origTextValue)=1 and starts-with($origTextValue, '#') and count(//*[@ID=substring($origTextValue, 2)])=1)">This reference/@value SHALL begin with a '#' and SHALL point to its corresponding narrative (using the approach defined in CDA Release 2, section 4.3.5.1) (CONF:1169-33615).</sch:assert>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.13.36-2015-02-05-errors">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.36-2015-02-05-errors-abstract" abstract="true">
			<sch:assert id="a-1169-34074" test="count(cda:templateId[@root='2.16.840.1.113883.10.13.36'][@extension='2015-02-05'])=1">SHALL contain exactly one [1..1] templateId (CONF:1169-34074) such that it SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.13.36" (CONF:1169-34075). SHALL contain exactly one [1..1] @extension="2015-02-05" (CONF:1169-34076).</sch:assert>
			<sch:assert id="a-1169-34077" test="@classCode='OBS'">SHALL contain exactly one [1..1] @classCode="OBS" Observation (CodeSystem: HL7ActClass urn:oid:2.16.840.1.113883.5.6) (CONF:1169-34077).</sch:assert>
			<sch:assert id="a-1169-34078" test="@moodCode='EVN'">SHALL contain exactly one [1..1] @moodCode="EVN" Event (CodeSystem: ActMood urn:oid:2.16.840.1.113883.5.1001) (CONF:1169-34078).</sch:assert>
			<sch:assert id="a-1169-34079" test="count(cda:code)=1 and count(cda:code[empty(@nullFlavor) and @code='21905-5' and @codeSystem='2.16.840.1.113883.6.1'])=1">SHALL contain exactly one [1..1] code (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:1169-34079). This code SHALL contain exactly one [1..1] @code="21905-5" Primary tumor.clinical [Class] Cancer (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:1169-34080). This code SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.6.1" (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:1169-34081).</sch:assert>
			<sch:assert id="a-1169-34082" test="count(cda:value[@xsi:type='CD'])=1">SHALL contain exactly one [1..1] value with @xsi:type="CD" (CONF:1169-34082).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.36-2015-02-05-errors" context="cda:observation[cda:templateId[@root='2.16.840.1.113883.10.13.36' and @extension = '2015-02-05']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.36-2015-02-05-errors-abstract"/>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.36-2015-02-05-branch-1169-34082-errors" context="cda:observation[cda:templateId[@root='2.16.840.1.113883.10.13.36' and @extension = '2015-02-05']]/cda:value[@xsi:type='CD']">
			<sch:let name="origTextValue" value="cda:originalText/cda:reference/@value"/>

			<!--8/21/2019-->
			<sch:assert id="a-1169-34083" test="(@sdtc:valueSet='2.16.840.1.113883.3.520.4.6' and @code=document('voc.xml')/voc:systems/voc:system[@valueSetOid='2.16.840.1.113883.3.520.4.6']/voc:code/@value) or (@sdtc:valueSet='2.16.840.1.113883.3.520.4.32' and @code=document('voc.xml')/voc:systems/voc:system[@valueSetOid='2.16.840.1.113883.3.520.4.32']/voc:code/@value)">This value SHALL contain exactly one [1..1] @code, which SHALL be selected from (a) ValueSet TNM Clinical Tumor 7th Edition (urn:oid:2.16.840.1.113883.3.520.4.6) or (b) ValueSet TNM Clinical Tumor 8th Edition (urn:oid: 2.16.840.1.113883.3.520.4.32) (Code System: TNM 8. Edition urn:oid:2.16.840.1.113883.3.520.3.18)(CONF:1169-34083).</sch:assert>
			<sch:assert id="a-1169-34087" test="(@codeSystem='2.16.840.1.113883.15.6') or (@codeSystem='2.16.840.1.113883.3.520.3.18')">This value SHALL contain exactly one [1..1] @codeSystem. The @codeSystem associated with the code for TNM Clinical Tumor SHALL be selected from:(a)(a) TNM 7. Edition (CodeSystem: 2.16.840.1.113883.15.6) or (b) TNM 8. Edition (Code System: urn:oid:2.16.840.1.113883.3.520.3.18)(CONF:1169-34087).</sch:assert>
			<sch:assert id="a-1169-34088" test="@sdtc:valueSet='2.16.840.1.113883.3.520.4.6' or @sdtc:valueSet='2.16.840.1.113883.3.520.4.32'">This value SHALL contain exactly one [1..1] @sdtc:valueSet. The @sdtc:valueSet associated with the code for TNM Clinical Tumor SHALL be selected from:(a)  "ValueSet TNM Clinical Tumor 7th Edition (urn:oid:2.16.840.1.113883.3.520.4.6") (CodeSystem: TNM 7. Edition urn:oid:2.16.840.1.113883.15.6) or (b)  "ValueSet TNM Clinical Tumor 8th Edition (urn.oid:2.16.840.1.113883.3.520.4.32) (Code System: TNM 8. Edition urn:oid:2.16.840.1.113883.3.520.3.18) (CONF:1169-34088).</sch:assert>
			<sch:assert id="a-1169-34089-c" test="empty(cda:originalText/cda:reference[@value]) or (count($origTextValue)=1 and starts-with($origTextValue, '#') and count(//*[@ID=substring($origTextValue, 2)])=1)">This reference/@value SHALL begin with a '#' and SHALL point to its corresponding narrative (using the approach defined in CDA Release 2, section 4.3.5.1) (CONF:1169-34089).</sch:assert>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.13.37-2015-02-05-errors">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.37-2015-02-05-errors-abstract" abstract="true">
			<sch:assert id="a-1169-34099" test="count(cda:templateId[@root='2.16.840.1.113883.10.13.37'][@extension='2015-02-05'])=1">SHALL contain exactly one [1..1] templateId (CONF:1169-34099) such that it SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.13.37" (CONF:1169-34102). SHALL contain exactly one [1..1] @extension="2015-02-05" (CONF:1169-34103).</sch:assert>
			<sch:assert id="a-1169-34100" test="@classCode='OBS'">SHALL contain exactly one [1..1] @classCode="OBS" Observation (CodeSystem: HL7ActClass urn:oid:2.16.840.1.113883.5.6) (CONF:1169-34100).</sch:assert>
			<sch:assert id="a-1169-34101" test="@moodCode='EVN'">SHALL contain exactly one [1..1] @moodCode="EVN" Event (CodeSystem: ActMood urn:oid:2.16.840.1.113883.5.1001) (CONF:1169-34101).</sch:assert>
			<sch:assert id="a-1169-34104" test="count(cda:code)=1 and count(cda:code[empty(@nullFlavor) and @code='21906-3' and @codeSystem='2.16.840.1.113883.6.1'])=1">SHALL contain exactly one [1..1] code (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:1169-34104). This code SHALL contain exactly one [1..1] @code="21906-3" Regional lymph nodes.clinical [Class] Cancer (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:1169-34105). This code SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.6.1" (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:1169-34106).</sch:assert>
			<sch:assert id="a-1169-34107" test="count(cda:value[@xsi:type='CD'])=1">SHALL contain exactly one [1..1] value with @xsi:type="CD" (CONF:1169-34107).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.37-2015-02-05-errors" context="cda:observation[cda:templateId[@root='2.16.840.1.113883.10.13.37' and @extension = '2015-02-05']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.37-2015-02-05-errors-abstract"/>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.37-2015-02-05-branch-1169-34107-errors" context="cda:observation[cda:templateId[@root='2.16.840.1.113883.10.13.37' and @extension = '2015-02-05']]/cda:value[@xsi:type='CD']">
			<sch:let name="origTextValue" value="cda:originalText/cda:reference/@value"/>
            <sch:let name="test" value="hello"/>

            <!--8/21/2019-->
			<sch:assert id="a-1169-34111" test="(@sdtc:valueSet='2.16.840.1.113883.3.520.4.7' and @code=document('voc.xml')/voc:systems/voc:system[@valueSetOid='2.16.840.1.113883.3.520.4.7']/voc:code/@value) or (@sdtc:valueSet='2.16.840.1.113883.3.520.4.33' and  @code=document('voc.xml')/voc:systems/voc:system[@valueSetOid='2.16.840.1.113883.3.520.4.33']/voc:code/@value)">This value SHALL contain exactly one [1..1] @code,which SHALL be selected from:(a) Value Set TNM Clinical Node 7th Edition urn:oid:2.16.840.1.113883.3.520.4.7 or (b) Value Set TNM Clinical Node 8th Edition (urn:oid:2.16.840.1.113883.3.520.4.33) (CONF:1169-34111).</sch:assert>
			<sch:assert id="a-1169-34112" test="@codeSystem='2.16.840.1.113883.15.6' or @codeSystem='2.16.840.1.113883.3.520.3.18'">This value SHALL contain exactly one [1..1] @codeSystem. The @codeSystem associated with the code for TNM Clinical Node SHALL be selected from:(a) TNM 7. Edition (CodeSystem: 2.16.840.1.113883.15.6) or (b) TNM 8. Edition (Code System: urn:OID:2.16.840.1.113883.3.520.3.18) (CONF:1169-34112).</sch:assert>
			<sch:assert id="a-1169-34113" test="@sdtc:valueSet='2.16.840.1.113883.3.520.4.7' or @sdtc:valueSet='2.16.840.1.113883.3.520.4.33'">This value SHALL contain exactly one [1..1] @sdtc:valueSet. The @sdtc:valueSet associated with the code for TNM Clinical Node SHALL be selected from:(a)  "Value Set OID 2.16.840.1.113883.3.520.4.7" (CodeSystem: TNM 7. Edition urn:oid:2.16.840.1.113883.15.6) or (b)  Value Set OID 2.16.840.1.113883.3.520.4.33 (Code System: TNM 8. Edition urn:oid:2.16.840.1.113883.3.520.3.18) (CONF:1169-34113).</sch:assert>
			<sch:assert id="a-1169-34114-c" test="empty(cda:originalText/cda:reference[@value]) or (count($origTextValue)=1 and starts-with($origTextValue, '#') and count(//*[@ID=substring($origTextValue, 2)])=1)">This reference/@value SHALL begin with a '#' and SHALL point to its corresponding narrative (using the approach defined in CDA Release 2, section 4.3.5.1) (CONF:1169-34114).</sch:assert>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.13.38-2015-02-05-errors">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.38-2015-02-05-errors-abstract" abstract="true">
			<sch:assert id="a-1169-34115" test="@classCode='OBS'">SHALL contain exactly one [1..1] @classCode="OBS" Observation (CodeSystem: HL7ActClass urn:oid:2.16.840.1.113883.5.6) (CONF:1169-34115).</sch:assert>
			<sch:assert id="a-1169-34116" test="@moodCode='EVN'">SHALL contain exactly one [1..1] @moodCode="EVN" Event (CodeSystem: ActMood urn:oid:2.16.840.1.113883.5.1001) (CONF:1169-34116).</sch:assert>
			<sch:assert id="a-1169-34117" test="count(cda:code)=1 and count(cda:code[empty(@nullFlavor) and @code='21907-1' and @codeSystem='2.16.840.1.113883.6.1'])=1">SHALL contain exactly one [1..1] code (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:1169-34117). This code SHALL contain exactly one [1..1] @code="21907-1" Distant metastases.clinical [Class] Cancer (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:1169-34118). This code SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.6.1" (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:1169-34119).</sch:assert>
			<sch:assert id="a-1169-34120" test="count(cda:value[@xsi:type='CD'])=1">SHALL contain exactly one [1..1] value with @xsi:type="CD" (CONF:1169-34120).</sch:assert>
			<sch:assert id="a-1169-34251" test="count(cda:templateId[@root='2.16.840.1.113883.10.13.38'][@extension='2015-02-05'])=1">SHALL contain exactly one [1..1] templateId (CONF:1169-34251) such that it SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.13.38" (CONF:1169-34252). SHALL contain exactly one [1..1] @extension="2015-02-05" (CONF:1169-34253).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.38-2015-02-05-errors" context="cda:observation[cda:templateId[@root='2.16.840.1.113883.10.13.38' and @extension = '2015-02-05']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.38-2015-02-05-errors-abstract"/>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.38-2015-02-05-branch-1169-34120-errors" context="cda:observation[cda:templateId[@root='2.16.840.1.113883.10.13.38' and @extension = '2015-02-05']]/cda:value[@xsi:type='CD']">
			<sch:let name="origTextValue" value="cda:originalText/cda:reference/@value"/>

			<!--8/21/2019-->
			<sch:assert id="a-1169-34121" test="(@sdtc:valueSet='2.16.840.1.113883.3.520.4.8' and @code=document('voc.xml')/voc:systems/voc:system[@valueSetOid='2.16.840.1.113883.3.520.4.8']/voc:code/@value) or (@sdtc:valueSet='2.16.840.1.113883.3.520.4.34' and @code=document('voc.xml')/voc:systems/voc:system[@valueSetOid='2.16.840.1.113883.3.520.4.34']/voc:code/@value)">This value SHALL contain exactly one [1..1] @code, which SHALL be selected from (a) Value Set TNM Clinical Metastasis 7th Edition urn:oid:2.16.840.1.113883.3.520.4.8 or (b) Value Set TNM Clinical Metastasis 8th Edition (urn:oid:2.16.840.1.113883.3.520.4.34) (CONF:1169-34121).</sch:assert>
			<sch:assert id="a-1169-34122" test="@codeSystem='2.16.840.1.113883.15.6' or @codeSystem='2.16.840.1.113883.3.520.3.18'">This value SHALL contain exactly one [1..1] @codeSystem. The @codeSystem associated with the code for TNM Clinical Metastasis SHALL be selected from:(a) TNM 7. Edition (CodeSystem: 2.16.840.1.113883.15.6) or (b) TNM 8. Edition (Code System: urn:OID:2.16.840.1.113883.3.520.3.18) (CONF:1169-34122).</sch:assert>
			<sch:assert id="a-1169-34123" test="@sdtc:valueSet='2.16.840.1.113883.3.520.4.8' or @sdtc:valueSet='2.16.840.1.113883.3.520.4.34'">This value SHALL contain exactly one [1..1] @sdtc:valueSet. The @sdtc:valueSet associated with the code for TNM Clinical Metastasis SHALL be selected from:(a)  "Value Set OID 2.16.840.1.113883.3.520.4.8" (CodeSystem: TNM 7. Edition urn:oid:2.16.840.1.113883.15.6) or (b)  "Value Set OID 2.16.840.1.113883.3.520.4.34" (Code System: TNM 8. Edition urn:oid:2.16.840.1.113883.3.520.3.18) (CONF:1169-34123).</sch:assert>
			<sch:assert id="a-1169-34127-c" test="empty(cda:originalText/cda:reference[@value]) or (count($origTextValue)=1 and starts-with($origTextValue, '#') and count(//*[@ID=substring($origTextValue, 2)])=1)">This reference/@value SHALL begin with a '#' and SHALL point to its corresponding narrative (using the approach defined in CDA Release 2, section 4.3.5.1) (CONF:1169-34127).</sch:assert>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.13.39-2015-02-05-errors">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.39-2015-02-05-errors-abstract" abstract="true">
			<sch:assert id="a-1169-34128" test="count(cda:templateId[@root='2.16.840.1.113883.10.13.39'][@extension='2015-02-05'])=1">SHALL contain exactly one [1..1] templateId (CONF:1169-34128) such that it SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.13.39" (CONF:1169-34131). SHALL contain exactly one [1..1] @extension="2015-02-05" (CONF:1169-34132).</sch:assert>
			<sch:assert id="a-1169-34129" test="@classCode='OBS'">SHALL contain exactly one [1..1] @classCode="OBS" Observation (CodeSystem: HL7ActClass urn:oid:2.16.840.1.113883.5.6) (CONF:1169-34129).</sch:assert>
			<sch:assert id="a-1169-34130" test="@moodCode='EVN'">SHALL contain exactly one [1..1] @moodCode="EVN" Event (CodeSystem: ActMood urn:oid:2.16.840.1.113883.5.1001) (CONF:1169-34130).</sch:assert>
			<sch:assert id="a-1169-34133" test="count(cda:code)=1 and count(cda:code[empty(@nullFlavor) and @code='21910-5' and @codeSystem='2.16.840.1.113883.6.1'])=1">SHALL contain exactly one [1..1] code (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:1169-34133). This code SHALL contain exactly one [1..1] @code="21910-5" Stager.clinical Cancer (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:1169-34134). This code SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.6.1" (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:1169-34135).</sch:assert>
			<sch:assert id="a-1169-34136" test="count(cda:value[@xsi:type='CD'])=1">SHALL contain exactly one [1..1] value with @xsi:type="CD" (CONF:1169-34136).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.39-2015-02-05-errors" context="cda:observation[cda:templateId[@root='2.16.840.1.113883.10.13.39' and @extension = '2015-02-05']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.39-2015-02-05-errors-abstract"/>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.39-2015-02-05-branch-1169-34136-errors" context="cda:observation[cda:templateId[@root='2.16.840.1.113883.10.13.39' and @extension = '2015-02-05']]/cda:value[@xsi:type='CD']">
			<sch:let name="origTextValue" value="cda:originalText/cda:reference/@value"/>
			<sch:assert id="a-1169-34137" test="exists(@code)">This value SHALL contain exactly one [1..1] @code, which SHALL be selected from ValueSet NAACCR TNM Clinical Staged By urn:oid:2.16.840.1.113883.3.520.4.4 DYNAMIC (CONF:1169-34137).</sch:assert>
			<sch:assert id="a-1169-34138" test="@codeSystem='2.16.840.1.113883.3.520.3.4'">This value SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.3.520.3.4" NAACCR TNM Clinical Staged By (CONF:1169-34138).</sch:assert>
			<sch:assert id="a-1169-34139" test="@sdtc:valueSet='2.16.840.1.113883.3.520.4.4'">This value SHALL contain exactly one [1..1] @sdtc:valueSet="2.16.840.1.113883.3.520.4.4" NAACCR TNM Clinical Staged By (CONF:1169-34139).</sch:assert>
			<sch:assert id="a-1169-34143-c" test="empty(cda:originalText/cda:reference[@value]) or (count($origTextValue)=1 and starts-with($origTextValue, '#') and count(//*[@ID=substring($origTextValue, 2)])=1)">This reference/@value SHALL begin with a '#' and SHALL point to its corresponding narrative (using the approach defined in CDA Release 2, section 4.3.5.1) (CONF:1169-34143).</sch:assert>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.13.40-2015-02-05-errors">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.40-2015-02-05-errors-abstract" abstract="true">
			<sch:assert id="a-1169-34146" test="@classCode='OBS'">SHALL contain exactly one [1..1] @classCode="OBS" Observation (CodeSystem: HL7ActClass urn:oid:2.16.840.1.113883.5.6) (CONF:1169-34146).</sch:assert>
			<sch:assert id="a-1169-34147" test="@moodCode='EVN'">SHALL contain exactly one [1..1] @moodCode="EVN" Event (CodeSystem: ActMood urn:oid:2.16.840.1.113883.5.1001) (CONF:1169-34147).</sch:assert>
			<sch:assert id="a-1169-34148" test="count(cda:code)=1 and count(cda:code[empty(@nullFlavor) and @code='21902-2' and @codeSystem='2.16.840.1.113883.6.1'])=1">SHALL contain exactly one [1..1] code (CONF:1169-34148). This code SHALL contain exactly one [1..1] @code="21902-2" Stage group.pathology Cancer (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:1169-34149). This code SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.6.1" (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:1169-34150).</sch:assert>
			<sch:assert id="a-1169-34151" test="count(cda:statusCode)=1 and count(cda:statusCode[empty(@nullFlavor) and @code='completed'])=1">SHALL contain exactly one [1..1] statusCode (CONF:1169-34151). This statusCode SHALL contain exactly one [1..1] @code="completed" Completed (CodeSystem: ActStatus urn:oid:2.16.840.1.113883.5.14) (CONF:1169-34152).</sch:assert>
			<sch:assert id="a-1169-34153" test="count(cda:value[@xsi:type='CD'])=1">SHALL contain exactly one [1..1] value with @xsi:type="CD" (CONF:1169-34153).</sch:assert>
			<sch:assert id="a-1169-34174" test="count(cda:entryRelationship[@typeCode='COMP'][count(cda:observation[cda:templateId[@root='2.16.840.1.113883.10.13.41' and @extension = '2015-02-05']])=1])=1">SHALL contain exactly one [1..1] entryRelationship (CONF:1169-34174) such that it
Note: This entryRelationship provides information on the TNM Pathologic Stage Tumor (T). SHALL contain exactly one [1..1] @typeCode="COMP" Component (CodeSystem: HL7ActRelationshipType urn:oid:2.16.840.1.113883.5.1002) (CONF:1169-34175). SHALL contain exactly one [1..1] Primary Tumor Pathologic (identifier: urn:hl7ii:2.16.840.1.113883.10.13.41:2015-02-05) (CONF:1169-34176).</sch:assert>
			<sch:assert id="a-1169-34177" test="count(cda:entryRelationship[@typeCode='COMP'][count(cda:observation[cda:templateId[@root='2.16.840.1.113883.10.13.42' and @extension = '2015-02-05']])=1])=1">SHALL contain exactly one [1..1] entryRelationship (CONF:1169-34177) such that it
Note: This entryRelationship provides information on the TNM Pathologic Stage Node (N). SHALL contain exactly one [1..1] @typeCode="COMP" Component (CodeSystem: HL7ActRelationshipType urn:oid:2.16.840.1.113883.5.1002) (CONF:1169-34178). SHALL contain exactly one [1..1] Regional Lymph Nodes Pathologic (identifier: urn:hl7ii:2.16.840.1.113883.10.13.42:2015-02-05) (CONF:1169-34179).</sch:assert>
			<sch:assert id="a-1169-34180" test="count(cda:entryRelationship[@typeCode='COMP'][count(cda:observation[cda:templateId[@root='2.16.840.1.113883.10.13.43' and @extension = '2015-02-05']])=1])=1">SHALL contain exactly one [1..1] entryRelationship (CONF:1169-34180) such that it
Note: This entryRelationship provides information on the TNM Pathologic Stage Metastasis (M). SHALL contain exactly one [1..1] @typeCode="COMP" Component (CodeSystem: HL7EntityCode urn:oid:2.16.840.1.113883.5.1060) (CONF:1169-34181). SHALL contain exactly one [1..1] Distant Metastases Pathologic (identifier: urn:hl7ii:2.16.840.1.113883.10.13.43:2015-02-05) (CONF:1169-34182).</sch:assert>
			<sch:assert id="a-1169-34183" test="count(cda:entryRelationship[@typeCode='COMP'][count(cda:observation[cda:templateId[@root='2.16.840.1.113883.10.13.44' and @extension = '2015-02-05']])=1])=1">SHALL contain exactly one [1..1] entryRelationship (CONF:1169-34183) such that it
Note: Identifies the role of the person who recorded the staging elements. SHALL contain exactly one [1..1] @typeCode="COMP" Component (CodeSystem: HL7ActRelationshipType urn:oid:2.16.840.1.113883.5.1002) (CONF:1169-34184). SHALL contain exactly one [1..1] Stager Pathologic Cancer (identifier: urn:hl7ii:2.16.840.1.113883.10.13.44:2015-02-05) (CONF:1169-34185).</sch:assert>
			<sch:assert id="a-1169-34261" test="count(cda:templateId[@root='2.16.840.1.113883.10.13.40'][@extension='2015-02-05'])=1">SHALL contain exactly one [1..1] templateId (CONF:1169-34261) such that it SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.13.40" (CONF:1169-34262). SHALL contain exactly one [1..1] @extension="2015-02-05" (CONF:1169-34263).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.40-2015-02-05-errors" context="cda:observation[cda:templateId[@root='2.16.840.1.113883.10.13.40' and @extension = '2015-02-05']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.40-2015-02-05-errors-abstract"/>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.40-2015-02-05-branch-1169-34153-errors" context="cda:observation[cda:templateId[@root='2.16.840.1.113883.10.13.40' and @extension = '2015-02-05']]/cda:value[@xsi:type='CD']">
			<sch:let name="origTextValue" value="cda:originalText/cda:reference/@value"/>

			<!--8/21/2019-->
			<sch:assert id="a-1169-34154" test="(@sdtc:valueSet='2.16.840.1.113883.3.520.4.20' and @code=document('voc.xml')/voc:systems/voc:system[@valueSetOid='2.16.840.1.113883.3.520.4.20']/voc:code/@value) or (@sdtc:valueSet='2.16.840.1.113883.3.520.4.35' and @code=document('voc.xml')/voc:systems/voc:system[@valueSetOid='2.16.840.1.113883.3.520.4.35']/voc:code/@value)">This value SHALL contain exactly one [1..1] @code, which SHALL be selected from:(a) ValueSet TNM Pathologic Stage Group 7th Edition urn:oid:2.16.840.1.113883.3.520.4.20 DYNAMIC or (b) ValueSet TNM Pathologic Stage Group 8th Edition (urn:oid:2.16.840.1.113883.3.520.4.35) DYNAMIC (CONF:1169-34154).</sch:assert>
			<sch:assert id="a-1169-34155" test="@codeSystem='2.16.840.1.113883.15.6' or @codeSystem='2.16.840.1.113883.3.520.3.18'">This value SHALL contain exactly one [1..1] @codeSystem. The @codeSystem associated with the code for TNM Pathologic Stage Group SHALL be selected from:(a) TNM 7. Edition (CodeSystem: urn:oid:2.16.840.1.113883.15.6) or (b) TNM 8. Edition (Code System: urn:oid:2.16.840.1.113883.3.520.3.18) (CONF:1169-34155).</sch:assert>
			<sch:assert id="a-1169-34156" test="@sdtc:valueSet='2.16.840.1.113883.3.520.4.20' or @sdtc:valueSet='2.16.840.1.113883.3.520.4.35'">This value SHALL contain exactly one [1..1] @sdtc:valueSet. The @sdtc:valueSet associated with the code for TNM Pathologic Stage Group SHALL be selected from:(a)  "Value Set OID 2.16.840.1.113883.3.520.4.20" (CodeSystem: TNM 7. Edition urn:oid:2.16.840.1.113883.15.6) or (b)  "Value Set OID 2.16.840.1.113883.3.520.4.35" (Code System: TNM 8. Edition urn:oid:2.16.840.1.113883.3.520.3.18)(CONF:1169-34156).</sch:assert>
			<sch:assert id="a-1169-34160-c" test="empty(cda:originalText/cda:reference[@value]) or (count($origTextValue)=1 and starts-with($origTextValue, '#') and count(//*[@ID=substring($origTextValue, 2)])=1)">This reference/@value SHALL begin with a '#' and SHALL point to its corresponding narrative (using the approach defined in CDA Release 2, section 4.3.5.1) (CONF:1169-34160).</sch:assert>
			<sch:assert id="a-1169-34161" test="count(cda:qualifier)=1">This value SHALL contain exactly one [1..1] qualifier (CONF:1169-34161).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.40-2015-02-05-branch-1169-34161-errors" context="cda:observation[cda:templateId[@root='2.16.840.1.113883.10.13.40' and @extension = '2015-02-05']]/cda:value[@xsi:type='CD']/cda:qualifier">
			<sch:assert id="a-1169-34162" test="count(cda:name)=1 and count(cda:name[empty(@nullFlavor) and @code='21903-0' and @codeSystem='2.16.840.1.113883.6.1'])=1">This qualifier SHALL contain exactly one [1..1] name (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:1169-34162). This name SHALL contain exactly one [1..1] @code="21903-0" Descriptor.pathology Cancer Narrative (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:1169-34163). This name SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.6.1" (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:1169-34164).</sch:assert>
			<sch:assert id="a-1169-34165" test="count(cda:value)=1">This qualifier SHALL contain exactly one [1..1] value (CONF:1169-34165).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.40-2015-02-05-branch-1169-34165-errors" context="cda:observation[cda:templateId[@root='2.16.840.1.113883.10.13.40' and @extension = '2015-02-05']]/cda:value[@xsi:type='CD']/cda:qualifier/cda:value">
			<sch:let name="origTextValue" value="cda:originalText/cda:reference/@value"/>
			<sch:assert id="a-1169-34168" test="@code=document('voc.xml')/voc:systems/voc:system[@valueSetOid='2.16.840.1.113883.3.520.4.21']/voc:code/@value">This value SHALL contain exactly one [1..1] @code, which SHALL be selected from ValueSet TNM Pathologic Stage Descriptor urn:oid:2.16.840.1.113883.3.520.4.21 (CONF:1169-34168).</sch:assert>
			<sch:assert id="a-1169-34169" test="@codeSystem='2.16.840.1.113883.15.6'">This value SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.15.6" (CodeSystem: TNM 7. Edition urn:oid:2.16.840.1.113883.15.6) (CONF:1169-34169).</sch:assert>
			<sch:assert id="a-1169-34171" test="@sdtc:valueSet='2.16.840.1.113883.3.520.4.21'">This value SHALL contain exactly one [1..1] @sdtc:valueSet="2.16.840.1.113883.3.520.4.21" (CodeSystem: TNM 7. Edition urn:oid:2.16.840.1.113883.15.6) (CONF:1169-34171).</sch:assert>
			<sch:assert id="a-1169-34173-c" test="empty(cda:originalText/cda:reference[@value]) or (count($origTextValue)=1 and starts-with($origTextValue, '#') and count(//*[@ID=substring($origTextValue, 2)])=1)">This reference/@value SHALL begin with a '#' and SHALL point to its corresponding narrative (using the approach defined in CDA Release 2, section 4.3.5.1) (CONF:1169-34173).</sch:assert>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.13.41-2015-02-05-errors">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.41-2015-02-05-errors-abstract" abstract="true">
			<sch:assert id="a-1169-34186" test="count(cda:templateId[@root='2.16.840.1.113883.10.13.41'][@extension='2015-02-05'])=1">SHALL contain exactly one [1..1] templateId (CONF:1169-34186) such that it SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.13.41" (CONF:1169-34189). SHALL contain exactly one [1..1] @extension="2015-02-05" (CONF:1169-34190).</sch:assert>
			<sch:assert id="a-1169-34187" test="@classCode='OBS'">SHALL contain exactly one [1..1] @classCode="OBS" Observation (CodeSystem: HL7ActClass urn:oid:2.16.840.1.113883.5.6) (CONF:1169-34187).</sch:assert>
			<sch:assert id="a-1169-34188" test="@moodCode='EVN'">SHALL contain exactly one [1..1] @moodCode="EVN" Event (CodeSystem: ActMood urn:oid:2.16.840.1.113883.5.1001) (CONF:1169-34188).</sch:assert>
			<sch:assert id="a-1169-34191" test="count(cda:code)=1 and count(cda:code[empty(@nullFlavor) and @code='21899-0' and @codeSystem='2.16.840.1.113883.6.1'])=1">SHALL contain exactly one [1..1] code (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:1169-34191). This code SHALL contain exactly one [1..1] @code="21899-0" Primary tumor.pathology Cancer (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:1169-34192). This code SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.6.1" (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1 STATIC) (CONF:1169-34193).</sch:assert>
			<sch:assert id="a-1169-34194" test="count(cda:value[@xsi:type='CD'])=1">SHALL contain exactly one [1..1] value with @xsi:type="CD" (CONF:1169-34194).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.41-2015-02-05-errors" context="cda:observation[cda:templateId[@root='2.16.840.1.113883.10.13.41' and @extension = '2015-02-05']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.41-2015-02-05-errors-abstract"/>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.41-2015-02-05-branch-1169-34194-errors" context="cda:observation[cda:templateId[@root='2.16.840.1.113883.10.13.41' and @extension = '2015-02-05']]/cda:value[@xsi:type='CD']">
			<sch:let name="origTextValue" value="cda:originalText/cda:reference/@value"/>

			<!--8/21/2019-->
			<sch:assert id="a-1169-34195" test="(@sdtc:valueSet='2.16.840.1.113883.3.520.4.17' and @code=document('voc.xml')/voc:systems/voc:system[@valueSetOid='2.16.840.1.113883.3.520.4.17']/voc:code/@value) or (@sdtc:valueSet='2.16.840.1.113883.3.520.4.37' and @code=document('voc.xml')/voc:systems/voc:system[@valueSetOid='2.16.840.1.113883.3.520.4.37']/voc:code/@value)">This value SHALL contain exactly one [1..1] @code, which SHALL be selected from:(a) ValueSet TNM Pathologic Tumor 7th Edition urn:oid:2.16.840.1.113883.3.520.4.17 or (b) ValueSet TNM Pathologic Tumor 8th Edition (urn:oid:2.16.840.1.113883.3.520.4.37) (CONF:1169-34195).</sch:assert>
			<!--<sch:assert id="a-1169-34195" test="@code=(document('voc.xml')/voc:systems/voc:system[@valueSetOid='2.16.840.1.113883.3.520.4.17']/voc:code/@value) or (document('voc.xml')/voc:systems/voc:system[@valueSetOid='2.16.840.1.113883.3.520.4.37']/voc:code/@value)">This value SHALL contain exactly one [1..1] @code, which SHALL be selected from:(a) ValueSet TNM Pathologic Tumor 7th Edition urn:oid:2.16.840.1.113883.3.520.4.17 or (b) ValueSet TNM Pathologic Tumor 8th Edition (urn:oid:2.16.840.1.113883.3.520.4.37) (CONF:1169-34195).</sch:assert>-->
			<sch:assert id="a-1169-34196" test="@codeSystem='2.16.840.1.113883.15.6' or @codeSystem='2.16.840.1.113883.3.520.3.18'">This value SHALL contain exactly one [1..1] @codeSystem. The @codeSystem associated with the code for TNM Pathologic Tumor SHALL be selected from:(a) TNM 7. Edition (CodeSystem: 2.16.840.1.113883.15.6) or (b) TNM 8. Edition (Code System: 2.16.840.1.113883.3.520.3.18) (CONF:1169-34196).</sch:assert>
			<sch:assert id="a-1169-34197" test="@sdtc:valueSet='2.16.840.1.113883.3.520.4.17' or @sdtc:valueSet='2.16.840.1.113883.3.520.4.37'">This value SHALL contain exactly one [1..1] @sdtc:valueSet. The @sdtc:valueSet associated with the code for TNM Pathologic Tumor SHALL be selected from:(a)  "Value Set OID 2.16.840.1.113883.3.520.4.17" (CodeSystem: TNM 7. Edition urn:oid:2.16.840.1.113883.15.6) or (b)  "Value Set OID 2.16.840.1.113883.3.520.4.37" (Code System: TNM 8. Edition urn:oid:2.16.840.1.113883.3.520.3.18) (CONF:1169-34197).</sch:assert>
			<sch:assert id="a-1169-34201-c" test="empty(cda:originalText/cda:reference[@value]) or (count($origTextValue)=1 and starts-with($origTextValue, '#') and count(//*[@ID=substring($origTextValue, 2)])=1)">This reference/@value SHALL begin with a '#' and SHALL point to its corresponding narrative (using the approach defined in CDA Release 2, section 4.3.5.1) (CONF:1169-34201).</sch:assert>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.13.42-2015-02-05-errors">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.42-2015-02-05-errors-abstract" abstract="true">
			<sch:assert id="a-1169-34202" test="count(cda:templateId[@root='2.16.840.1.113883.10.13.42'][@extension='2015-02-05'])=1">SHALL contain exactly one [1..1] templateId (CONF:1169-34202) such that it SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.13.42" (CONF:1169-34205). SHALL contain exactly one [1..1] @extension="2015-02-05" (CONF:1169-34206).</sch:assert>
			<sch:assert id="a-1169-34203" test="@classCode='OBS'">SHALL contain exactly one [1..1] @classCode="OBS" Observation (CodeSystem: HL7ActClass urn:oid:2.16.840.1.113883.5.6) (CONF:1169-34203).</sch:assert>
			<sch:assert id="a-1169-34204" test="@moodCode='EVN'">SHALL contain exactly one [1..1] @moodCode="EVN" Event (CodeSystem: ActMood urn:oid:2.16.840.1.113883.5.1001) (CONF:1169-34204).</sch:assert>
			<sch:assert id="a-1169-34207" test="count(cda:code)=1 and count(cda:code[empty(@nullFlavor) and @code='21900-6' and @codeSystem='2.16.840.1.113883.6.1'])=1">SHALL contain exactly one [1..1] code (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:1169-34207). This code SHALL contain exactly one [1..1] @code="21900-6" Regional lymph nodes.pathology [Class] Cancer (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:1169-34208). This code SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.6.1" (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:1169-34209).</sch:assert>
			<sch:assert id="a-1169-34210" test="count(cda:value[@xsi:type='CD'])=1">SHALL contain exactly one [1..1] value with @xsi:type="CD" (CONF:1169-34210).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.42-2015-02-05-errors" context="cda:observation[cda:templateId[@root='2.16.840.1.113883.10.13.42' and @extension = '2015-02-05']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.42-2015-02-05-errors-abstract"/>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.42-2015-02-05-branch-1169-34210-errors" context="cda:observation[cda:templateId[@root='2.16.840.1.113883.10.13.42' and @extension = '2015-02-05']]/cda:value[@xsi:type='CD']">
			<sch:let name="origTextValue" value="cda:originalText/cda:reference/@value"/>

			<!--8/21/2019-->
			<sch:assert id="a-1169-34211" test="(@sdtc:valueSet='2.16.840.1.113883.3.520.4.18' and @code=document('voc.xml')/voc:systems/voc:system[@valueSetOid='2.16.840.1.113883.3.520.4.18']/voc:code/@value) or (@sdtc:valueSet='2.16.840.1.113883.3.520.4.38' and @code=document('voc.xml')/voc:systems/voc:system[@valueSetOid='2.16.840.1.113883.3.520.4.38']/voc:code/@value)">This value SHALL contain exactly one [1..1] @code, which SHALL be selected from:(a) ValueSet TNM Pathologic Node 7th Edition urn:oid:2.16.840.1.113883.3.520.4.18 or (b) ValueSet TNM Pathologic Node 8th Edition (urn:oid:2.16.840.1.113883.3.520.4.38)  (CONF:1169-34211).</sch:assert>
			<sch:assert id="a-1169-34212" test="@codeSystem='2.16.840.1.113883.15.6' or @codeSystem='2.16.840.1.113883.3.520.3.18'">This value SHALL contain exactly one [1..1] @codeSystem. The @codeSystem associated with the code for TNM Pathologic Node SHALL be selected from:(a) TNM 7. Edition (CodeSystem: 2.16.840.1.113883.15.6) or (b) TNM 8. Edition (Code System: 2.16.840.1.113883.3.520.3.18)(CONF:1169-34212).</sch:assert>
			<sch:assert id="a-1169-34216" test="@sdtc:valueSet='2.16.840.1.113883.3.520.4.18' or @sdtc:valueSet='2.16.840.1.113883.3.520.4.38'">This value SHALL contain exactly one [1..1] @sdtc:valueSet. The @sdtc:valueSet associated with the code for TNM Pathologic Node SHALL be selected from:(a)  "Value Set OID 2.16.840.1.113883.3.520.4.18" (CodeSystem: TNM 7. Edition urn:oid:2.16.840.1.113883.15.6) or (b) "Value Set OID 2.16.840.1.113883.3.520.4.38" (Code System: TNM 8. Edition urn:oid:2.16.840.1.113883.3.520.3.18)(CONF:1169-34216).</sch:assert>
			<sch:assert id="a-1169-34217-c" test="empty(cda:originalText/cda:reference[@value]) or (count($origTextValue)=1 and starts-with($origTextValue, '#') and count(//*[@ID=substring($origTextValue, 2)])=1)">This reference/@value SHALL begin with a '#' and SHALL point to its corresponding narrative (using the approach defined in CDA Release 2, section 4.3.5.1) (CONF:1169-34217).</sch:assert>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.13.43-2015-02-05-errors">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.43-2015-02-05-errors-abstract" abstract="true">
			<sch:assert id="a-1169-34218" test="count(cda:templateId[@root='2.16.840.1.113883.10.13.43'][@extension='2015-02-05'])=1">SHALL contain exactly one [1..1] templateId (CONF:1169-34218) such that it SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.13.43" (CONF:1169-34221). SHALL contain exactly one [1..1] @extension="2015-02-05" (CONF:1169-34222).</sch:assert>
			<sch:assert id="a-1169-34219" test="@classCode='OBS'">SHALL contain exactly one [1..1] @classCode="OBS" Observation (CodeSystem: HL7ActClass urn:oid:2.16.840.1.113883.5.6) (CONF:1169-34219).</sch:assert>
			<sch:assert id="a-1169-34220" test="@moodCode='EVN'">SHALL contain exactly one [1..1] @moodCode="EVN" Event (CodeSystem: ActMood urn:oid:2.16.840.1.113883.5.1001) (CONF:1169-34220).</sch:assert>
			<sch:assert id="a-1169-34223" test="count(cda:code)=1 and count(cda:code[empty(@nullFlavor) and @code='21901-4' and @codeSystem='2.16.840.1.113883.6.1'])=1">SHALL contain exactly one [1..1] code (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:1169-34223). This code SHALL contain exactly one [1..1] @code="21901-4" Distant metastases.pathology [Class] Cancer (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:1169-34224). This code SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.6.1" (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:1169-34225).</sch:assert>
			<sch:assert id="a-1169-34226" test="count(cda:value[@xsi:type='CD'])=1">SHALL contain exactly one [1..1] value with @xsi:type="CD" (CONF:1169-34226).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.43-2015-02-05-errors" context="cda:observation[cda:templateId[@root='2.16.840.1.113883.10.13.43' and @extension = '2015-02-05']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.43-2015-02-05-errors-abstract"/>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.43-2015-02-05-branch-1169-34226-errors" context="cda:observation[cda:templateId[@root='2.16.840.1.113883.10.13.43' and @extension = '2015-02-05']]/cda:value[@xsi:type='CD']">
			<sch:let name="origTextValue" value="cda:originalText/cda:reference/@value"/>

			<!--8/21/2019-->
			<sch:assert id="a-1169-34227" test="(@sdtc:valueSet='2.16.840.1.113883.3.520.4.19' and @code=document('voc.xml')/voc:systems/voc:system[@valueSetOid='2.16.840.1.113883.3.520.4.19']/voc:code/@value) or (@sdtc:valueSet='2.16.840.1.113883.3.520.4.39' and @code=document('voc.xml')/voc:systems/voc:system[@valueSetOid='2.16.840.1.113883.3.520.4.39']/voc:code/@value)">This value SHALL contain exactly one [1..1] @code, which SHALL be selected from:(a) ValueSet TNM Pathologic Metastasis 7th Edition (urn:oid:2.16.840.1.113883.3.520.4.19) or (b) ValueSet TNM Pathologic Metastasis 8th Edition (urn:oid:2.16.840.1.113883.3.520.4.39) (CONF:1169-34227).</sch:assert>
			<sch:assert id="a-1169-34228" test="@codeSystem='2.16.840.1.113883.15.6' or @codeSystem='2.16.840.1.113883.3.520.3.18'">This value SHALL contain exactly one [1..1] @codeSystem. The @codeSystem associated with the code for TNM Pathologic Metastasis SHALL be selected from:(a) TNM 7. Edition (CodeSystem: 2.16.840.1.113883.15.6) or (b) TNM 8. Edition (Code System: 2.16.840.1.113883.3.520.3.18) (CONF:1169-34228).</sch:assert>
			<sch:assert id="a-1169-34229" test="@sdtc:valueSet='2.16.840.1.113883.3.520.4.19' or @sdtc:valueSet='2.16.840.1.113883.3.520.4.39'">This value SHALL contain exactly one [1..1] @sdtc:valueSet.The @sdtc:valueSet associated with the code for TNM Pathologic Metastasis SHALL be selected from:(a)  "Value Set OID 2.16.840.1.113883.3.520.4.19" (CodeSystem: TNM 7. Edition urn:oid:2.16.840.1.113883.15.6) or (b)  "Value Set OID 2.16.840.1.113883.3.520.4.39" (Code System: TNM 8. Edition urn:oid:2.16.840.1.113883.3.520.3.18) (CONF:1169-34229).</sch:assert>
			<sch:assert id="a-1169-34233-c" test="empty(cda:originalText/cda:reference[@value]) or (count($origTextValue)=1 and starts-with($origTextValue, '#') and count(//*[@ID=substring($origTextValue, 2)])=1)">This reference/@value SHALL begin with a '#' and SHALL point to its corresponding narrative (using the approach defined in CDA Release 2, section 4.3.5.1) (CONF:1169-34233).</sch:assert>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.13.44-2015-02-05-errors">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.44-2015-02-05-errors-abstract" abstract="true">
			<sch:assert id="a-1169-34234" test="count(cda:templateId[@root='2.16.840.1.113883.10.13.44'][@extension='2015-02-05'])=1">SHALL contain exactly one [1..1] templateId (CONF:1169-34234) such that it SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.13.44" (CONF:1169-34237). SHALL contain exactly one [1..1] @extension="2015-02-05" (CONF:1169-34238).</sch:assert>
			<sch:assert id="a-1169-34235" test="@classCode='OBS'">SHALL contain exactly one [1..1] @classCode="OBS" Observation (CodeSystem: HL7ActClass urn:oid:2.16.840.1.113883.5.6) (CONF:1169-34235).</sch:assert>
			<sch:assert id="a-1169-34236" test="@moodCode='EVN'">SHALL contain exactly one [1..1] @moodCode="EVN" Event (CodeSystem: ActMood urn:oid:2.16.840.1.113883.5.1001) (CONF:1169-34236).</sch:assert>
			<sch:assert id="a-1169-34239" test="count(cda:code)=1 and count(cda:code[empty(@nullFlavor) and @code='21904-8' and @codeSystem='2.16.840.1.113883.6.1'])=1">SHALL contain exactly one [1..1] code (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:1169-34239). This code SHALL contain exactly one [1..1] @code="21904-8" Stager.pathology Cancer (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:1169-34241). This code SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.6.1" (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:1169-34242).</sch:assert>
			<sch:assert id="a-1169-34240" test="count(cda:value[@xsi:type='CD'])=1">SHALL contain exactly one [1..1] value with @xsi:type="CD" (CONF:1169-34240).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.44-2015-02-05-errors" context="cda:observation[cda:templateId[@root='2.16.840.1.113883.10.13.44' and @extension = '2015-02-05']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.44-2015-02-05-errors-abstract"/>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.44-2015-02-05-branch-1169-34226-errors" context="cda:observation[cda:templateId[@root='2.16.840.1.113883.10.13.44' and @extension = '2015-02-05']]/cda:value[@xsi:type='CD']">
			<sch:let name="origTextValue" value="cda:originalText/cda:reference/@value"/>
			<sch:assert id="a-1169-34243" test="exists(@code)">This value SHALL contain exactly one [1..1] @code, which SHALL be selected from ValueSet NAACCR TNM Pathologic Staged By urn:oid:2.16.840.1.113883.3.520.4.27 DYNAMIC (CONF:1169-34243).</sch:assert>
			<sch:assert id="a-1169-34244" test="@codeSystem='2.16.840.1.113883.3.520.3.17'">This value SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.3.520.3.17" NAACCR TNM Pathologic Staged By (CodeSystem: NAACCR TNM Pathologic Staged By urn:oid:2.16.840.1.113883.3.520.3.17) (CONF:1169-34244).</sch:assert>
			<sch:assert id="a-1169-34245" test="@sdtc:valueSet='2.16.840.1.113883.3.520.4.27'">This value SHALL contain exactly one [1..1] @sdtc:valueSet="2.16.840.1.113883.3.520.4.27" NAACCR TNM Pathologic Staged By (CONF:1169-34245).</sch:assert>
			<sch:assert id="a-1169-34249-c" test="empty(cda:originalText/cda:reference[@value]) or (count($origTextValue)=1 and starts-with($origTextValue, '#') and count(//*[@ID=substring($origTextValue, 2)])=1)">This reference/@value SHALL begin with a '#' and SHALL point to its corresponding narrative (using the approach defined in CDA Release 2, section 4.3.5.1) (CONF:1169-34249).</sch:assert>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.13.7-2015-02-06-errors">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.7-2015-02-06-errors-abstract" abstract="true">
			<sch:assert id="a-1169-33121" test="count(cda:statusCode)=1 and count(cda:statusCode[empty(@nullFlavor) and @code='completed'])=1">SHALL contain exactly one [1..1] statusCode (CodeSystem: ActStatus urn:oid:2.16.840.1.113883.5.14 STATIC) (CONF:1169-33121). This statusCode SHALL contain exactly one [1..1] @code="completed" Completed (CodeSystem: ActStatus urn:oid:2.16.840.1.113883.5.14 STATIC) (CONF:1169-33151).</sch:assert>
			<sch:assert id="a-1169-33122" test="count(cda:effectiveTime)=1">SHALL contain exactly one [1..1] effectiveTime (CONF:1169-33122).</sch:assert>
			<sch:assert id="a-1169-33123" test="count(cda:effectiveTime[count(cda:low)=1])=1">The effectiveTime/low documents when detailed site-specific information on the progression of disease for the cancer/tumor was recorded.
This effectiveTime SHALL contain exactly one [1..1] low (CONF:1169-33123).</sch:assert>
			<sch:assert id="a-1169-33170" test="count(cda:code)=1 and count(cda:code[empty(@nullFlavor) and @code='75621-3' and @codeSystem='2.16.840.1.113883.6.1'])=1">SHALL contain exactly one [1..1] code (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:1169-33170). This code SHALL contain exactly one [1..1] @code="75621-3" TNM pathologic staging after surgery panel Cancer (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:1169-33657). This code SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.6.1" (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:1169-33658).</sch:assert>
			<sch:assert id="a-1169-33468" test="count(cda:entryRelationship)=1 and count(cda:entryRelationship[@typeCode='COMP'][count(cda:observation[cda:templateId[@root='2.16.840.1.113883.10.13.40' and @extension = '2015-02-05']])=1])=1">SHALL contain exactly one [1..1] entryRelationship (CONF:1169-33468).
Note: This entryRelationship provides information on the TNM Pathologic Stage Group. This entryRelationship SHALL contain exactly one [1..1] @typeCode="COMP" Component (CodeSystem: HL7ActRelationshipType urn:oid:2.16.840.1.113883.5.1002) (CONF:1169-33471). This entryRelationship SHALL contain exactly one [1..1] TNM Pathologic Stage Group (identifier: urn:hl7ii:2.16.840.1.113883.10.13.40:2015-02-05) (CONF:1169-33469).</sch:assert>
			<sch:assert id="a-1169-33167" test="@classCode='OBS'">SHALL contain exactly one [1..1] @classCode="OBS" Observation (CodeSystem: HL7ActClass urn:oid:2.16.840.1.113883.5.6 STATIC) (CONF:1169-33167).</sch:assert>
			<sch:assert id="a-1169-33168" test="@moodCode='EVN'">SHALL contain exactly one [1..1] @moodCode="EVN" Event (CodeSystem: ActMood urn:oid:2.16.840.1.113883.5.1001 STATIC) (CONF:1169-33168).</sch:assert>
			<sch:assert id="a-1169-33169" test="exists(cda:id)">SHALL contain at least one [1..*] id (CONF:1169-33169).</sch:assert>
			<sch:assert id="a-1169-33189" test="empty(@nullFlavor)">SHALL NOT contain [0..0] @nullFlavor (CONF:1169-33189).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.7-2015-02-06-errors" context="cda:observation[cda:templateId[@root='2.16.840.1.113883.10.13.7' and @extension = '2015-02-06']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.7-2015-02-06-errors-abstract"/>
			<sch:assert id="a-1169-33117" test="count(cda:templateId[@root='2.16.840.1.113883.10.13.7'][@extension='2015-02-06'])=1">SHALL contain exactly one [1..1] templateId (CONF:1169-33117) such that it SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.13.7" (CONF:1169-33149). SHALL contain exactly one [1..1] @extension="2015-02-06" (CONF:1169-33977).</sch:assert>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.13.31-2015-04-02-errors">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.31-2015-04-02-errors-abstract" abstract="true">
			<sch:assert id="a-1169-33731" test="count(cda:code)=1 and count(cda:code[empty(@nullFlavor) and @code='75620-5' and @codeSystem='2.16.840.1.113883.6.1'])=1">SHALL contain exactly one [1..1] code (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:1169-33731). This code SHALL contain exactly one [1..1] @code="75620-5" TNM clinical staging before treatment panel Cancer (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:1169-33775). This code SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.6.1" (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:1169-33776).</sch:assert>
			<sch:assert id="a-1169-33772" test="@classCode='OBS'">SHALL contain exactly one [1..1] @classCode="OBS" Observation (CodeSystem: HL7ActClass urn:oid:2.16.840.1.113883.5.6 STATIC) (CONF:1169-33772).</sch:assert>
			<sch:assert id="a-1169-33773" test="@moodCode='EVN'">SHALL contain exactly one [1..1] @moodCode="EVN" Event (CodeSystem: ActMood urn:oid:2.16.840.1.113883.5.1001 STATIC) (CONF:1169-33773).</sch:assert>
			<sch:assert id="a-1169-33777" test="empty(@nullFlavor)">SHALL NOT contain [0..0] @nullFlavor (CONF:1169-33777).</sch:assert>
			<sch:assert id="a-1169-33780" test="@negationInd='true'">SHALL contain exactly one [1..1] @negationInd="true" (CONF:1169-33780).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.31-2015-04-02-errors" context="cda:observation[cda:templateId[@root='2.16.840.1.113883.10.13.31' and @extension = '2015-04-02']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.31-2015-04-02-errors-abstract"/>
			<sch:assert id="a-1169-33727" test="count(cda:templateId[@root='2.16.840.1.113883.10.13.31'][@extension='2015-04-02'])=1">SHALL contain exactly one [1..1] templateId (CONF:1169-33727) such that it SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.13.31" (CONF:1169-33769). SHALL contain exactly one [1..1] @extension="2015-04-02" (CONF:1169-34367).</sch:assert>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.13.32-2015-04-02-errors">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.32-2015-04-02-errors-abstract" abstract="true">
			<sch:assert id="a-1169-33809" test="count(cda:code)=1 and count(cda:code[empty(@nullFlavor) and @code='75621-3' and @codeSystem='2.16.840.1.113883.6.1'])=1">SHALL contain exactly one [1..1] code (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:1169-33809). This code SHALL contain exactly one [1..1] @code="75621-3" TNM pathologic staging after surgery panel Cancer (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:1169-33855). This code SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.6.1" (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:1169-33856).</sch:assert>
			<sch:assert id="a-1169-33852" test="@classCode='OBS'">SHALL contain exactly one [1..1] @classCode="OBS" Observation (CodeSystem: HL7ActClass urn:oid:2.16.840.1.113883.5.6 STATIC) (CONF:1169-33852).</sch:assert>
			<sch:assert id="a-1169-33853" test="@moodCode='EVN'">SHALL contain exactly one [1..1] @moodCode="EVN" Event (CodeSystem: ActMood urn:oid:2.16.840.1.113883.5.1001 STATIC) (CONF:1169-33853).</sch:assert>
			<sch:assert id="a-1169-34369" test="empty(@nullFlavor)">SHALL NOT contain [0..0] @nullFlavor (CONF:1169-34369).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.32-2015-04-02-errors" context="cda:observation[cda:templateId[@root='2.16.840.1.113883.10.13.32' and @extension = '2015-04-02']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.32-2015-04-02-errors-abstract"/>
			<sch:assert id="a-1169-33805" test="count(cda:templateId[@root='2.16.840.1.113883.10.13.32'][@extension='2015-04-02'])=1">SHALL contain exactly one [1..1] templateId (CONF:1169-33805) such that it SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.13.32" (CONF:1169-33849). SHALL contain exactly one [1..1] @extension="2015-04-02" (CONF:1169-34368).</sch:assert>
			<sch:assert id="a-1169-33858" test="@negationInd='true'">SHALL contain exactly one [1..1] @negationInd="true" (CONF:1169-33858).</sch:assert>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-oid-2.16.840.1.113883.10.20.22.5.1-warnings">
		<sch:rule id="r-urn-oid-2.16.840.1.113883.10.20.22.5.1-warnings-abstract" abstract="true"/>
	</sch:pattern>
	<sch:pattern id="p-urn-oid-2.16.840.1.113883.10.20.22.5.2-warnings">
		<sch:rule id="r-urn-oid-2.16.840.1.113883.10.20.22.5.2-warnings-abstract" abstract="true">
			<sch:assert id="a-81-7290" test="@use=document('voc.xml')/voc:systems/voc:system[@valueSetOid='2.16.840.1.113883.1.11.10637']/voc:code/@value">SHOULD contain zero or one [0..1] @use, which SHALL be selected from ValueSet PostalAddressUse urn:oid:2.16.840.1.113883.1.11.10637 STATIC 2005-05-01 (CONF:81-7290).</sch:assert>
			<sch:assert id="a-81-7293" test="(count(cda:state)=1 and (count(cda:country[text()='US'])=1 or empty(cda:country))) or count(cda:country[text()!='US'])=1">SHOULD contain zero or one [0..1] state (ValueSet: StateValueSet urn:oid:2.16.840.1.113883.3.88.12.80.1 DYNAMIC) (CONF:81-7293). State is required if the country is US. If country is not specified, it's assumed to be US. If country is something other than US, the state MAY be present but MAY be bound to different vocabularies (CONF:81-10024).</sch:assert>
			<sch:assert id="a-81-7294" test="(count(cda:postalCode)=1 and (count(cda:country[text()='US'])=1 or empty(cda:country))) or count(cda:country[text()!='US'])=1">SHOULD contain zero or one [0..1] postalCode, which SHOULD be selected from ValueSet PostalCode urn:oid:2.16.840.1.113883.3.88.12.80.2 DYNAMIC (CONF:81-7294). PostalCode is required if the country is US. If country is not specified, it's assumed to be US. If country is something other than US, the postalCode MAY be present but MAY be bound to different vocabularies (CONF:81-10025).</sch:assert>
			<sch:assert id="a-81-7295" test="count(cda:country)=1">SHOULD contain zero or one [0..1] country, which SHALL be selected from ValueSet Country urn:oid:2.16.840.1.113883.3.88.12.80.63 DYNAMIC (CONF:81-7295).</sch:assert>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-oid-2.16.840.1.113883.10.20.22.4.32-warnings">
		<sch:rule id="r-urn-oid-2.16.840.1.113883.10.20.22.4.32-warnings-abstract" abstract="true">
			<sch:assert id="a-81-7760" test="exists(cda:addr)">SHOULD contain zero or more [0..*] addr (CONF:81-7760).</sch:assert>
			<sch:assert id="a-81-7761" test="exists(cda:telecom)">SHOULD contain zero or more [0..*] telecom (CONF:81-7761).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-oid-2.16.840.1.113883.10.20.22.4.32-warnings" context="cda:participantRole[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.32']]">
			<sch:extends rule="r-urn-oid-2.16.840.1.113883.10.20.22.4.32-warnings-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-oid-2.16.840.1.113883.10.20.22.5.1.1-warnings">
		<sch:rule id="r-urn-oid-2.16.840.1.113883.10.20.22.5.1.1-warnings-abstract" abstract="true"/>
	</sch:pattern>
	<sch:pattern id="p-urn-oid-2.16.840.1.113883.10.20.22.5.4-warnings">
		<sch:rule id="r-urn-oid-2.16.840.1.113883.10.20.22.5.4-warnings-abstract" abstract="true">
			<sch:assert id="a-81-10128-c" test="exists(@nullFlavor) or string-length(@value) ge 12">SHOULD be precise to the minute (CONF:81-10128).</sch:assert>
			<sch:assert id="a-81-10130-c" test="string-length(@value) lt 10 or (string-length(@value) ge 10 and (contains(@value,'+') or contains(@value,'-')))">If more precise than day, SHOULD include time-zone offset (CONF:81-10130).</sch:assert>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.20.22.2.17-2014-06-09-warnings">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.17-2014-06-09-warnings-abstract" abstract="true">
			<sch:assert id="a-1098-14823" test="exists(cda:entry[count(cda:observation[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.78' and @extension = '2014-06-09']])=1])">SHOULD contain zero or more [0..*] entry (CONF:1098-14823) such that it SHALL contain exactly one [1..1] Smoking Status - Meaningful Use (V2) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.4.78:2014-06-09) (CONF:1098-14824).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.17-2014-06-09-warnings" context="cda:section[cda:templateId[@root='2.16.840.1.113883.10.20.22.2.17' and @extension = '2014-06-09']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.17-2014-06-09-warnings-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.16-2014-06-09-warnings">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.16-2014-06-09-warnings-abstract" abstract="true">
			<sch:assert id="a-1098-32775" test="count(cda:effectiveTime[exists(@value) or count(cda:low)=1])=1">SHOULD contain zero or one [0..1] @value (CONF:1098-32775). Note: indicates a single-administration timestamp
SHOULD contain zero or one [0..1] low (CONF:1098-32776). Note: indicates when medication started
			</sch:assert>
			<sch:assert id="a-1098-7513-c" test="count(cda:effectiveTime[@operator='A'][@xsi:type='PIVL_TS' or @xsi:type='EIVL_TS'])=1">SHOULD contain zero or one [0..1] effectiveTime (CONF:1098-7513) such that it
Note: This effectiveTime represents the medication frequency (e.g., administration times per day). SHALL contain exactly one [1..1] @operator="A" (CONF:1098-9106). SHALL contain exactly one [1..1] @xsi:type="PIVL_TS" or "EIVL_TS" (CONF:1098-28499).</sch:assert>
			<sch:assert id="a-1098-7514" test="count(cda:routeCode)=1">SHOULD contain zero or one [0..1] routeCode, which SHALL be selected from ValueSet Medication Route FDA urn:oid:2.16.840.1.113883.3.88.12.3221.8.7 DYNAMIC (CONF:1098-7514).</sch:assert>
			<sch:assert id="a-1098-7526" test="count(cda:doseQuantity/@unit)=1">This doseQuantity SHOULD contain zero or one [0..1] @unit, which SHALL be selected from ValueSet UnitsOfMeasureCaseSensitive urn:oid:2.16.840.1.113883.1.11.12839 DYNAMIC (CONF:1098-7526).</sch:assert>
			<sch:assert id="a-1098-30800-c" test="count(cda:doseQuantity | cda:rateQuantity)=1">Medication Activity SHOULD include doseQuantity OR rateQuantity (CONF:1098-30800).</sch:assert>
			<sch:assert id="a-1098-31150" test="exists(cda:author[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.119']])">SHOULD contain zero or more [0..*] Author Participation (identifier: urn:oid:2.16.840.1.113883.10.20.22.4.119) (CONF:1098-31150).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.16-2014-06-09-warnings" context="cda:substanceAdministration[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.16' and @extension = '2014-06-09']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.16-2014-06-09-warnings-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.20.22.2.1-2014-06-09-warnings">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.1-2014-06-09-warnings-abstract" abstract="true">
			<sch:assert id="a-1098-7795" test="exists(cda:entry[count(cda:substanceAdministration[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.16' and @extension = '2014-06-09']])=1])">SHOULD contain zero or more [0..*] entry (CONF:1098-7795) such that it SHALL contain exactly one [1..1] Medication Activity (V2) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.4.16:2014-06-09) (CONF:1098-10076).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.1-2014-06-09-warnings" context="cda:section[cda:templateId[@root='2.16.840.1.113883.10.20.22.2.1' and @extension = '2014-06-09']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.1-2014-06-09-warnings-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.20.22.2.1.1-2014-06-09-warnings">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.1.1-2014-06-09-warnings-abstract" abstract="true">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.1-2014-06-09-warnings-abstract"/>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.1.1-2014-06-09-warnings" context="cda:section[cda:templateId[@root='2.16.840.1.113883.10.20.22.2.1.1' and @extension = '2014-06-09']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.1.1-2014-06-09-warnings-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.20.22.1.1-2014-06-09-warnings">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.1.1-2014-06-09-warnings-abstract" abstract="true">
			<sch:assert id="a-1098-5579" test="count(cda:legalAuthenticator)=1">Heading: legalAuthenticator
The legalAuthenticator identifies the single person legally responsible for the document and must be present if the document has been legally authenticated. A clinical document that does not contain this element has not been legally authenticated.
The act of legal authentication requires a certain privilege be granted to the legal authenticator depending upon local policy. Based on local practice, clinical documents may be released before legal authentication.  
All clinical documents have the potential for legal authentication, given the appropriate credentials.
Local policies MAY choose to delegate the function of legal authentication to a device or system that generates the clinical document. In these cases, the legal authenticator is a person accepting responsibility for the document, not the generating device or system.
Note that the legal authenticator, if present, must be a person.
SHOULD contain zero or one [0..1] legalAuthenticator (CONF:1098-5579).</sch:assert>
			<sch:assert id="a-1098-5259-v" test="count(cda:confidentialityCode[@code=document('voc.xml')/voc:systems/voc:system[@valueSetOid='2.16.840.1.113883.1.11.16926']/voc:code/@value or exists(@nullFlavor)])=1">SHALL contain exactly one [1..1] confidentialityCode, which SHOULD be selected from ValueSet HL7 BasicConfidentialityKind urn:oid:2.16.840.1.113883.1.11.16926 STATIC 2010-04-21 (CONF:1098-5259).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.1.1-2014-06-09-warnings" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.20.22.1.1' and @extension = '2014-06-09']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.1.1-2014-06-09-warnings-abstract"/>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.1.1-2014-06-09-branch-1098-5280-warnings" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.20.22.1.1' and @extension = '2014-06-09']]/cda:recordTarget/cda:patientRole/cda:telecom">
			<sch:assert id="a-1098-5375" test="exists(@use)">Such telecoms SHOULD contain zero or one [0..1] @use, which SHALL be selected from ValueSet Telecom Use (US Realm Header) urn:oid:2.16.840.1.113883.11.20.9.20 DYNAMIC (CONF:1098-5375).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.1.1-2014-06-09-branch-1098-5417-warnings" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.20.22.1.1' and @extension = '2014-06-09']]/cda:recordTarget/cda:patientRole/cda:providerOrganization">
			<sch:assert id="a-1098-16820" test="exists(cda:id[@root='2.16.840.1.113883.4.6' and (exists(@nullFlavor) or matches(@extension, '^\d{10}$'))])">Such ids SHOULD contain zero or one [0..1] @root="2.16.840.1.113883.4.6" National Provider Identifier (CONF:1098-16820).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.1.1-2014-06-09-branch-1098-5420-warnings" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.20.22.1.1' and @extension = '2014-06-09']]/cda:recordTarget/cda:patientRole/cda:providerOrganization/cda:telecom">
			<sch:assert id="a-1098-7994" test="exists(@use)">Such telecoms SHOULD contain zero or one [0..1] @use, which SHALL be selected from ValueSet Telecom Use (US Realm Header) urn:oid:2.16.840.1.113883.11.20.9.20 DYNAMIC (CONF:1098-7994).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.1.1-2014-06-09-branch-1098-5595-warnings" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.20.22.1.1' and @extension = '2014-06-09']]/cda:legalAuthenticator/cda:assignedEntity/cda:telecom">
			<sch:assert id="a-1098-7999" test="exists(@use)">Such telecoms SHOULD contain zero or one [0..1] @use, which SHALL be selected from ValueSet Telecom Use (US Realm Header) urn:oid:2.16.840.1.113883.11.20.9.20 DYNAMIC (CONF:1098-7999).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.1.1-2014-06-09-branch-1098-5613-warnings" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.20.22.1.1' and @extension = '2014-06-09']]/cda:authenticator/cda:assignedEntity/cda:id">
			<sch:assert id="a-1098-16824" test="@root='2.16.840.1.113883.4.6' and (exists(@nullFlavor) or matches(@extension, '^\d{10}$'))">Such ids SHOULD contain zero or one [0..1] @root="2.16.840.1.113883.4.6" National Provider Identifier (CONF:1098-16824).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.1.1-2014-06-09-branch-1098-5622-warnings" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.20.22.1.1' and @extension = '2014-06-09']]/cda:authenticator/cda:assignedEntity/cda:telecom">
			<sch:assert id="a-1098-8000" test="exists(@use)">Such telecoms SHOULD contain zero or one [0..1] @use, which SHALL be selected from ValueSet Telecom Use (US Realm Header) urn:oid:2.16.840.1.113883.11.20.9.20 DYNAMIC (CONF:1098-8000).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.1.1-2014-06-09-branch-1098-10003-warnings" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.20.22.1.1' and @extension = '2014-06-09']]/cda:participant">  
			<sch:assert id="a-1098-10007-c" test="(@typeCode='IND' and exists(cda:associatedEntity[@classCode=document('voc.xml')/voc:systems/voc:system[@valueSetOid='2.16.840.1.113883.11.20.9.33']/voc:code/@value or exists(@nullFlavor)])) or @typeCode!='IND'">When participant/@typeCode is IND, associatedEntity/@classCode SHOULD be selected from ValueSet urn:oid:2.16.840.1.113883.11.20.9.33 INDRoleclassCodes STATIC 2011-09-30 (CONF:1098-10007).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.1.1-2014-06-09-branch-1098-5283-warnings" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.20.22.1.1' and @extension = '2014-06-09']]/cda:recordTarget/cda:patientRole/cda:patient">
			<sch:assert id="a-1098-5300-c" test="exists(@nullFlavor) or string-length(cda:birthTime/@value) ge 8">SHOULD be precise to day (CONF:1098-5300).</sch:assert>
			<sch:assert id="a-1098-5303" test="count(cda:maritalStatusCode[exists(@nullFlavor) or (@codeSystem='2.16.840.1.113883.5.2' and @code=document('voc.xml')/voc:systems/voc:system[@valueSetOid='2.16.840.1.113883.1.11.12212']/voc:code/@value)])=1">This patient SHOULD contain zero or one [0..1] maritalStatusCode, which SHALL be selected from ValueSet Marital Status urn:oid:2.16.840.1.113883.1.11.12212 DYNAMIC (CONF:1098-5303).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.1.1-2014-06-09-branch-1098-5406-warnings" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.20.22.1.1' and @extension = '2014-06-09']]/cda:recordTarget/cda:patientRole/cda:patient/cda:languageCommunication">
			<sch:assert id="a-1098-9965" test="count(cda:proficiencyLevelCode)=1">Such languageCommunications SHOULD contain zero or one [0..1] proficiencyLevelCode, which SHALL be selected from ValueSet LanguageAbilityProficiency urn:oid:2.16.840.1.113883.1.11.12199 DYNAMIC (CONF:1098-9965).</sch:assert>
			<sch:assert id="a-1098-5414" test="count(cda:preferenceInd)=1">Such languageCommunications SHOULD contain zero or one [0..1] preferenceInd (CONF:1098-5414).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.1.1-2014-06-09-branch-1098-5397-warnings" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.20.22.1.1' and @extension = '2014-06-09']]/cda:recordTarget/cda:patientRole/cda:patient/cda:birthplace/cda:place/cda:addr">
			<sch:assert id="a-1098-5404" test="count(cda:country)=1">This addr SHOULD contain zero or one [0..1] country, which SHALL be selected from ValueSet Country urn:oid:2.16.840.1.113883.3.88.12.80.63 DYNAMIC (CONF:1098-5404).</sch:assert>
			<sch:assert id="a-1098-5402-c" test="(count(cda:country[text()='US'])=1 and count(cda:state)=1) or count(cda:country[text()!='US'])=1">If country is US, this addr SHOULD contain zero to one [0..1] state, which SHALL be selected from ValueSet StateValueSet 2.16.840.1.113883.3.88.12.80.1 DYNAMIC (CONF:1098-5402).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.1.1-2014-06-09-branch-1098-5325-warnings" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.20.22.1.1' and @extension = '2014-06-09']]/cda:recordTarget/cda:patientRole/cda:patient/cda:guardian">
			<sch:assert id="a-1098-5326" test="count(cda:code)=1">The guardian, if present, SHOULD contain zero or one [0..1] code, which SHALL be selected from ValueSet Personal And Legal Relationship Role Type urn:oid:2.16.840.1.113883.11.20.12.1 DYNAMIC (CONF:1098-5326).</sch:assert>
			<sch:assert id="a-1098-5359-c" test="exists(cda:addr)">The guardian, if present, SHOULD contain zero or more [0..*] US Realm Address (AD.US.FIELDED) (identifier: urn:oid:2.16.840.1.113883.10.20.22.5.2) (CONF:1098-5359).</sch:assert>
			<sch:assert id="a-1098-5382" test="exists(cda:telecom)">The guardian, if present, SHOULD contain zero or more [0..*] telecom (CONF:1098-5382).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.1.1-2014-06-09-branch-1098-5382-warnings" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.20.22.1.1' and @extension = '2014-06-09']]/cda:recordTarget/cda:patientRole/cda:patient/cda:guardian/cda:telecom">
			<sch:assert id="a-1098-7993" test="exists(@use)">The telecom, if present, SHOULD contain zero or one [0..1] @use, which SHALL be selected from ValueSet Telecom Use (US Realm Header) urn:oid:2.16.840.1.113883.11.20.9.20 DYNAMIC (CONF:1098-7993).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.1.1-2014-06-09-branch-1098-5448-warnings" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.20.22.1.1' and @extension = '2014-06-09']]/cda:author/cda:assignedAuthor">
			<sch:assert id="a-1098-32882-c" test="empty(cda:assignedPerson) or count(cda:id[@root='2.16.840.1.113883.4.6'][(@extension and matches(@extension, '^\d{10}$') and empty(@nullFlavor)) or @nullFlavor='UNK'])=1">If this assignedAuthor is an assignedPerson
This assignedAuthor SHOULD contain zero or one [0..1] id (CONF:1098-32882) such that it If id with @root="2.16.840.1.113883.4.6" National Provider Identifier is unknown then MAY contain zero or one [0..1] @nullFlavor="UNK" Unknown (CodeSystem: HL7NullFlavor urn:oid:2.16.840.1.113883.5.1008) (CONF:1098-32883). SHALL contain exactly one [1..1] @root="2.16.840.1.113883.4.6" National Provider Identifier (CONF:1098-32884). SHOULD contain zero or one [0..1] @extension (CONF:1098-32885).</sch:assert>
			<sch:assert id="a-1098-16787" test="empty(cda:assignedPerson) or count(cda:code)=1">Only if this assignedAuthor is an assignedPerson should the assignedAuthor contain a code.
This assignedAuthor SHOULD contain zero or one [0..1] code (CONF:1098-16787).</sch:assert>
			<sch:assert id="a-1098-16788-v" test="empty(cda:code)">The code, if present, SHALL contain exactly one [1..1] @code, which SHOULD be selected from ValueSet Healthcare Provider Taxonomy (HIPAA) urn:oid:2.16.840.1.114222.4.11.1066 DYNAMIC (CONF:1098-16788).</sch:assert>
			<sch:assert id="a-1098-5430-c" test="count(cda:assignedPerson)=1">This assignedAuthor SHOULD contain zero or one [0..1] assignedPerson (CONF:1098-5430).</sch:assert>
			<sch:assert id="a-1098-16783-c" test="count(cda:assignedAuthoringDevice)=1">This assignedAuthor SHOULD contain zero or one [0..1] assignedAuthoringDevice (CONF:1098-16783).</sch:assert>
		        <sch:assert id="a-1098-5452-c" test="exists(cda:addr)">This assignedAuthor SHALL contain at least one [1..*] US Realm Address (AD.US.FIELDED) (identifier: urn:oid:2.16.840.1.113883.10.20.22.5.2) (CONF:1098-5452).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.1.1-2014-06-09-branch-1098-5428-warnings" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.20.22.1.1' and @extension = '2014-06-09']]/cda:author/cda:assignedAuthor/cda:telecom">
			<sch:assert id="a-1098-7995" test="exists(@use)">Such telecoms SHOULD contain zero or one [0..1] @use, which SHALL be selected from ValueSet Telecom Use (US Realm Header) urn:oid:2.16.840.1.113883.11.20.9.20 DYNAMIC (CONF:1098-7995).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.1.1-2014-06-09-branch-1098-5443-warnings" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.20.22.1.1' and @extension = '2014-06-09']]/cda:dataEnterer/cda:assignedEntity/cda:id">
			<sch:assert id="a-1098-16821" test="@root='2.16.840.1.113883.4.6'">Such ids SHOULD contain zero or one [0..1] @root="2.16.840.1.113883.4.6" National Provider Identifier (CONF:1098-16821).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.1.1-2014-06-09-branch-1098-5466-warnings" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.20.22.1.1' and @extension = '2014-06-09']]/cda:dataEnterer/cda:assignedEntity/cda:telecom">
			<sch:assert id="a-1098-7996" test="exists(@use)">Such telecoms SHOULD contain zero or one [0..1] @use, which SHALL be selected from ValueSet Telecom Use (US Realm Header) urn:oid:2.16.840.1.113883.11.20.9.20 DYNAMIC (CONF:1098-7996).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.1.1-2014-06-09-branch-1098-9945-warnings" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.20.22.1.1' and @extension = '2014-06-09']]/cda:informant/cda:assignedEntity/cda:id">
			<sch:assert id="a-1098-9946-c" test="(@root='2.16.840.1.113883.4.6' and (exists(@nullFlavor) or matches(@extension, '^\d{10}$'))) or @root!='2.16.840.1.113883.4.6'">If assignedEntity/id is a provider then this id, SHOULD include zero or one [0..1] id where id/@root ="2.16.840.1.113883.4.6" National Provider Identifier (CONF:1098-9946).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.1.1-2014-06-09-branch-1098-5522-warnings" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.20.22.1.1' and @extension = '2014-06-09']]/cda:custodian/cda:assignedCustodian/cda:representedCustodianOrganization">
			<sch:assert id="a-1098-16822" test="exists(cda:id[@root='2.16.840.1.113883.4.6' and (exists(@nullFlavor) or matches(@extension, '^\d{10}$'))])">Such ids SHOULD contain zero or one [0..1] @root="2.16.840.1.113883.4.6" National Provider Identifier (CONF:1098-16822).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.1.1-2014-06-09-branch-1098-5525-warnings" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.20.22.1.1' and @extension = '2014-06-09']]/cda:custodian/cda:assignedCustodian/cda:representedCustodianOrganization/cda:telecom">
			<sch:assert id="a-1098-7998" test="exists(@use)">This telecom SHOULD contain zero or one [0..1] @use, which SHALL be selected from ValueSet Telecom Use (US Realm Header) urn:oid:2.16.840.1.113883.11.20.9.20 DYNAMIC (CONF:1098-7998).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.1.1-2014-06-09-branch-1098-14836-warnings" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.20.22.1.1' and @extension = '2014-06-09']]/cda:documentationOf/cda:serviceEvent">
			<sch:assert id="a-1098-14839" test="exists(cda:performer)">Heading: performer (The performer participant represents clinicians who actually and principally carry out the serviceEvent. In a transfer of care this represents the healthcare providers involved in the current or pertinent historical care of the patient. Preferably, the patient’s key healthcare care team members would be listed, particularly their primary physician and any active consulting physicians, therapists, and counselors.)
This serviceEvent SHOULD contain zero or more [0..*] performer (CONF:1098-14839).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.1.1-2014-06-09-branch-1098-14839-warnings" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.20.22.1.1' and @extension = '2014-06-09']]/cda:documentationOf/cda:serviceEvent/cda:performer">
			<sch:assert id="a-1098-14842" test="count(cda:assignedEntity[count(cda:code)=1])=1">This assignedEntity SHOULD contain zero or one [0..1] code, which SHOULD be selected from ValueSet Healthcare Provider Taxonomy (HIPAA) urn:oid:2.16.840.1.114222.4.11.1066 DYNAMIC (CONF:1098-14842).</sch:assert>
			<sch:assert id="a-1098-32889" test="empty(cda:functionCode) or (count(cda:functionCode)=1 and count(cda:functionCode[@code=document('voc.xml')/voc:systems/voc:system[@valueSetOid='2.16.840.1.113883.1.11.10267']/voc:code/@value])=1)">The functionCode, if present, SHOULD contain zero or one [0..1] @code, which SHOULD be selected from ValueSet ParticipationFunction urn:oid:2.16.840.1.113883.1.11.10267 STATIC 2014-09-01 (CONF:1098-32889).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.1.1-2014-06-09-branch-1098-14846-warnings" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.20.22.1.1' and @extension = '2014-06-09']]/cda:documentationOf/cda:serviceEvent/cda:performer/cda:assignedEntity">
			<sch:assert id="a-1098-14847" test="exists(cda:id[@root='2.16.840.1.113883.4.6' and (exists(@nullFlavor) or matches(@extension, '^\d{10}$'))])">Such ids SHOULD contain zero or one [0..1] @root="2.16.840.1.113883.4.6" National Provider Identifier (CONF:1098-14847).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.1.1-2014-06-09-addr-1098-5271-warnings" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.20.22.1.1' and @extension = '2014-06-09']]/cda:recordTarget/cda:patientRole/cda:addr">
			<sch:extends rule="r-urn-oid-2.16.840.1.113883.10.20.22.5.2-warnings-abstract"/>  
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.1.1-2014-06-09-personName-1098-5386-warnings" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.20.22.1.1' and @extension = '2014-06-09']]/cda:recordTarget/cda:patientRole/cda:patient/cda:guardian/cda:guardianPerson/cda:name">   
			<sch:extends rule="r-urn-oid-2.16.840.1.113883.10.20.22.5.1.1-warnings-abstract"/>  
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.1.1-2014-06-09-addr-1098-5422-warnings" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.20.22.1.1' and @extension = '2014-06-09']]/cda:recordTarget/cda:patientRole/cda:providerOrganization/cda:addr">   
			<sch:extends rule="r-urn-oid-2.16.840.1.113883.10.20.22.5.2-warnings-abstract"/>  
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.1.1-2014-06-09-addr-1098-5452-warnings" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.20.22.1.1' and @extension = '2014-06-09']]/cda:author/cda:assignedAuthor/cda:addr">  
			<sch:extends rule="r-urn-oid-2.16.840.1.113883.10.20.22.5.2-warnings-abstract"/> 
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.1.1-2014-06-09-addr-1098-5460-warnings" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.20.22.1.1' and @extension = '2014-06-09']]/cda:dataEnterer/cda:assignedEntity/cda:addr">  
			<sch:extends rule="r-urn-oid-2.16.840.1.113883.10.20.22.5.2-warnings-abstract"/> 
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.1.1-2014-06-09-personName-1098-5470-warnings" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.20.22.1.1' and @extension = '2014-06-09']]/cda:dataEnterer/cda:assignedEntity/cda:assignedPerson/cda:name">  
			<sch:extends rule="r-urn-oid-2.16.840.1.113883.10.20.22.5.1.1-warnings-abstract"/> 
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.1.1-2014-06-09-addr-1098-8220-warnings" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.20.22.1.1' and @extension = '2014-06-09']]/cda:informant/cda:assignedEntity/cda:addr">  
			<sch:extends rule="r-urn-oid-2.16.840.1.113883.10.20.22.5.2-warnings-abstract"/>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.1.1-2014-06-09-personName-1098-8222-warnings" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.20.22.1.1' and @extension = '2014-06-09']]/cda:informant/cda:assignedEntity/cda:assignedPerson/cda:name">  
			<sch:extends rule="r-urn-oid-2.16.840.1.113883.10.20.22.5.1.1-warnings-abstract"/>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.1.1-2014-06-09-addr-1098-5559-warnings" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.20.22.1.1' and @extension = '2014-06-09']]/cda:custodian/cda:assignedCustodian/cda:representedCustodianOrganization/cda:addr">  
			<sch:extends rule="r-urn-oid-2.16.840.1.113883.10.20.22.5.2-warnings-abstract"/> 
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.1.1-2014-06-09-personName-1098-5568-warnings" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.20.22.1.1' and @extension = '2014-06-09']]/cda:informationRecipient/cda:intendedRecipient/cda:informationRecipient/cda:name">  
			<sch:extends rule="r-urn-oid-2.16.840.1.113883.10.20.22.5.1.1-warnings-abstract"/> 
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.1.1-2014-06-09-addr-1098-5589-warnings" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.20.22.1.1' and @extension = '2014-06-09']]/cda:legalAuthenticator/cda:assignedEntity/cda:addr">  
			<sch:extends rule="r-urn-oid-2.16.840.1.113883.10.20.22.5.2-warnings-abstract"/> 
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.1.1-2014-06-09-personName-1098-5598-warnings" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.20.22.1.1' and @extension = '2014-06-09']]/cda:legalAuthenticator/cda:assignedEntity/cda:assignedPerson/cda:name">  
			<sch:extends rule="r-urn-oid-2.16.840.1.113883.10.20.22.5.1.1-warnings-abstract"/> 
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.1.1-2014-06-09-personName-1098-16789-warnings" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.20.22.1.1' and @extension = '2014-06-09']]/cda:author/cda:assignedAuthor/cda:assignedPerson/cda:name">  
			<sch:extends rule="r-urn-oid-2.16.840.1.113883.10.20.22.5.1.1-warnings-abstract"/> 
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.1.1-2014-06-09-addr-1098-5359-warnings" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.20.22.1.1' and @extension = '2014-06-09']]/cda:recordTarget/cda:patientRole/cda:patient/cda:guardian/cda:addr">  
			<sch:extends rule="r-urn-oid-2.16.840.1.113883.10.20.22.5.2-warnings-abstract"/> 
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.1.1-2014-06-09-effectiveTime-1098-5256-warnings" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.20.22.1.1' and @extension = '2014-06-09']]/cda:effectiveTime">  
			<sch:extends rule="r-urn-oid-2.16.840.1.113883.10.20.22.5.4-warnings-abstract"/> 
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.1.1-2014-06-09-time-1098-5580-warnings" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.20.22.1.1' and @extension = '2014-06-09']]/cda:legalAuthenticator/cda:time">  
			<sch:extends rule="r-urn-oid-2.16.840.1.113883.10.20.22.5.4-warnings-abstract"/> 
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.1.1-2014-06-09-time-1098-5445-warnings" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.20.22.1.1' and @extension = '2014-06-09']]/cda:author/cda:time">  
			<sch:extends rule="r-urn-oid-2.16.840.1.113883.10.20.22.5.4-warnings-abstract"/> 
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.1.1-2014-06-09-branch-personName-1098-5284-warnings" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.20.22.1.1' and @extension = '2014-06-09']]/cda:recordTarget/cda:patientRole/cda:patient/cda:name">
			<sch:extends rule="r-urn-oid-2.16.840.1.113883.10.20.22.5.1.1-warnings-abstract"/> 
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.1.1-2014-06-09-time-1098-5608-warnings" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.20.22.1.1' and @extension = '2014-06-09']]/cda:authenticator/cda:time">  
			<sch:extends rule="r-urn-oid-2.16.840.1.113883.10.20.22.5.4-warnings-abstract"/> 
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.1.1-2014-06-09-addr-1098-5616-warnings" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.20.22.1.1' and @extension = '2014-06-09']]/cda:authenticator/cda:assignedEntity/cda:addr">  
			<sch:extends rule="r-urn-oid-2.16.840.1.113883.10.20.22.5.2-warnings-abstract"/> 
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.1.1-2014-06-09-personName-1098-5625-warnings" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.20.22.1.1' and @extension = '2014-06-09']]/cda:authenticator/cda:assignedEntity/cda:assignedPerson/cda:name">  
			<sch:extends rule="r-urn-oid-2.16.840.1.113883.10.20.22.5.1.1-warnings-abstract"/> 
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.14-2014-06-09-warnings">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.14-2014-06-09-warnings-abstract" abstract="true">
			<sch:assert id="a-1098-19203" test="count(cda:code[count(cda:originalText)=1])=1">This code SHOULD contain zero or one [0..1] originalText (CONF:1098-19203).</sch:assert>
			<sch:assert id="a-1098-19204" test="empty(cda:code/cda:originalText) or (count(cda:code/cda:originalText)=1 and count(cda:code/cda:originalText[count(cda:reference)=1])=1)">The originalText, if present, SHOULD contain zero or one [0..1] reference (CONF:1098-19204).</sch:assert>
			<sch:assert id="a-1098-19205" test="empty(cda:code/cda:originalText/cda:reference) or (count(cda:code/cda:originalText/cda:reference)=1 and count(cda:code/cda:originalText/cda:reference[@value])=1)">The reference, if present, SHOULD contain zero or one [0..1] @value (CONF:1098-19205).</sch:assert>
			<sch:assert id="a-1098-19207-c" test="empty(cda:code[@codeSystem]) or count(cda:code[@codeSystem='2.16.840.1.113883.6.1' or @codeSystem='2.16.840.1.113883.6.96' or @codeSystem='2.16.840.1.113883.6.12' or @codeSystem='2.16.840.1.113883.6.4' or @codeSystem='2.16.840.1.113883.6.13'])=1">This @code SHOULD be selected from LOINC (CodeSystem: 2.16.840.1.113883.6.1) or SNOMED CT (CodeSystem: 2.16.840.1.113883.6.96), and MAY be selected from CPT-4 (CodeSystem: 2.16.840.1.113883.6.12) or ICD10 PCS (CodeSystem: 2.16.840.1.113883.6.4) or CDT-2 (Code System: 2.16.840.1.113883.6.13) (CONF:1098-19207).</sch:assert>
			<sch:assert id="a-1098-7662" test="count(cda:effectiveTime)=1">SHOULD contain zero or one [0..1] effectiveTime (CONF:1098-7662).</sch:assert>
			<sch:assert id="a-1098-7683" test="exists(cda:targetSiteCode)">In the case of an implanted medical device, targetSiteCode is used to record the location of the device, in or on the patient's body.
SHOULD contain zero or more [0..*] targetSiteCode (CONF:1098-7683).</sch:assert>
			<sch:assert id="a-1098-7718" test="exists(cda:performer[count(cda:assignedEntity[exists(cda:id)][exists(cda:addr)][exists(cda:telecom)])=1])">SHOULD contain zero or more [0..*] performer (CONF:1098-7718) such that it SHALL contain exactly one [1..1] assignedEntity (CONF:1098-7720). This assignedEntity SHALL contain at least one [1..*] id (CONF:1098-7722). This assignedEntity SHALL contain at least one [1..*] addr (CONF:1098-7731). This assignedEntity SHALL contain at least one [1..*] telecom (CONF:1098-7732).</sch:assert>
			<sch:assert id="a-1098-32479" test="exists(cda:author[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.119']])">SHOULD contain at least one [1..*] Author Participation (identifier: urn:oid:2.16.840.1.113883.10.20.22.4.119) (CONF:1098-32479).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.14-2014-06-09-warnings" context="cda:procedure[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.14' and @extension = '2014-06-09']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.14-2014-06-09-warnings-abstract"/>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.14-2014-06-09-branch-1098-7704-warnings" context="cda:procedure[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.14' and @extension = '2014-06-09']]/cda:specimen/cda:specimenRole">
			<sch:assert id="a-1098-7716" test="exists(cda:id)">This specimenRole SHOULD contain zero or more [0..*] id (CONF:1098-7716).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.14-2014-06-09-branch-1098-7718-warnings" context="cda:procedure[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.14' and @extension = '2014-06-09']]/cda:performer/cda:assignedEntity">
			<sch:assert id="a-1098-7733" test="count(cda:representedOrganization)=1">This assignedEntity SHOULD contain zero or one [0..1] representedOrganization (CONF:1098-7733).</sch:assert>
			<sch:assert id="a-1098-7734" test="empty(cda:representedOrganization) or (count(cda:representedOrganization)=1 and count(cda:representedOrganization[exists(cda:id)])=1)">The representedOrganization, if present, SHOULD contain zero or more [0..*] id (CONF:1098-7734).</sch:assert>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.4-2014-06-09-warnings">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.4-2014-06-09-warnings-abstract" abstract="true">
			<sch:assert id="a-1098-31147" test="exists(cda:author[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.119']])">SHOULD contain zero or more [0..*] Author Participation (identifier: urn:oid:2.16.840.1.113883.10.20.22.4.119) (CONF:1098-31147).</sch:assert>
			<sch:assert id="a-1098-9045-v" test="count(cda:code[exists(@nullFlavor) or @code=document('voc.xml')/voc:systems/voc:system[@valueSetOid='2.16.840.1.113883.3.88.12.3221.7.2']/voc:code/@value])=1">SHALL contain exactly one [1..1] code, which SHOULD be selected from ValueSet Problem Type urn:oid:2.16.840.1.113883.3.88.12.3221.7.2 STATIC 2014-09-02 (CONF:1098-9045).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.4-2014-06-09-warnings" context="cda:observation[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.4' and @extension = '2014-06-09']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.4-2014-06-09-warnings-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.3-2014-06-09-warnings">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.3-2014-06-09-warnings-abstract" abstract="true">
			<sch:assert id="a-1098-31146" test="exists(cda:author[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.119']])">SHOULD contain zero or more [0..*] Author Participation (identifier: urn:oid:2.16.840.1.113883.10.20.22.4.119) (CONF:1098-31146).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.3-2014-06-09-warnings" context="cda:act[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.3' and @extension = '2014-06-09']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.3-2014-06-09-warnings-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.20.22.2.5-2014-06-09-warnings">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.5-2014-06-09-warnings-abstract" abstract="true">
			<sch:assert id="a-1098-7881" test="exists(cda:entry[count(cda:act[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.3' and @extension = '2014-06-09']])=1])">SHOULD contain zero or more [0..*] entry (CONF:1098-7881) such that it SHALL contain exactly one [1..1] Problem Concern Act (V2) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.4.3:2014-06-09) (CONF:1098-15505).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.5-2014-06-09-warnings" context="cda:section[cda:templateId[@root='2.16.840.1.113883.10.20.22.2.5' and @extension = '2014-06-09']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.5-2014-06-09-warnings-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.20.22.2.5.1-2014-06-09-warnings">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.5.1-2014-06-09-warnings-abstract" abstract="true">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.5-2014-06-09-warnings-abstract"/>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.5.1-2014-06-09-warnings" context="cda:section[cda:templateId[@root='2.16.840.1.113883.10.20.22.2.5.1' and @extension = '2014-06-09']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.5.1-2014-06-09-warnings-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.40-2014-06-09-warnings">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.40-2014-06-09-warnings-abstract" abstract="true">
			<sch:assert id="a-1098-30440" test="count(cda:effectiveTime)=1">SHOULD contain zero or one [0..1] effectiveTime (CONF:1098-30440).</sch:assert>
			<sch:assert id="a-1098-31032" test="count(cda:code)=1">Records the type of encounter ordered or recommended.
SHOULD contain zero or one [0..1] code, which SHOULD be selected from ValueSet Encounter Planned urn:oid:2.16.840.1.113883.11.20.9.52 DYNAMIC (CONF:1098-31032).</sch:assert>
			<sch:assert id="a-1098-32045" test="exists(cda:author[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.119']])">The author in a planned encounter represents the clinician who is requesting or planning the encounter.
SHOULD contain zero or more [0..*] Author Participation (identifier: urn:oid:2.16.840.1.113883.10.20.22.4.119) (CONF:1098-32045).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.40-2014-06-09-warnings" context="cda:encounter[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.40' and @extension = '2014-06-09']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.40-2014-06-09-warnings-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.41-2014-06-09-warnings">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.41-2014-06-09-warnings-abstract" abstract="true">
			<sch:assert id="a-1098-30447" test="count(cda:effectiveTime)=1">The effectiveTime in a planned procedure represents the time that the procedure should occur.
SHOULD contain zero or one [0..1] effectiveTime (CONF:1098-30447).</sch:assert>
			<sch:assert id="a-1098-31977-c" test="empty(cda:code[@codeSystem]) or count(cda:code[@codeSystem='2.16.840.1.113883.6.1' or @codeSystem='2.16.840.1.113883.6.96' or @codeSystem='2.16.840.1.113883.6.12' or @codeSystem='2.16.840.1.113883.6.4'])=1">The procedure/code in a planned procedure SHOULD be selected from LOINC (codeSystem 2.16.840.1.113883.6.1) OR SNOMED CT (CodeSystem: 2.16.840.1.113883.6.96), and MAY be selected from CPT-4 (CodeSystem: 2.16.840.1.113883.6.12) OR ICD10 PCS (CodeSystem: 2.16.840.1.113883.6.4) (CONF:1098-31977).</sch:assert>
			<sch:assert id="a-1098-31979" test="count(cda:author[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.119']])=1">The author in a planned procedure represents the clinician who is requesting or planning the procedure.
SHOULD contain zero or one [0..1] Author Participation (identifier: urn:oid:2.16.840.1.113883.10.20.22.4.119) (CONF:1098-31979).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.41-2014-06-09-warnings" context="cda:procedure[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.41' and @extension = '2014-06-09']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.41-2014-06-09-warnings-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.42-2014-06-09-warnings">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.42-2014-06-09-warnings-abstract" abstract="true">
			<sch:assert id="a-1098-32046" test="count(cda:author[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.119']])=1">The author in a planned medication activity represents the clinician who is requesting or planning the medication activity.
SHOULD contain zero or one [0..1] Author Participation (identifier: urn:oid:2.16.840.1.113883.10.20.22.4.119) (CONF:1098-32046).</sch:assert>
			<sch:assert id="a-1098-32133" test="empty(cda:doseQuantity) or count(cda:doseQuantity/@unit)=1">The doseQuantity, if present, SHOULD contain zero or one [0..1] @unit, which SHALL be selected from ValueSet UnitsOfMeasureCaseSensitive urn:oid:2.16.840.1.113883.1.11.12839 DYNAMIC (CONF:1098-32133).</sch:assert>
			<sch:assert id="a-1098-32134" test="empty(cda:rateQuantity) or count(cda:rateQuantity/@unit)=1">The rateQuantity, if present, SHOULD contain zero or one [0..1] @unit, which SHALL be selected from ValueSet UnitsOfMeasureCaseSensitive urn:oid:2.16.840.1.113883.1.11.12839 DYNAMIC (CONF:1098-32134).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.42-2014-06-09-warnings" context="cda:substanceAdministration[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.42' and @extension = '2014-06-09']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.42-2014-06-09-warnings-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.19-2014-06-09-warnings">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.19-2014-06-09-warnings-abstract" abstract="true">
			<sch:assert id="a-1098-7488" test="count(cda:effectiveTime)=1">SHOULD contain zero or one [0..1] effectiveTime (CONF:1098-7488).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.19-2014-06-09-warnings" context="cda:observation[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.19' and @extension = '2014-06-09']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.19-2014-06-09-warnings-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.78-2014-06-09-warnings">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.78-2014-06-09-warnings-abstract" abstract="true">
			<sch:assert id="a-1098-31148" test="exists(cda:author[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.119']])">SHOULD contain zero or more [0..*] Author Participation (identifier: urn:oid:2.16.840.1.113883.10.20.22.4.119) (CONF:1098-31148).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.78-2014-06-09-warnings" context="cda:observation[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.78' and @extension = '2014-06-09']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.78-2014-06-09-warnings-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.27-2014-06-09-warnings">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.27-2014-06-09-warnings-abstract" abstract="true">
			<sch:assert id="a-1098-7310" test="exists(cda:author[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.119']])">SHOULD contain zero or more [0..*] Author Participation (identifier: urn:oid:2.16.840.1.113883.10.20.22.4.119) (CONF:1098-7310).</sch:assert>
			<sch:assert id="a-1098-7301-v" test="count(cda:code)=1">SHALL contain exactly one [1..1] code, which SHOULD be selected from ValueSet Vital Sign Result urn:oid:2.16.840.1.113883.3.88.12.80.62 DYNAMIC (CONF:1098-7301).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.27-2014-06-09-warnings" context="cda:observation[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.27' and @extension = '2014-06-09']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.27-2014-06-09-warnings-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.2-2014-06-09-warnings">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.2-2014-06-09-warnings-abstract" abstract="true">
			<sch:assert id="a-1098-7143" test="count(cda:value[@codeSystem='2.16.840.1.113883.6.96' or exists(@nullFlavor)])=1">SHOULD contain zero or one [0..1] value, which SHOULD be selected from CodeSystem SNOMED CT (urn:oid:2.16.840.1.113883.6.96) (CONF:1098-7143).</sch:assert>
			<sch:assert id="a-1098-7147" test="exists(cda:interpretationCode)">SHOULD contain zero or more [0..*] interpretationCode (CONF:1098-7147).</sch:assert>
			<sch:assert id="a-1098-7149" test="exists(cda:author[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.119']])">SHOULD contain zero or more [0..*] Author Participation (identifier: urn:oid:2.16.840.1.113883.10.20.22.4.119) (CONF:1098-7149).</sch:assert>
			<sch:assert id="a-1098-7150" test="exists(cda:referenceRange)">SHOULD contain zero or more [0..*] referenceRange (CONF:1098-7150).</sch:assert>
			<sch:assert id="a-1098-32610-c" test="count(cda:value[@xsi:type='CD' and @codeSystem='2.16.840.1.113883.6.96'])=1 or empty(cda:value[@xsi:type='CD'])">If Observation/value is a CD (xsi:type="CD") the value SHOULD be SNOMED-CT (CONF:1098-32610).</sch:assert>
			<sch:assert id="a-1098-7133-v" test="count(cda:code[@codeSystem='2.16.840.1.113883.6.1' or exists(@nullFlavor)])=1">SHALL contain exactly one [1..1] code, which SHOULD be selected from CodeSystem LOINC (urn:oid:2.16.840.1.113883.6.1) (CONF:1098-7133).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.2-2014-06-09-warnings" context="cda:observation[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.2' and @extension = '2014-06-09']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.2-2014-06-09-warnings-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.26-2014-06-09-warnings">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.26-2014-06-09-warnings-abstract" abstract="true">
			<sch:assert id="a-1098-31153" test="exists(cda:author[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.119']])">SHOULD contain zero or more [0..*] Author Participation (identifier: urn:oid:2.16.840.1.113883.10.20.22.4.119) (CONF:1098-31153).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.26-2014-06-09-warnings" context="cda:organizer[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.26' and @extension = '2014-06-09']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.26-2014-06-09-warnings-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.20.22.2.4-2014-06-09-warnings">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.4-2014-06-09-warnings-abstract" abstract="true">
			<sch:assert id="a-1098-7271" test="exists(cda:entry[count(cda:organizer[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.26' and @extension = '2014-06-09']])=1])">SHOULD contain zero or more [0..*] entry (CONF:1098-7271) such that it SHALL contain exactly one [1..1] Vital Signs Organizer (V2) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.4.26:2014-06-09) (CONF:1098-15517).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.4-2014-06-09-warnings" context="cda:section[cda:templateId[@root='2.16.840.1.113883.10.20.22.2.4' and @extension = '2014-06-09']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.4-2014-06-09-warnings-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.20.22.2.4.1-2014-06-09-warnings">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.4.1-2014-06-09-warnings-abstract" abstract="true">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.4-2014-06-09-warnings-abstract"/>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.4.1-2014-06-09-warnings" context="cda:section[cda:templateId[@root='2.16.840.1.113883.10.20.22.2.4.1' and @extension = '2014-06-09']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.4.1-2014-06-09-warnings-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.1-2014-06-09-warnings">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.1-2014-06-09-warnings-abstract" abstract="true">
			<sch:assert id="a-1098-19218-c" test="count(cda:code[@codeSystem='2.16.840.1.113883.6.1' or @codeSystem='2.16.840.1.113883.6.96' or @codeSystem='2.16.840.1.113883.6.12'])=1">SHOULD be selected from LOINC (codeSystem 2.16.840.1.113883.6.1) OR SNOMED CT (codeSystem 2.16.840.1.113883.6.96), and MAY be selected from CPT-4 (codeSystem 2.16.840.1.113883.6.12) (CONF:1098-19218). Laboratory results SHOULD be from LOINC (CodeSystem: 2.16.840.1.113883.6.1) or other constrained terminology named by the US Department of Health and Human Services Office of National Coordinator or other federal agency (CONF:1098-19219).</sch:assert>
			<sch:assert id="a-1098-31149" test="exists(cda:author[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.119']])">SHOULD contain zero or more [0..*] Author Participation (identifier: urn:oid:2.16.840.1.113883.10.20.22.4.119) (CONF:1098-31149).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.1-2014-06-09-warnings" context="cda:organizer[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.1' and @extension = '2014-06-09']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.1-2014-06-09-warnings-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.85-2014-06-09-warnings">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.85-2014-06-09-warnings-abstract" abstract="true">
			<sch:assert id="a-1098-31152" test="exists(cda:author[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.119']])">SHOULD contain zero or more [0..*] Author Participation (identifier: urn:oid:2.16.840.1.113883.10.20.22.4.119) (CONF:1098-31152).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.85-2014-06-09-warnings" context="cda:observation[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.85' and @extension = '2014-06-09']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.85-2014-06-09-warnings-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.20.22.2.3-2014-06-09-warnings">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.3-2014-06-09-warnings-abstract" abstract="true">
			<sch:assert id="a-1098-7119" test="exists(cda:entry[count(cda:organizer[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.1' and @extension = '2014-06-09']])=1])">SHOULD contain zero or more [0..*] entry (CONF:1098-7119) such that it SHALL contain exactly one [1..1] Result Organizer (V2) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.4.1:2014-06-09) (CONF:1098-15515).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.3-2014-06-09-warnings" context="cda:section[cda:templateId[@root='2.16.840.1.113883.10.20.22.2.3' and @extension = '2014-06-09']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.3-2014-06-09-warnings-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.20.22.2.3.1-2014-06-09-warnings">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.3.1-2014-06-09-warnings-abstract" abstract="true">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.3-2014-06-09-warnings-abstract"/>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.3.1-2014-06-09-warnings" context="cda:section[cda:templateId[@root='2.16.840.1.113883.10.20.22.2.3.1' and @extension = '2014-06-09']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.3.1-2014-06-09-warnings-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.61-2014-06-09-warnings">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.61-2014-06-09-warnings-abstract" abstract="true">
			<sch:assert id="a-1098-8961" test="count(cda:performer[@typeCode='PRF' and count(cda:templateId[@root='2.16.840.1.113883.10.20.22.4.88'])=1 and count(cda:assignedEntity[count(cda:code[empty(@nullFlavor) and @code='GUAR' and @codeSystem='2.16.840.1.113883.5.110'])=1])=1])=1">This performer represents the Guarantor.
SHOULD contain zero or one [0..1] performer="PRF" Performer (CodeSystem: HL7ParticipationType urn:oid:2.16.840.1.113883.5.90 STATIC) (CONF:1098-8961) such that it SHALL contain exactly one [1..1] templateId (CONF:1098-16810). This templateId SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.4.88" Guarantor Performer (CONF:1098-16811). SHALL contain exactly one [1..1] assignedEntity (CONF:1098-8962). This assignedEntity SHALL contain exactly one [1..1] code (CONF:1098-8968). This code SHALL contain exactly one [1..1] @code="GUAR" Guarantor (CONF:1098-16096). This code SHALL contain exactly one [1..1] @codeSystem="2.16.840.1.113883.5.110" (CONF:1098-32165).</sch:assert>
			<sch:assert id="a-1098-8934" test="count(cda:participant[@typeCode='HLD' and count(cda:templateId[@root='2.16.840.1.113883.10.20.22.4.90'])=1 and count(cda:participantRole[exists(cda:id)])=1])=1">When the Subscriber is the patient, the participant element describing the subscriber SHALL NOT be present. This information will be recorded instead in the data elements used to record member information.
SHOULD contain zero or one [0..1] participant (CONF:1098-8934) such that it SHALL contain exactly one [1..1] @typeCode="HLD" Holder (CodeSystem: HL7ParticipationType urn:oid:2.16.840.1.113883.5.90 STATIC) (CONF:1098-8935). SHALL contain exactly one [1..1] templateId (CONF:1098-16813). This templateId SHALL contain exactly one [1..1] @root="2.16.840.1.113883.10.20.22.4.90" Policy Holder Participant (CONF:1098-16815). SHALL contain exactly one [1..1] participantRole (CONF:1098-8936). This participantRole SHALL contain at least one [1..*] id (CONF:1098-8937). This id is a unique identifier for the subscriber of the coverage (CONF:1098-10120).</sch:assert>
			<sch:assert id="a-1098-8903-v" test="count(cda:code)=1">SHALL contain exactly one [1..1] code, which SHOULD be selected from ValueSet Payer urn:oid:2.16.840.1.114222.4.11.3591 DYNAMIC (CONF:1098-8903).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.61-2014-06-09-warnings" context="cda:act[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.61' and @extension = '2014-06-09']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.61-2014-06-09-warnings-abstract"/>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.61-2014-06-09-branch-1098-8908-warnings" context="cda:act[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.61' and @extension = '2014-06-09']]/cda:performer[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.87']]/cda:assignedEntity">
			<sch:assert id="a-1098-8914-c" test="count(cda:code)=1">This assignedEntity SHOULD contain zero or one [0..1] code (CONF:1098-8914).</sch:assert>
			<sch:assert id="a-1098-8912-c" test="count(cda:representedOrganization)=1">This assignedEntity SHOULD contain zero or one [0..1] representedOrganization (CONF:1098-8912).</sch:assert>
			<sch:assert id="a-1098-8913-c" test="empty(cda:representedOrganization) or (count(cda:representedOrganization)=1 and count(cda:representedOrganization[count(cda:name)=1])=1)">The representedOrganization, if present, SHOULD contain zero or one [0..1] name (CONF:1098-8913).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.61-2014-06-09-branch-1098-8961-warnings" context="cda:act[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.61' and @extension = '2014-06-09']]/cda:performer[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.88']]">
			<sch:assert id="a-1098-8963-c" test="count(cda:time)=1">SHOULD contain zero or one [0..1] time (CONF:1098-8963).</sch:assert>
			<sch:assert id="a-1098-8964-c" test="count(cda:assignedEntity[count(cda:addr)=1])=1">This assignedEntity SHOULD contain zero or one [0..1] US Realm Address (AD.US.FIELDED) (identifier: urn:oid:2.16.840.1.113883.10.20.22.5.2) (CONF:1098-8964).</sch:assert>
			<sch:assert id="a-1098-8965-c" test="count(cda:assignedEntity[exists(cda:telecom)])=1">This assignedEntity SHOULD contain zero or more [0..*] telecom (CONF:1098-8965).</sch:assert>
			<sch:assert id="a-1098-8967-c" test="count(cda:assignedEntity/cda:assignedPerson/cda:name)=1 or count(cda:assignedEntity/cda:representedOrganization/cda:name)=1">SHOULD include assignedEntity/assignedPerson/name AND/OR assignedEntity/representedOrganization/name (CONF:1098-8967).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.61-2014-06-09-branch-1098-8914-warnings" context="cda:act[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.61' and @extension = '2014-06-09']]/cda:performer[@typeCode='PRF'][cda:templateId[@root='2.16.840.1.113883.10.20.22.4.87']]/cda:assignedEntity/cda:code">
			<sch:assert id="a-1098-15992-v" test="exists(@code)">The code, if present, SHALL contain exactly one [1..1] @code, which SHOULD be selected from ValueSet HL7FinanciallyResponsiblePartyType urn:oid:2.16.840.1.113883.1.11.10416 DYNAMIC (CONF:1098-15992).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.61-2014-06-09-branch-1098-8916-warnings" context="cda:act[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.61' and @extension = '2014-06-09']]/cda:participant[@typeCode='COV'][cda:templateId[@root='2.16.840.1.113883.10.20.22.4.89']]">
			<sch:assert id="a-1098-8918" test="count(cda:time)=1">SHOULD contain zero or one [0..1] time (CONF:1098-8918).</sch:assert>
			<sch:assert id="a-1098-16078-c" test="count(cda:participantRole/cda:code[@code])=1">This code SHOULD contain zero or one [0..1] @code, which SHOULD be selected from ValueSet Coverage Role Type urn:oid:2.16.840.1.113883.1.11.18877 DYNAMIC (CONF:1098-16078).</sch:assert>
			<sch:assert id="a-1098-8956-c" test="count(cda:participantRole[count(cda:addr)=1])=1">This participantRole SHOULD contain zero or one [0..1] addr (CONF:1098-8956). The content of addr SHALL be a conformant US Realm Address (AD.US.FIELDED) (2.16.840.1.113883.10.20.22.5.2) (CONF:1098-10484).</sch:assert>
			<sch:assert id="a-1098-8932-c" test="count(cda:participantRole[count(cda:playingEntity)=1])=1">This participantRole SHOULD contain zero or one [0..1] playingEntity (CONF:1098-8932).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.61-2014-06-09-branch-1098-8918-warnings" context="cda:act[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.61' and @extension = '2014-06-09']]/cda:participant[@typeCode='COV'][cda:templateId[@root='2.16.840.1.113883.10.20.22.4.89']]/cda:time">
			<sch:assert id="a-1098-8919" test="count(cda:low)=1">The time, if present, SHOULD contain zero or one [0..1] low (CONF:1098-8919).</sch:assert>
			<sch:assert id="a-1098-8920" test="count(cda:high)=1">The time, if present, SHOULD contain zero or one [0..1] high (CONF:1098-8920).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.61-2014-06-09-branch-1098-8934-warnings" context="cda:act[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.61' and @extension = '2014-06-09']]/cda:participant[@typeCode='HLD'][cda:templateId[@root='2.16.840.1.113883.10.20.22.4.90']]">
			<sch:assert id="a-1098-8925" test="count(cda:participantRole[count(cda:addr)=1])=1">This participantRole SHOULD contain zero or one [0..1] addr (CONF:1098-8925). The content of addr SHALL be a conformant US Realm Address (AD.US.FIELDED) (2.16.840.1.113883.10.20.22.5.2) (CONF:1098-10483).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.61-2014-06-09-addr-1098-8964-warnings" context="cda:act[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.61' and @extension = '2014-06-09']]/cda:performer[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.88']]/cda:assignedEntity/cda:addr">  
			<sch:extends rule="r-urn-oid-2.16.840.1.113883.10.20.22.5.2-warnings-abstract"/> 
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.61-2014-06-09-addr-1098-10484-warnings" context="cda:act[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.61' and @extension = '2014-06-09']]/cda:participant[@typeCode='COV'][cda:templateId[@root='2.16.840.1.113883.10.20.22.4.89']]/cda:participantRole/cda:addr">  
			<sch:extends rule="r-urn-oid-2.16.840.1.113883.10.20.22.5.2-warnings-abstract"/> 
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.61-2014-06-09-addr-1098-10483-warnings" context="cda:act[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.61' and @extension = '2014-06-09']]/cda:participant[@typeCode='HLD'][cda:templateId[@root='2.16.840.1.113883.10.20.22.4.90']]/cda:participantRole/cda:addr">  
			<sch:extends rule="r-urn-oid-2.16.840.1.113883.10.20.22.5.2-warnings-abstract"/> 
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.61-2014-06-09-addr-1098-8910-warnings" context="cda:act[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.61' and @extension = '2014-06-09']]/cda:performer[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.87']]/cda:assignedEntity/cda:addr">  
			<sch:extends rule="r-urn-oid-2.16.840.1.113883.10.20.22.5.2-warnings-abstract"/> 
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.20.22.2.18-2014-06-09-warnings">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.18-2014-06-09-warnings-abstract" abstract="true">
			<sch:assert id="a-1098-7959" test="exists(cda:entry[count(cda:act[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.60' and @extension = '2014-06-09']])=1])">SHOULD contain zero or more [0..*] entry (CONF:1098-7959) such that it SHALL contain exactly one [1..1] Coverage Activity (V2) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.4.60:2014-06-09) (CONF:1098-15501).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.18-2014-06-09-warnings" context="cda:section[cda:templateId[@root='2.16.840.1.113883.10.20.22.2.18' and @extension = '2014-06-09']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.18-2014-06-09-warnings-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-oid-2.16.840.1.113883.10.20.22.4.119-warnings">
		<sch:rule id="r-urn-oid-2.16.840.1.113883.10.20.22.4.119-warnings-abstract" abstract="true">
			<sch:assert id="a-1098-31671" test="count(cda:assignedAuthor[count(cda:code)=1])=1">This assignedAuthor SHOULD contain zero or one [0..1] code, which SHOULD be selected from ValueSet Healthcare Provider Taxonomy (HIPAA) urn:oid:2.16.840.1.114222.4.11.1066 DYNAMIC (CONF:1098-31671).</sch:assert>
			<sch:assert id="a-1098-32315-c" test="true()">If the content is patient authored the code SHOULD be selected from Personal And Legal Relationship Role Type (2.16.840.1.113883.11.20.12.1) (CONF:1098-32315).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-oid-2.16.840.1.113883.10.20.22.4.119-warnings" context="cda:author[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.119']]">
			<sch:extends rule="r-urn-oid-2.16.840.1.113883.10.20.22.4.119-warnings-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.46-2014-06-09-warnings">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.46-2014-06-09-warnings-abstract" abstract="true">
			<sch:assert id="a-1098-8593" test="count(cda:effectiveTime)=1">SHOULD contain zero or one [0..1] effectiveTime (CONF:1098-8593).</sch:assert>
			<sch:assert id="a-1098-32427-v" test="count(cda:code[@code=document('voc.xml')/voc:systems/voc:system[@valueSetOid='2.16.840.1.113883.3.88.12.3221.7.2']/voc:code/@value or exists(@nullFlavor)])=1">SHALL contain exactly one [1..1] code, which SHOULD be selected from ValueSet Problem Type urn:oid:2.16.840.1.113883.3.88.12.3221.7.2 STATIC 2014-09-02 (CONF:1098-32427).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.46-2014-06-09-warnings" context="cda:observation[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.46' and @extension = '2014-06-09']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.46-2014-06-09-warnings-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.45-2014-06-09-warnings">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.45-2014-06-09-warnings-abstract" abstract="true"/>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.45-2014-06-09-warnings" context="cda:organizer[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.45' and @extension = '2014-06-09']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.45-2014-06-09-warnings-abstract"/>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.45-2014-06-09-branch-1098-8609-warnings" context="cda:organizer[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.45' and @extension = '2014-06-09']]/cda:subject/cda:relatedSubject">
			<sch:assert id="a-1098-15248" test="count(cda:subject)=1">This relatedSubject SHOULD contain zero or one [0..1] subject (CONF:1098-15248).</sch:assert>
			<sch:assert id="a-1098-15249-c" test="exists(cda:subject/sdtc:id)">The subject SHOULD contain zero or more [0..*] sdtc:id. The prefix sdtc: SHALL be bound to the namespace “urn:hl7-org:sdtc”. The use of the namespace provides a necessary extension to CDA R2 for the use of the id element (CONF:1098-15249).</sch:assert>
			<sch:assert id="a-1098-15976" test="empty(cda:subject) or (count(cda:subject)=1 and count(cda:subject[count(cda:birthTime)=1])=1)">The subject, if present, SHOULD contain zero or one [0..1] birthTime (CONF:1098-15976).</sch:assert>
			<sch:assert id="a-1098-15247-v" test="exists(cda:code[@nullFlavor or @code])">This code SHALL contain exactly one [1..1] @code, which SHOULD be selected from ValueSet Family Member Value Set urn:oid:2.16.840.1.113883.1.11.19579 DYNAMIC (CONF:1098-15247).</sch:assert>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.13.17-2014-08-08-warnings">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.17-2014-08-08-warnings-abstract" abstract="true">
			<sch:extends rule="r-urn-oid-2.16.840.1.113883.10.20.22.5.2-warnings-abstract"/>
			</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.13.18-2014-08-08-warnings">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.18-2014-08-08-warnings-abstract" abstract="true">
			<sch:extends rule="r-urn-oid-2.16.840.1.113883.10.20.22.5.1-warnings-abstract"/>
			<sch:assert id="a-1126-33242" test="count(cda:suffix)=1">SHOULD contain exactly one [1..1] suffix (CONF:1126-33242).</sch:assert>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.13.21-2014-08-08-warnings">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.21-2014-08-08-warnings-abstract" abstract="true">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.5.1-2014-06-09-warnings-abstract"/>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.21-2014-08-08-warnings" context="cda:section[cda:templateId[@root='2.16.840.1.113883.10.13.21' and @extension = '2014-08-08']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.21-2014-08-08-warnings-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.13.13-2014-08-08-warnings">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.13-2014-08-08-warnings-abstract" abstract="true">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.1.1-2014-06-09-warnings-abstract"/>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.13-2014-08-08-warnings" context="cda:section[cda:templateId[@root='2.16.840.1.113883.10.13.13' and @extension = '2014-08-08']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.13-2014-08-08-warnings-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.13.14-2014-08-08-warnings">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.14-2014-08-08-warnings-abstract" abstract="true">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.16-2014-06-09-warnings-abstract"/>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.14-2014-08-08-warnings" context="cda:substanceAdministration[cda:templateId[@root='2.16.840.1.113883.10.13.14' and @extension = '2014-08-08']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.14-2014-08-08-warnings-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.13.15-2014-08-08-warnings">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.15-2014-08-08-warnings-abstract" abstract="true">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.14-2014-06-09-warnings-abstract"/>
			<sch:assert id="a-1126-33927" test="exists(cda:performer[count(cda:assignedEntity)=1])">SHOULD contain zero or more [0..*] performer (CONF:1126-33927) such that it SHALL contain exactly one [1..1] assignedEntity (CONF:1126-33928).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.15-2014-08-08-warnings" context="cda:procedure[cda:templateId[@root='2.16.840.1.113883.10.13.15' and @extension = '2014-08-08']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.15-2014-08-08-warnings-abstract"/>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.15-2014-08-08-branch-1126-33928-warnings" context="cda:procedure[cda:templateId[@root='2.16.840.1.113883.10.13.15' and @extension = '2014-08-08']]/cda:performer/cda:assignedEntity">
			<sch:assert id="a-1126-33930" test="exists(cda:telecom)">This assignedEntity SHOULD contain zero or more [0..*] telecom (CONF:1126-33930).</sch:assert>
			<sch:assert id="a-1126-33931" test="count(cda:assignedPerson)=1">This assignedEntity SHOULD contain zero or one [0..1] assignedPerson (CONF:1126-33931).</sch:assert>
			<sch:assert id="a-1126-33933" test="exists(cda:id[@root!='2.16.840.1.113883.4.6'])">This assignedEntity SHOULD contain zero or more [0..*] id (CONF:1126-33933).
Note: Local Cancer Registry approved provider identifier</sch:assert>
			<sch:assert id="a-1126-33934" test="exists(cda:addr)">This assignedEntity SHOULD contain zero or more [0..*] US Realm Address (AD.US.FIELDED) (identifier: urn:oid:2.16.840.1.113883.10.20.22.5.2) (CONF:1126-33934).</sch:assert>
			<sch:assert id="a-1126-33936" test="empty(cda:assignedPerson) or (count(cda:assignedPerson)=1 and count(cda:assignedPerson[exists(cda:name)])=1)">The assignedPerson, if present, SHOULD contain zero or more [0..*] US Realm Person Name (PN.US.FIELDED) (identifier: urn:oid:2.16.840.1.113883.10.20.22.5.1.1) (CONF:1126-33936).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.15-2014-08-08-addr-1126-33934-warnings" context="cda:procedure[cda:templateId[@root='2.16.840.1.113883.10.13.15' and @extension = '2014-08-08']]/cda:performer/cda:assignedEntity/cda:addr">  
			<sch:extends rule="r-urn-oid-2.16.840.1.113883.10.20.22.5.2-warnings-abstract"/> 
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.15-2014-08-08-personName-1126-33936-warnings" context="cda:procedure[cda:templateId[@root='2.16.840.1.113883.10.13.15' and @extension = '2014-08-08']]/cda:performer/cda:assignedEntity/cda:assignedPerson/cda:name"> 
			<sch:extends rule="r-urn-oid-2.16.840.1.113883.10.20.22.5.1.1-warnings-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.13.19-2014-08-08-warnings">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.19-2014-08-08-warnings-abstract" abstract="true">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.19-2014-06-09-warnings-abstract"/>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.19-2014-08-08-warnings" context="cda:observation[cda:templateId[@root='2.16.840.1.113883.10.13.19' and @extension = '2014-08-08']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.19-2014-08-08-warnings-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.13.20-2014-08-08-warnings">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.20-2014-08-08-warnings-abstract" abstract="true">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.40-2014-06-09-warnings-abstract"/>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.20-2014-08-08-warnings" context="cda:encounter[cda:templateId[@root='2.16.840.1.113883.10.13.20' and @extension = '2014-08-08']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.20-2014-08-08-warnings-abstract"/>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.20-2014-08-08-branch-1126-33937-warnings" context="cda:encounter[cda:templateId[@root='2.16.840.1.113883.10.13.20' and @extension = '2014-08-08']]/cda:performer[cda:assignedEntity][@typeCode='PRF']/cda:assignedEntity">
			<sch:assert id="a-1126-33939" test="exists(cda:telecom)">This assignedEntity SHOULD contain zero or more [0..*] telecom (CONF:1126-33939).</sch:assert>
			<sch:assert id="a-1126-33940" test="count(cda:assignedPerson)=1">This assignedEntity SHOULD contain zero or one [0..1] assignedPerson (CONF:1126-33940) such that it</sch:assert>
			<sch:assert id="a-1126-33941" test="exists(cda:id[@root='2.16.840.1.113883.4.6' and (exists(@nullFlavor) or matches(@extension, '^\d{10}$'))])">SHOULD contain zero or one [0..1] @root="2.16.840.1.113883.4.6" National Provider Identifier (CONF:1126-33941).</sch:assert>
			<sch:assert id="a-1126-33942" test="exists(cda:id[@root!='2.16.840.1.113883.4.6'])">This assignedEntity SHOULD contain zero or more [0..*] id (CONF:1126-33942).
Note: This id is to be used to provide the Cancer Registry approved local identifier.</sch:assert>
			<sch:assert id="a-1126-33979" test="count(cda:representedOrganization[count(cda:name)])=1">This assignedEntity SHOULD contain zero or one [0..1] representedOrganization (CONF:1126-33979) such that it SHOULD contain zero or one [0..1] name (CONF:1126-33981).</sch:assert>
			<sch:assert id="a-1126-33943" test="count(cda:addr)=1">This assignedEntity SHOULD contain zero or one [0..1] US Realm Address (AD.US.FIELDED) (identifier: urn:oid:2.16.840.1.113883.10.20.22.5.2) (CONF:1126-33943).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.20-2014-08-08-addr-1126-33943-warnings" context="cda:encounter[cda:templateId[@root='2.16.840.1.113883.10.13.20' and @extension = '2014-08-08']]/cda:performer[cda:assignedEntity][@typeCode='PRF']/cda:assignedEntity/cda:addr"> 
			<sch:extends rule="r-urn-oid-2.16.840.1.113883.10.20.22.5.2-warnings-abstract"/>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.20-2014-08-08-1126-33940-warnings" context="cda:encounter[cda:templateId[@root='2.16.840.1.113883.10.13.20' and @extension = '2014-08-08']]/cda:performer[@typeCode='PRF']/cda:assignedEntity/cda:assignedPerson"> 
			<sch:assert id="a-1126-33945" test="exists(cda:name)">SHOULD contain zero or more [0..*] US Realm Person Name (PN.US.FIELDED) (identifier: urn:oid:2.16.840.1.113883.10.20.22.5.1.1) (CONF:1126-33945).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.20-2014-08-08-personName-1126-33945-warnings" context="cda:encounter[cda:templateId[@root='2.16.840.1.113883.10.13.20' and @extension = '2014-08-08']]/cda:performer[@typeCode='PRF']/cda:assignedEntity/cda:assignedPerson/cda:name"> 
			<sch:extends rule="r-urn-oid-2.16.840.1.113883.10.20.22.5.1.1-warnings-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.13.22-2014-08-08-warnings">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.22-2014-08-08-warnings-abstract" abstract="true">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.3-2014-06-09-warnings-abstract"/>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.22-2014-08-08-warnings" context="cda:act[cda:templateId[@root='2.16.840.1.113883.10.13.22' and @extension = '2014-08-08']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.22-2014-08-08-warnings-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.13.23-2014-08-08-warnings">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.23-2014-08-08-warnings-abstract" abstract="true">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.4-2014-06-09-warnings-abstract"/>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.23-2014-08-08-warnings" context="cda:observation[cda:templateId[@root='2.16.840.1.113883.10.13.23' and @extension = '2014-08-08']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.23-2014-08-08-warnings-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.13.26-2014-08-08-warnings">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.26-2014-08-08-warnings-abstract" abstract="true">
			<sch:assert id="a-1126-33333" test="exists(cda:targetSiteCode)">SHOULD contain zero or more [0..*] targetSiteCode (CONF:1126-33333).</sch:assert>
			<sch:assert id="a-1126-33334" test="exists(cda:performer)">SHOULD contain zero or more [0..*] performer (CONF:1126-33334).</sch:assert>
			<sch:assert id="a-1126-33346" test="count(cda:effectiveTime)=1">SHOULD contain zero or one [0..1] effectiveTime (CONF:1126-33346).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.26-2014-08-08-branch-1126-33329-warnings" context="cda:procedure[cda:templateId[@root='2.16.840.1.113883.10.13.26' and @extension = '2014-08-08']]/cda:code">
			<sch:assert id="a-1126-33587-c" test="exists(@code)">This code SHOULD contain exactly one [1..1] @code, which SHALL be selected from ValueSet Radiation Regional Treatment and Boost Radiation Grouping urn:oid:2.16.840.1.113883.3.520.4.23 (CONF:1126-33587).</sch:assert>
			<sch:assert id="a-1126-33588" test="exists(@codeSystem)">This code SHOULD contain exactly one [1..1] @codeSystem (CONF:1126-33588).</sch:assert>
			<sch:assert id="a-1126-33661-c" test="exists(@displayName)">This code SHOULD contain exactly one [1..1] @displayName, which SHALL be selected from ValueSet Radiation Regional Treatment and Boost Radiation Grouping urn:oid:2.16.840.1.113883.3.520.4.23 (CONF:1126-33661).</sch:assert>
			<sch:assert id="a-1126-33724" test="@sdtc:valueSet='2.16.840.1.113883.3.520.4.23'">This code SHOULD contain exactly one [1..1] @sdtc:valueSet="2.16.840.1.113883.3.520.4.23" (CONF:1126-33724).</sch:assert>
			<sch:assert id="a-1126-33590-c" test="exists(@nullFlavor) or @codeSystem='2.16.840.1.113883.6.96' or @codeSystem='2.16.840.1.113883.6.14' or @codeSystem='2.16.840.1.113883.6.4'">This codeSystem in a Radiation Regional Treatment Modality SHOULD be selected from HCPCS (CodeSystem: 2.16.840.1.113883.6.14) and MAY be selected from SNOMED CT (CodeSystem: 2.16.840.1.113883.6.96) or ICD10 PCS (CodeSystem: 2.16.840.1.113883.6.4) (CONF:1126-33590).</sch:assert>
			<sch:assert id="a-1126-33330" test="count(cda:originalText)=1">This code SHOULD contain zero or one [0..1] originalText (CONF:1126-33330).</sch:assert>
			<sch:assert id="a-1126-33331" test="empty(cda:originalText) or (count(cda:originalText)=1 and count(cda:originalText[count(cda:reference)=1])=1)">The originalText, if present, SHOULD contain zero or one [0..1] reference (CONF:1126-33331).</sch:assert>
			<sch:assert id="a-1126-33332" test="empty(cda:originalText/cda:reference) or (count(cda:originalText/cda:reference)=1 and count(cda:originalText/cda:reference[@value])=1)">The reference, if present, SHOULD contain zero or one [0..1] @value (CONF:1126-33332).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.26-2014-08-08-warnings" context="cda:procedure[cda:templateId[@root='2.16.840.1.113883.10.13.26' and @extension = '2014-08-08']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.26-2014-08-08-warnings-abstract"/>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.26-2014-08-08-branch-1126-33333-warnings" context="cda:procedure[cda:templateId[@root='2.16.840.1.113883.10.13.26' and @extension = '2014-08-08']]/cda:targetSiteCode">
			<sch:assert id="a-1126-33656" test="exists(@displayName)">The targetSiteCode, if present, SHOULD contain exactly one [1..1] @displayName, which SHALL be selected from ValueSet Body Site urn:oid:2.16.840.1.113883.3.88.12.3221.8.9 (CONF:1126-33656).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.26-2014-08-08-branch-1126-33335-warnings" context="cda:procedure[cda:templateId[@root='2.16.840.1.113883.10.13.26' and @extension = '2014-08-08']]/cda:performer/cda:assignedEntity">
			<sch:assert id="a-1126-33336" test="count(cda:representedOrganization)=1">This assignedEntity SHOULD contain zero or one [0..1] representedOrganization (CONF:1126-33336).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.26-2014-08-08-personName-1126-33582-warnings" context="cda:procedure[cda:templateId[@root='2.16.840.1.113883.10.13.26' and @extension = '2014-08-08']]/cda:performer/cda:assignedEntity/cda:assignedPerson/cda:name">
			<sch:extends rule="r-urn-oid-2.16.840.1.113883.10.20.22.5.1.1-warnings-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.13.25-2014-08-08-warnings">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.25-2014-08-08-warnings-abstract" abstract="true">
			<sch:assert id="a-1126-33366" test="exists(cda:targetSiteCode)">SHOULD contain zero or more [0..*] targetSiteCode (CONF:1126-33366).</sch:assert>
			<sch:assert id="a-1126-33367" test="exists(cda:performer)">SHOULD contain zero or more [0..*] performer (CONF:1126-33367).</sch:assert>
			<sch:assert id="a-1126-33379" test="count(cda:effectiveTime)=1">SHOULD contain zero or one [0..1] effectiveTime (CONF:1126-33379).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.25-2014-08-08-warnings" context="cda:procedure[cda:templateId[@root='2.16.840.1.113883.10.13.25' and @extension = '2014-08-08']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.25-2014-08-08-warnings-abstract"/>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.25-2014-08-08-branch-1126-33362-warnings" context="cda:procedure[cda:templateId[@root='2.16.840.1.113883.10.13.25' and @extension = '2014-08-08']]/cda:code">
			<sch:assert id="a-1126-33594-c" test="exists(@code)">This code SHOULD contain exactly one [1..1] @code, which SHALL be selected from ValueSet Radiation Regional Treatment and Boost Radiation Grouping urn:oid:2.16.840.1.113883.3.520.4.23 (CONF:1126-33594).</sch:assert>
			<sch:assert id="a-1126-33595" test="exists(@codeSystem)">This code SHOULD contain exactly one [1..1] @codeSystem (CONF:1126-33595).</sch:assert>
			<sch:assert id="a-1126-33662-c" test="exists(@displayName)">This code SHOULD contain exactly one [1..1] @displayName, which SHALL be selected from ValueSet Radiation Regional Treatment and Boost Radiation Grouping urn:oid:2.16.840.1.113883.3.520.4.23 (CONF:1126-33662).</sch:assert>
			<sch:assert id="a-1126-33723" test="@sdtc:valueSet='2.16.840.1.113883.3.520.4.23'">This code SHOULD contain exactly one [1..1] @sdtc:valueSet="2.16.840.1.113883.3.520.4.23" (CONF:1126-33723).</sch:assert>
			<sch:assert id="a-1126-33597-c" test="@codeSystem='2.16.840.1.113883.6.96' or @codeSystem='2.16.840.1.113883.6.12' or @codeSystem='2.16.840.1.113883.6.4'">This codeSystem in a Radiation Regional Treatment Modality SHOULD be selected from CPT-4 (CodeSystem: 2.16.840.1.113883.6.12) MAY be selected from SNOMED CT (CodeSystem: 2.16.840.1.113883.6.96) or ICD10 PCS (CodeSystem: 2.16.840.1.113883.6.4) (CONF:1126-33597).</sch:assert>
			<sch:assert id="a-1126-33363" test="count(cda:originalText)=1">This code SHOULD contain zero or one [0..1] originalText (CONF:1126-33363).</sch:assert>
			<sch:assert id="a-1126-33364" test="empty(cda:originalText) or (count(cda:originalText)=1 and count(cda:originalText[count(cda:reference)=1])=1)">The originalText, if present, SHOULD contain zero or one [0..1] reference (CONF:1126-33364).</sch:assert>
			<sch:assert id="a-1126-33365" test="empty(cda:originalText/cda:reference) or (count(cda:originalText/cda:reference)=1 and count(cda:originalText/cda:reference[@value])=1)">The reference, if present, SHOULD contain zero or one [0..1] @value (CONF:1126-33365).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.25-2014-08-08-branch-1126-33366-warnings" context="cda:procedure[cda:templateId[@root='2.16.840.1.113883.10.13.25' and @extension = '2014-08-08']]/cda:targetSiteCode">
			<sch:assert id="a-1126-33655" test="exists(@displayName)">The targetSiteCode, if present, SHOULD contain exactly one [1..1] @displayName, which SHALL be selected from ValueSet Body Site urn:oid:2.16.840.1.113883.3.88.12.3221.8.9 (CONF:1126-33655).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.25-2014-08-08-branch-1126-33368-warnings" context="cda:procedure[cda:templateId[@root='2.16.840.1.113883.10.13.25' and @extension = '2014-08-08']]/cda:performer/cda:assignedEntity">
			<sch:assert id="a-1126-33586-c" test="empty(cda:assignedPerson) or (count(cda:assignedPerson)=1 and count(cda:assignedPerson[count(cda:name)=1])=1)">The assignedPerson, if present, SHOULD contain zero or one [0..1] US Realm Person Name (PN.US.FIELDED) (identifier: urn:oid:2.16.840.1.113883.10.20.22.5.1.1) (CONF:1126-33586).</sch:assert>
			<sch:assert id="a-1126-33369" test="count(cda:representedOrganization)=1">This assignedEntity SHOULD contain zero or one [0..1] representedOrganization (CONF:1126-33369).</sch:assert>
			<sch:assert id="a-1126-33585" test="count(cda:assignedPerson)=1">This assignedEntity SHOULD contain zero or one [0..1] assignedPerson (CONF:1126-33585).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.25-2014-personName-1126-33586-warnings" context="cda:procedure[cda:templateId[@root='2.16.840.1.113883.10.13.25' and @extension = '2014-08-08']]/cda:performer/cda:assignedEntity/cda:assignedPerson/cda:name"> 
			<sch:extends rule="r-urn-oid-2.16.840.1.113883.10.20.22.5.1.1-warnings-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.13.33-2015-01-29-warnings">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.33-2015-01-29-warnings-abstract" abstract="true">
			<sch:assert id="a-1169-34011" test="count(cda:effectiveTime[count(cda:low)=1])=1">This effectiveTime SHOULD contain zero or one [0..1] low (CONF:1169-34011).</sch:assert>
			<sch:assert id="a-1169-34018-c" test="count(cda:value[@xsi:type='CD'][exists(@nullFlavor) or (count(cda:originalText)=1)])=1">If value/@nullFlavor is not present then
This value SHOULD contain zero or one [0..1] originalText (CONF:1169-34018).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.33-2015-01-29-warnings" context="cda:observation[cda:templateId[@root='2.16.840.1.113883.10.13.33' and @extension = '2015-01-29']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.33-2015-01-29-warnings-abstract"/>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.33-2015-01-29-branch-1169-34018-warnings" context="cda:observation[cda:templateId[@root='2.16.840.1.113883.10.13.33' and @extension = '2015-01-29']]/cda:value[@xsi:type='CD'][empty(@nullFlavor)]/cda:originalText">
			<sch:assert id="a-1169-34019-c" test="count(cda:reference)=1">This originalText SHOULD contain zero or one [0..1] reference (CONF:1169-34019).</sch:assert>
			<sch:assert id="a-1169-34020-c" test="empty(cda:reference) or (count(cda:reference)=1 and count(cda:reference[@value])=1)">This reference SHOULD contain zero or one [0..1] @value (CONF:1169-34020).</sch:assert>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.13.34-2015-01-29-warnings">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.34-2015-01-29-warnings-abstract" abstract="true">
			<sch:assert id="a-1169-34028" test="count(cda:effectiveTime[count(cda:low)=1])=1">This effectiveTime SHOULD contain zero or one [0..1] low (CONF:1169-34028).</sch:assert>
			<sch:assert id="a-1169-34035-c" test="count(cda:value[@xsi:type='CD'][exists(@nullFlavor) or (count(cda:originalText)=1)])=1">If value/@nullFlavor is not present then
This value SHOULD contain zero or one [0..1] originalText (CONF:1169-34035).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.34-2015-01-29-warnings" context="cda:observation[cda:templateId[@root='2.16.840.1.113883.10.13.34' and @extension = '2015-01-29']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.34-2015-01-29-warnings-abstract"/>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.34-2015-01-29-branch-1169-34035-warnings" context="cda:observation[cda:templateId[@root='2.16.840.1.113883.10.13.34' and @extension = '2015-01-29']]/cda:value[@xsi:type='CD'][empty(@nullFlavor)]/cda:originalText">
			<sch:assert id="a-1169-34036-c" test="count(cda:reference)=1">This originalText SHOULD contain zero or one [0..1] reference (CONF:1169-34036).</sch:assert>
			<sch:assert id="a-1169-34037-c" test="empty(cda:reference) or (count(cda:reference)=1 and count(cda:reference[@value])=1)">This reference SHOULD contain zero or one [0..1] @value (CONF:1169-34037).</sch:assert>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.13.11-2015-01-29-warnings">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.11-2015-01-29-warnings-abstract" abstract="true">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.17-2014-06-09-warnings-abstract"/>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.11-2015-01-29-warnings" context="cda:section[cda:templateId[@root='2.16.840.1.113883.10.13.11' and @extension = '2015-01-29']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.11-2015-01-29-warnings-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.13.1-2015-01-29-warnings">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.1-2015-01-29-warnings-abstract" abstract="true">
			<sch:assert id="a-1169-33905" test="exists(cda:documentationOf)">SHOULD contain zero or more [0..*] documentationOf (CONF:1169-33905).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.1-2015-01-29-warnings" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.13.1' and @extension = '2015-01-29']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.1-2015-01-29-warnings-abstract"/>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.1-2015-01-29-branch-1169-222-warnings" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.13.1' and @extension = '2015-01-29']]/cda:recordTarget/cda:patientRole/cda:patient">
			<sch:assert id="a-1169-33880-c" test="count(cda:name[count(cda:family[@qualifier='BR'])=1])=1">This patient SHOULD contain zero or one [0..1] name (CONF:1169-33880). The name, if present, SHALL contain exactly one [1..1] family (CONF:1169-33881). This family SHALL contain exactly one [1..1] @qualifier="BR" birth (CodeSystem: EntityNamePartQualifier urn:oid:2.16.840.1.113883.5.43) (CONF:1169-33882).</sch:assert>
			<sch:assert id="a-1169-33183-c" test="count(sdtc:deceasedInd)=1">This patient SHOULD contain zero or one [0..1] sdtc:deceasedInd. The prefix sdtc: SHALL be bound to the namespace “urn:hl7-org:sdtc”. The use of the namespace provides a necessary extension to CDA R2 for the use of the deceasedInd element (CONF:1169-33183).</sch:assert>
			<sch:assert id="a-1169-33184-c" test="count(sdtc:deceasedTime)=1">This patient SHOULD contain zero or one [0..1] sdtc:deceasedTime. The prefix sdtc: SHALL be bound to the namespace “urn:hl7-org:sdtc”. The use of the namespace provides a necessary extension to CDA R2 for the use of the deceasedTime element (CONF:1169-33184).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.1-2015-01-29-branch-1169-33907-warnings" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.13.1' and @extension = '2015-01-29']]/cda:documentationOf/cda:serviceEvent">
			<sch:assert id="a-1169-33907" test="exists(cda:performer[count(cda:assignedEntity)=1])">This serviceEvent SHOULD contain zero or more [0..*] performer (CONF:1169-33907) such that it SHALL contain exactly one [1..1] assignedEntity (CONF:1169-33908).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.1-2015-01-29-branch-1169-33908-warnings" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.13.1' and @extension = '2015-01-29']]/cda:documentationOf/cda:serviceEvent/cda:performer/cda:assignedEntity">
			<sch:assert id="a-1169-33912" test="exists(cda:id[@root='2.16.840.1.113883.4.6' and (exists(@nullFlavor) or matches(@extension, '^\d{10}$'))])">SHOULD contain zero or one [0..1] @root="2.16.840.1.113883.4.6" National Provider Identifier (CONF:1169-33912).</sch:assert>
			<sch:assert id="a-1169-33911" test="count(cda:assignedPerson)=1">This assignedEntity SHOULD contain zero or one [0..1] assignedPerson (CONF:1169-33911).</sch:assert>
			<sch:assert id="a-1169-33910" test="exists(cda:telecom)">This assignedEntity SHOULD contain zero or more [0..*] telecom (CONF:1169-33910).</sch:assert>
			<sch:assert id="a-1169-33916" test="empty(cda:assignedPerson) or (count(cda:assignedPerson)=1 and count(cda:assignedPerson[count(cda:name)=1])=1)">The assignedPerson, if present, SHOULD contain zero or one [0..1] US Realm Person Name (PN.US.FIELDED) (identifier: urn:oid:2.16.840.1.113883.10.20.22.5.1.1) (CONF:1169-33916).</sch:assert>
			<sch:assert id="a-1169-33913" test="exists(cda:id)">This assignedEntity SHOULD contain zero or more [0..*] id (CONF:1169-33913).
Note: This id is to be used to provide the Cancer Registry approved local identifier.</sch:assert>
			<sch:assert id="a-1169-33914" test="exists(cda:addr)">This assignedEntity SHOULD contain zero or more [0..*] US Realm Address (AD.US.FIELDED) (identifier: urn:oid:2.16.840.1.113883.10.20.22.5.2) (CONF:1169-33914).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.1-2015-01-29-branch-1169-214-warnings" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.13.1' and @extension = '2015-01-29']]/cda:componentOf/cda:encompassingEncounter/cda:encounterParticipant[@typeCode='REF'][cda:assignedEntity]/cda:assignedEntity[empty(@nullFlavor)]">
			<sch:assert id="a-1169-33917" test="exists(cda:telecom)">This assignedEntity SHOULD contain zero or more [0..*] telecom (CONF:1169-33917).</sch:assert>
			<sch:assert id="a-1169-33918" test="exists(cda:id[@root!='2.16.840.1.113883.4.6'])">This assignedEntity SHOULD contain zero or more [0..*] id (CONF:1169-33918).
Note: This id is to be used to provide the Cancer Registry approved local identifier.</sch:assert>
			<sch:assert id="a-1169-33919" test="count(cda:addr)=1">This assignedEntity SHOULD contain zero or one [0..1] US Realm Address (AD.US.FIELDED) (identifier: urn:oid:2.16.840.1.113883.10.20.22.5.2) (CONF:1169-33919).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.1-2015-01-29-branch-1169-33921-warnings" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.13.1' and @extension = '2015-01-29']]/cda:componentOf/cda:encompassingEncounter/cda:encounterParticipant[@typeCode='REF']/cda:assignedEntity/cda:representedOrganization">
			<sch:assert id="a-1169-34001" test="exists(cda:id[@root='2.16.840.1.113883.4.6' and @extension])">SHOULD contain zero or one [0..1] @root="2.16.840.1.113883.4.6" National Provider Identifier (CONF:1169-34001). SHOULD contain zero or one [0..1] @extension (CONF:1169-34002).</sch:assert>
			<sch:assert id="a-1169-33924" test="exists(cda:id[@root!='2.16.840.1.113883.4.6'])">This representedOrganization SHOULD contain zero or more [0..*] id (CONF:1169-33924).
Note: This id is to be used to provide the Cancer Registry approved local identifier. This id is to be used to provide the Cancer Registry approved local identifier.</sch:assert>
			<sch:assert id="a-1169-33926" test="exists(cda:addr)">This representedOrganization SHOULD contain zero or more [0..*] US Realm Address (AD.US.FIELDED) (identifier: urn:oid:2.16.840.1.113883.10.20.22.5.2) (CONF:1169-33926).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.1-2015-01-29-branch-1169-33897-warnings" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.13.1' and @extension = '2015-01-29']]/cda:componentOf/cda:encompassingEncounter/cda:location/cda:healthCareFacility/cda:serviceProviderOrganization">
			<sch:assert id="a-1169-33898" test="exists(cda:telecom)">SHOULD contain zero or more [0..*] telecom (CONF:1169-33898).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.1-2015-01-29-branch-1169-33895-warnings" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.13.1' and @extension = '2015-01-29']]/cda:componentOf/cda:encompassingEncounter/cda:location/cda:healthCareFacility">
			<sch:assert id="a-1169-33901" test="exists(cda:id)">SHOULD contain zero or more [0..*] id (CONF:1169-33901).
Note: This id is to be used to provide the Cancer Registry approved local identifier for the healthcare facility</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.1-2015-01-29-branch-1169-33686-warnings" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.13.1' and @extension = '2015-01-29']]/cda:author[cda:assignedAuthor[cda:assignedAuthoringDevice]]">
			<sch:assert id="a-1169-33725" test="count(cda:assignedAuthor/cda:assignedAuthoringDevice[count(cda:manufacturerModelName)=1])=1">This assignedAuthoringDevice SHOULD contain zero or one [0..1] manufacturerModelName (CONF:1169-33725).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.1-2015-01-29-patientName-1169-33034-warnings" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.13.1' and @extension = '2015-01-29']]/cda:recordTarget/cda:patientRole/cda:patient/cda:name"> 
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.18-2014-08-08-warnings-abstract"/> 
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.1-2015-01-29-addr-1169-33237-warnings" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.13.1' and @extension = '2015-01-29']]/cda:custodian/cda:assignedCustodian/cda:representedCustodianOrganization/cda:addr"> 
			<sch:extends rule="r-urn-oid-2.16.840.1.113883.10.20.22.5.2-warnings-abstract"/>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.1-2015-01-29-addr-1169-32655-warnings" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.13.1' and @extension = '2015-01-29']]/cda:recordTarget/cda:patientRole/cda:addr"> 
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.17-2014-08-08-warnings-abstract"/>
		</sch:rule> 
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.1-2015-01-29-personName-1169-33916-warnings" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.13.1' and @extension = '2015-01-29']]/cda:documentationOf/cda:serviceEvent/cda:performer/cda:assignedEntity/cda:assignedPerson/cda:name"> 
			<sch:extends rule="r-urn-oid-2.16.840.1.113883.10.20.22.5.1.1-warnings-abstract"/>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.1-2015-01-29-personName-1169-216-warnings" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.13.1' and @extension = '2015-01-29']]/cda:componentOf/cda:encompassingEncounter/cda:encounterParticipant[@typeCode='REF'][cda:assignedEntity]/cda:assignedEntity/cda:assignedPerson/cda:name"> 
			<sch:extends rule="r-urn-oid-2.16.840.1.113883.10.20.22.5.1.1-warnings-abstract"/>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.1-2015-01-29-addr-1169-33914-warnings" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.13.1' and @extension = '2015-01-29']]/cda:documentationOf/cda:serviceEvent/cda:performer/cda:assignedEntity/cda:addr"> 
			<sch:extends rule="r-urn-oid-2.16.840.1.113883.10.20.22.5.2-warnings-abstract"/>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.1-2015-01-29-addr-1169-33231-warnings" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.13.1' and @extension = '2015-01-29']]/cda:author/cda:assignedAuthor[cda:assignedPerson]/cda:addr">
			<sch:extends rule="r-urn-oid-2.16.840.1.113883.10.20.22.5.2-warnings-abstract"/>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.1-2015-01-29-addr-1169-33688-warnings" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.13.1' and @extension = '2015-01-29']]/cda:author[cda:assignedAuthor[cda:assignedAuthoringDevice]]/cda:addr"> 
			<sch:extends rule="r-urn-oid-2.16.840.1.113883.10.20.22.5.2-warnings-abstract"/>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.1-2015-01-29-addr-1169-33919-warnings" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.13.1' and @extension = '2015-01-29']]/cda:componentOf/cda:encompassingEncounter/cda:encounterParticipant[@typeCode='REF'][cda:assignedEntity]/cda:assignedEntity/cda:addr"> 
			<sch:extends rule="r-urn-oid-2.16.840.1.113883.10.20.22.5.2-warnings-abstract"/>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.1-2015-01-29-addr-1169-33926-warnings" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.13.1' and @extension = '2015-01-29']]/cda:componentOf/cda:encompassingEncounter/cda:encounterParticipant[@typeCode='REF'][cda:assignedEntity]/cda:assignedEntity/cda:representedOrganization/cda:addr"> 
			<sch:extends rule="r-urn-oid-2.16.840.1.113883.10.20.22.5.2-warnings-abstract"/>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.1-2015-01-29-addr-1169-33904-warnings" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.13.1' and @extension = '2015-01-29']]/cda:componentOf/cda:encompassingEncounter/cda:location/cda:healthCareFacility/cda:serviceProviderOrganization/cda:addr"> 
			<sch:extends rule="r-urn-oid-2.16.840.1.113883.10.20.22.5.2-warnings-abstract"/>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.13.35-2015-02-05-warnings">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.35-2015-02-05-warnings-abstract" abstract="true">
			<sch:assert id="a-1169-34058" test="count(cda:value[@xsi:type='CD'][count(cda:originalText)=1])=1">This value SHOULD contain zero or one [0..1] originalText (CONF:1169-34058).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.35-2015-02-05-warnings" context="cda:observation[cda:templateId[@root='2.16.840.1.113883.10.13.35' and @extension = '2015-02-05']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.35-2015-02-05-warnings-abstract"/>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.35-2015-02-05-branch-1169-34058-warnings" context="cda:observation[cda:templateId[@root='2.16.840.1.113883.10.13.35' and @extension = '2015-02-05']]/cda:value[@xsi:type='CD']/cda:originalText">
			<sch:assert id="a-1169-34059" test="count(cda:reference)=1">The originalText, if present, SHOULD contain zero or one [0..1] reference (CONF:1169-34059).</sch:assert>
			<sch:assert id="a-1169-34060" test="empty(cda:reference) or (count(cda:reference)=1 and count(cda:reference[@value])=1)">The reference, if present, SHOULD contain zero or one [0..1] @value (CONF:1169-34060).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.35-2015-02-05-branch-1169-34066-warnings" context="cda:observation[cda:templateId[@root='2.16.840.1.113883.10.13.35' and @extension = '2015-02-05']]/cda:value[@xsi:type='CD']/cda:qualifier/cda:value">
			<sch:assert id="a-1169-34069" test="exists(@displayName)">This value SHOULD contain zero or one [0..1] @displayName (CONF:1169-34069).</sch:assert>
			<sch:assert id="a-1169-34257" test="count(cda:originalText)=1">This value SHOULD contain zero or one [0..1] originalText (CONF:1169-34257).</sch:assert>
			<sch:assert id="a-1169-34258" test="empty(cda:originalText) or (count(cda:originalText)=1 and count(cda:originalText/cda:reference)=1)">The originalText, if present, SHOULD contain zero or one [0..1] reference (CONF:1169-34258).</sch:assert>
			<sch:assert id="a-1169-34259" test="empty(cda:originalText/cda:reference) or (count(cda:originalText/cda:reference)=1 and cda:originalText/cda:reference[@value])">The reference, if present, SHOULD contain zero or one [0..1] @value (CONF:1169-34259).</sch:assert>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.13.4-2015-02-05-warnings">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.4-2015-02-05-warnings-abstract" abstract="true">
			<sch:assert id="a-1169-32442" test="count(cda:text)=1">SHOULD contain zero or one [0..1] text (CONF:1169-32442).</sch:assert>
			<sch:assert id="a-1169-32443" test="empty(cda:text) or (count(cda:text)=1 and count(cda:text[count(cda:reference)=1])=1)">The text, if present, SHOULD contain zero or one [0..1] reference (CONF:1169-32443).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.4-2015-02-05-warnings" context="cda:observation[cda:templateId[@root='2.16.840.1.113883.10.13.4' and @extension = '2015-02-05']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.4-2015-02-05-warnings-abstract"/>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.4-2015-02-05-branch-1169-32475-warnings" context="cda:observation[cda:templateId[@root='2.16.840.1.113883.10.13.4' and @extension = '2015-02-05']]/cda:value[@xsi:type='CD']/cda:qualifier[cda:name[@code='31206-6'][@codeSystem='2.16.840.1.113883.6.1']]/cda:value">
			<sch:assert id="a-1169-32476" test="exists(@code)">This value SHOULD contain zero or one [0..1] @code, which SHALL be selected from ValueSet NAACCR Behavior Code urn:oid:2.16.840.1.113883.3.520.4.14 DYNAMIC (CONF:1169-32476).</sch:assert>
			<sch:assert id="a-1169-32632" test="@codeSystem='2.16.840.1.113883.3.520.3.14'">This value SHOULD contain zero or one [0..1] @codeSystem="2.16.840.1.113883.3.520.3.14" (CodeSystem: NAACCR Behavior Code urn:oid:2.16.840.1.113883.3.520.3.14 STATIC) (CONF:1169-32632).</sch:assert>
			<sch:assert id="a-1169-32615" test="exists(@displayName)">This value SHOULD contain zero or one [0..1] @displayName, which SHALL be selected from ValueSet NAACCR Behavior Code urn:oid:2.16.840.1.113883.3.520.4.14 DYNAMIC (CONF:1169-32615).</sch:assert>
			<sch:assert id="a-1169-33703" test="@sdtc:valueSet='2.16.840.1.113883.3.520.4.14'">This value SHOULD contain zero or one [0..1] @sdtc:valueSet="2.16.840.1.113883.3.520.4.14" (CodeSystem: NAACCR Behavior Code urn:oid:2.16.840.1.113883.3.520.3.14 STATIC) (CONF:1169-33703).</sch:assert>
			<sch:assert id="a-1169-32477" test="count(cda:originalText)=1">This value SHOULD contain zero or one [0..1] originalText (CONF:1169-32477).</sch:assert>
			<sch:assert id="a-1169-32478" test="empty(cda:originalText) or (count(cda:originalText)=1 and count(cda:originalText[count(cda:reference)=1])=1)">The originalText, if present, SHOULD contain zero or one [0..1] reference (CONF:1169-32478).
Note: This reference/@value SHALL begin with a '#' and SHALL point to its corresponding narrative (using the approach defined in CDA Release 2, section 4.3.5.1).</sch:assert>
			<sch:assert id="a-1169-32479" test="empty(cda:originalText/cda:reference) or (count(cda:originalText/cda:reference)=1 and count(cda:originalText/cda:reference[@value])=1)">The reference, if present, SHOULD contain zero or one [0..1] @value (CONF:1169-32479).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.4-2015-02-05-branch-1169-32482-warnings" context="cda:observation[cda:templateId[@root='2.16.840.1.113883.10.13.4' and @extension = '2015-02-05']]/cda:value[@xsi:type='CD']/cda:qualifier[cda:name[@code='21861-0'][@codeSystem='2.16.840.1.113883.6.1']]/cda:value">
			<sch:assert id="a-1169-32483" test="exists(@code)">This value SHOULD contain zero or one [0..1] @code, which SHALL be selected from ValueSet NAACCR Diagnostic Confirmation urn:oid:2.16.840.1.113883.3.520.4.3 DYNAMIC (CONF:1169-32483).</sch:assert>
			<sch:assert id="a-1169-32484" test="count(cda:originalText)=1">This value SHOULD contain zero or one [0..1] originalText (CONF:1169-32484).</sch:assert>
			<sch:assert id="a-1169-32485" test="empty(cda:originalText) or (count(cda:originalText)=1 and count(cda:originalText[count(cda:reference)=1])=1)">The originalText, if present, SHOULD contain zero or one [0..1] reference (CONF:1169-32485).
Note: This reference/@value SHALL begin with a '#' and SHALL point to its corresponding narrative (using the approach defined in CDA Release 2, section 4.3.5.1).</sch:assert>
			<sch:assert id="a-1169-32486" test="empty(cda:originalText/cda:reference) or (count(cda:originalText/cda:reference)=1 and count(cda:originalText/cda:reference[@value])=1)">The reference, if present, SHOULD contain zero or one [0..1] @value (CONF:1169-32486).</sch:assert>
			<sch:assert id="a-1169-32620" test="exists(@displayName)">This value SHOULD contain zero or one [0..1] @displayName, which SHALL be selected from ValueSet NAACCR Diagnostic Confirmation urn:oid:2.16.840.1.113883.3.520.4.3 DYNAMIC (CONF:1169-32620).</sch:assert>
			<sch:assert id="a-1169-32633" test="@codeSystem='2.16.840.1.113883.3.520.3.3'">This value SHOULD contain zero or one [0..1] @codeSystem="2.16.840.1.113883.3.520.3.3 " (CodeSystem: NAACCR Diagnostic Confirmation urn:oid:2.16.840.1.113883.3.520.3.3 STATIC) (CONF:1169-32633).</sch:assert>
			<sch:assert id="a-1169-33705" test="@sdtc:valueSet='2.16.840.1.113883.3.520.4.3'">This value SHOULD contain zero or one [0..1] @sdtc:valueSet="2.16.840.1.113883.3.520.4.3" (CodeSystem: NAACCR Diagnostic Confirmation urn:oid:2.16.840.1.113883.3.520.3.3 STATIC) (CONF:1169-33705).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.4-2015-02-05-branch-1169-33608-warnings" context="cda:observation[cda:templateId[@root='2.16.840.1.113883.10.13.4' and @extension = '2015-02-05']]/cda:value[@xsi:type='CD']/cda:qualifier[cda:name[@code='21858-6'][@codeSystem='2.16.840.1.113883.6.1']]/cda:value">
			<sch:assert id="a-1169-33612" test="count(cda:originalText)=1">This value SHOULD contain zero or one [0..1] originalText (CONF:1169-33612).</sch:assert>
			<sch:assert id="a-1169-33613" test="empty(cda:originalText) or (count(cda:originalText)=1 and count(cda:originalText[count(cda:reference)=1])=1)">The originalText, if present, SHOULD contain zero or one [0..1] reference (CONF:1169-33613).</sch:assert>
			<sch:assert id="a-1169-33614" test="empty(cda:originalText/cda:reference) or (count(cda:originalText/cda:reference)=1 and count(cda:originalText/cda:reference[@value])=1)">The reference, if present, SHOULD contain zero or one [0..1] @value (CONF:1169-33614).</sch:assert>
			<sch:assert id="a-1169-33609" test="@codeSystem='2.16.840.1.113883.3.520.3.15'">This value SHOULD contain zero or one [0..1] @codeSystem="2.16.840.1.113883.3.520.3.15" (CodeSystem: NAACCR Grade urn:oid:2.16.840.1.113883.3.520.3.15 STATIC) (CONF:1169-33609).</sch:assert>
			<sch:assert id="a-1169-33610" test="exists(@code)">This value SHOULD contain zero or one [0..1] @code, which SHALL be selected from ValueSet NAACCR Grade urn:oid:2.16.840.1.113883.3.520.4.15 (CONF:1169-33610).</sch:assert>
			<sch:assert id="a-1169-33611" test="exists(@displayName)">This value SHOULD contain zero or one [0..1] @displayName, which SHALL be selected from ValueSet NAACCR Grade urn:oid:2.16.840.1.113883.3.520.4.15 (CONF:1169-33611).</sch:assert>
			<sch:assert id="a-1169-33704" test="@sdtc:valueSet='2.16.840.1.113883.3.520.4.15'">This value SHOULD contain zero or one [0..1] @sdtc:valueSet="2.16.840.1.113883.3.520.4.15" (CodeSystem: NAACCR Grade urn:oid:2.16.840.1.113883.3.520.3.15 STATIC) (CONF:1169-33704).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.4-2015-02-05-branch-1169-32487-warnings" context="cda:observation[cda:templateId[@root='2.16.840.1.113883.10.13.4' and @extension = '2015-02-05']]/cda:targetSiteCode">
			<sch:assert id="a-1169-32638" test="exists(@displayName)">This targetSiteCode SHOULD contain zero or one [0..1] @displayName (CONF:1169-32638).</sch:assert>
			<sch:assert id="a-1169-33706" test="exists(@sdtc:valueSet)">This targetSiteCode SHOULD contain zero or one [0..1] @sdtc:valueSet (CONF:1169-33706).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.4-2015-02-05-branch-1169-33010-warnings" context="cda:observation[cda:templateId[@root='2.16.840.1.113883.10.13.4' and @extension = '2015-02-05']]/cda:targetSiteCode/cda:qualifier/cda:value">
			<sch:assert id="a-1169-33017" test="count(cda:originalText)=1">This value SHOULD contain zero or one [0..1] originalText (CONF:1169-33017).</sch:assert>
			<sch:assert id="a-1169-33018" test="empty(cda:originalText) or (count(cda:originalText)=1 and count(cda:originalText[count(cda:reference)=1])=1)">The originalText, if present, SHOULD contain zero or one [0..1] reference (CONF:1169-33018).</sch:assert>
			<sch:assert id="a-1169-33019" test="empty(cda:originalText/cda:reference) or (count(cda:originalText/cda:reference)=1 and count(cda:originalText/cda:reference[@value])=1)">The reference, if present, SHOULD contain zero or one [0..1] @value (CONF:1169-33019).</sch:assert>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.13.36-2015-02-05-warnings">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.36-2015-02-05-warnings-abstract" abstract="true">
			<sch:assert id="a-1169-34084" test="count(cda:value[@xsi:type='CD'][count(cda:originalText)=1])=1">This value SHOULD contain zero or one [0..1] originalText (CONF:1169-34084).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.36-2015-02-05-warnings" context="cda:observation[cda:templateId[@root='2.16.840.1.113883.10.13.36' and @extension = '2015-02-05']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.36-2015-02-05-warnings-abstract"/>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.36-2015-02-05-branch-1169-34084-warnings" context="cda:observation[cda:templateId[@root='2.16.840.1.113883.10.13.36' and @extension = '2015-02-05']]/cda:value[@xsi:type='CD']/cda:originalText">
			<sch:assert id="a-1169-34085" test="count(cda:reference)=1">The originalText, if present, SHOULD contain zero or one [0..1] reference (CONF:1169-34085).</sch:assert>
			<sch:assert id="a-1169-34086" test="empty(cda:reference) or (count(cda:reference)=1 and count(cda:reference[@value])=1)">The reference, if present, SHOULD contain zero or one [0..1] @value (CONF:1169-34086).</sch:assert>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.13.37-2015-02-05-warnings">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.37-2015-02-05-warnings-abstract" abstract="true">
			<sch:assert id="a-1169-34108" test="count(cda:value[@xsi:type='CD'][count(cda:originalText)=1])=1">This value SHOULD contain zero or one [0..1] originalText (CONF:1169-34108).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.37-2015-02-05-warnings" context="cda:observation[cda:templateId[@root='2.16.840.1.113883.10.13.37' and @extension = '2015-02-05']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.37-2015-02-05-warnings-abstract"/>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.37-2015-02-05-branch-1169-34108-warnings" context="cda:observation[cda:templateId[@root='2.16.840.1.113883.10.13.37' and @extension = '2015-02-05']]/cda:value[@xsi:type='CD']/cda:originalText">
			<sch:assert id="a-1169-34109" test="count(cda:reference)=1">The originalText, if present, SHOULD contain zero or one [0..1] reference (CONF:1169-34109).</sch:assert>
			<sch:assert id="a-1169-34110" test="empty(cda:reference) or (count(cda:reference)=1 and count(cda:reference[@value])=1)">The reference, if present, SHOULD contain zero or one [0..1] @value (CONF:1169-34110).</sch:assert>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.13.38-2015-02-05-warnings">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.38-2015-02-05-warnings-abstract" abstract="true">
			<sch:assert id="a-1169-34124" test="count(cda:value[@xsi:type='CD'][count(cda:originalText)=1])=1">This value SHOULD contain zero or one [0..1] originalText (CONF:1169-34124).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.38-2015-02-05-warnings" context="cda:observation[cda:templateId[@root='2.16.840.1.113883.10.13.38' and @extension = '2015-02-05']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.38-2015-02-05-warnings-abstract"/>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.38-2015-02-05-branch-1169-34124-warnings" context="cda:observation[cda:templateId[@root='2.16.840.1.113883.10.13.38' and @extension = '2015-02-05']]/cda:value[@xsi:type='CD']/cda:originalText">
			<sch:assert id="a-1169-34125" test="count(cda:reference)=1">The originalText, if present, SHOULD contain zero or one [0..1] reference (CONF:1169-34125).</sch:assert>
			<sch:assert id="a-1169-34126" test="empty(cda:reference) or (count(cda:reference)=1 and count(cda:reference[@value])=1)">The reference, if present, SHOULD contain zero or one [0..1] @value (CONF:1169-34126).</sch:assert>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.13.39-2015-02-05-warnings">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.39-2015-02-05-warnings-abstract" abstract="true">
			<sch:assert id="a-1169-34140" test="count(cda:value[@xsi:type='CD'][count(cda:originalText)=1])=1">This value SHOULD contain zero or one [0..1] originalText (CONF:1169-34140).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.39-2015-02-05-warnings" context="cda:observation[cda:templateId[@root='2.16.840.1.113883.10.13.39' and @extension = '2015-02-05']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.39-2015-02-05-warnings-abstract"/>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.39-2015-02-05-branch-1169-34140-warnings" context="cda:observation[cda:templateId[@root='2.16.840.1.113883.10.13.39' and @extension = '2015-02-05']]/cda:value[@xsi:type='CD']/cda:originalText">
			<sch:assert id="a-1169-34141" test="count(cda:reference)=1">The originalText, if present, SHOULD contain zero or one [0..1] reference (CONF:1169-34141).</sch:assert>
			<sch:assert id="a-1169-34142" test="empty(cda:reference) or (count(cda:reference)=1 and count(cda:reference[@value])=1)">The reference, if present, SHOULD contain zero or one [0..1] @value (CONF:1169-34142).</sch:assert>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.13.40-2015-02-05-warnings">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.40-2015-02-05-warnings-abstract" abstract="true">
			<sch:assert id="a-1169-34157" test="count(cda:value[@xsi:type='CD'][count(cda:originalText)=1])">This value SHOULD contain zero or one [0..1] originalText (CONF:1169-34157).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.40-2015-02-05-warnings" context="cda:observation[cda:templateId[@root='2.16.840.1.113883.10.13.40' and @extension = '2015-02-05']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.40-2015-02-05-warnings-abstract"/>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.40-2015-02-05-branch-1169-34157-warnings" context="cda:observation[cda:templateId[@root='2.16.840.1.113883.10.13.40' and @extension = '2015-02-05']]/cda:value[@xsi:type='CD']/cda:originalText">
			<sch:assert id="a-1169-34158" test="count(cda:reference)=1">The originalText, if present, SHOULD contain zero or one [0..1] reference (CONF:1169-34158).</sch:assert>
			<sch:assert id="a-1169-34159" test="empty(cda:reference) or (count(cda:reference)=1 and count(cda:reference[@value])=1)">The reference, if present, SHOULD contain zero or one [0..1] @value (CONF:1169-34159).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.40-2015-02-05-branch-1169-34161-warnings" context="cda:observation[cda:templateId[@root='2.16.840.1.113883.10.13.40' and @extension = '2015-02-05']]/cda:value[@xsi:type='CD']/cda:qualifier/cda:value">
			<sch:assert id="a-1169-34166" test="count(cda:originalText)=1">This value SHOULD contain zero or one [0..1] originalText (CONF:1169-34166).</sch:assert>
			<sch:assert id="a-1169-34167" test="empty(cda:originalText) or (count(cda:originalText)=1 and count(cda:originalText[count(cda:reference)=1])=1)">The originalText, if present, SHOULD contain zero or one [0..1] reference (CONF:1169-34167).</sch:assert>
			<sch:assert id="a-1169-34170" test="exists(@displayName)">This value SHOULD contain zero or one [0..1] @displayName (CONF:1169-34170).</sch:assert>
			<sch:assert id="a-1169-34172" test="empty(cda:originalText/cda:reference) or (count(cda:originalText/cda:reference)=1 and count(cda:originalText/cda:reference[@value])=1)">The reference, if present, SHOULD contain zero or one [0..1] @value (CONF:1169-34172).</sch:assert>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.13.41-2015-02-05-warnings">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.41-2015-02-05-warnings-abstract" abstract="true">
			<sch:assert id="a-1169-34198" test="count(cda:value[@xsi:type='CD'][count(cda:originalText)=1])=1">This value SHOULD contain zero or one [0..1] originalText (CONF:1169-34198).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.41-2015-02-05-warnings" context="cda:observation[cda:templateId[@root='2.16.840.1.113883.10.13.41' and @extension = '2015-02-05']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.41-2015-02-05-warnings-abstract"/>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.41-2015-02-05-branch-1169-34198-warnings" context="cda:observation[cda:templateId[@root='2.16.840.1.113883.10.13.41' and @extension = '2015-02-05']]/cda:value[@xsi:type='CD']/cda:originalText">
			<sch:assert id="a-1169-34199" test="count(cda:reference)=1">The originalText, if present, SHOULD contain zero or one [0..1] reference (CONF:1169-34199).</sch:assert>
			<sch:assert id="a-1169-34200" test="empty(cda:reference) or (count(cda:reference)=1 and count(cda:reference[@value])=1)">The reference, if present, SHOULD contain zero or one [0..1] @value (CONF:1169-34200).</sch:assert>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.13.42-2015-02-05-warnings">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.42-2015-02-05-warnings-abstract" abstract="true">
			<sch:assert id="a-1169-34213" test="count(cda:value[@xsi:type='CD'][count(cda:originalText)=1])=1">This value SHOULD contain zero or one [0..1] originalText (CONF:1169-34213).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.42-2015-02-05-warnings" context="cda:observation[cda:templateId[@root='2.16.840.1.113883.10.13.42' and @extension = '2015-02-05']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.42-2015-02-05-warnings-abstract"/>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.42-2015-02-05-branch-1169-34213-warnings" context="cda:observation[cda:templateId[@root='2.16.840.1.113883.10.13.42' and @extension = '2015-02-05']]/cda:value[@xsi:type='CD']/cda:originalText">
			<sch:assert id="a-1169-34214" test="count(cda:reference)=1">The originalText, if present, SHOULD contain zero or one [0..1] reference (CONF:1169-34214).</sch:assert>
			<sch:assert id="a-1169-34215" test="empty(cda:reference) or (count(cda:reference)=1 and count(cda:reference[@value])=1)">The reference, if present, SHOULD contain zero or one [0..1] @value (CONF:1169-34215).</sch:assert>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.13.43-2015-02-05-warnings">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.43-2015-02-05-warnings-abstract" abstract="true">
			<sch:assert id="a-1169-34230" test="count(cda:value[@xsi:type='CD'][count(cda:originalText)=1])=1">This value SHOULD contain zero or one [0..1] originalText (CONF:1169-34230).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.43-2015-02-05-warnings" context="cda:observation[cda:templateId[@root='2.16.840.1.113883.10.13.43' and @extension = '2015-02-05']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.43-2015-02-05-warnings-abstract"/>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.43-2015-02-05-branch-1169-34230-warnings" context="cda:observation[cda:templateId[@root='2.16.840.1.113883.10.13.43' and @extension = '2015-02-05']]/cda:value[@xsi:type='CD']/cda:originalText">
			<sch:assert id="a-1169-34231" test="count(cda:reference)=1">The originalText, if present, SHOULD contain zero or one [0..1] reference (CONF:1169-34231).</sch:assert>
			<sch:assert id="a-1169-34232" test="empty(cda:reference) or (count(cda:reference)=1 and count(cda:reference[@value])=1)">The reference, if present, SHOULD contain zero or one [0..1] @value (CONF:1169-34232).</sch:assert>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.13.44-2015-02-05-warnings">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.44-2015-02-05-warnings-abstract" abstract="true">
			<sch:assert id="a-1169-34246" test="count(cda:value[@xsi:type='CD'][count(cda:originalText)=1])=1">This value SHOULD contain zero or one [0..1] originalText (CONF:1169-34246).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.44-2015-02-05-warnings" context="cda:observation[cda:templateId[@root='2.16.840.1.113883.10.13.44' and @extension = '2015-02-05']]">
			<sch:extends rule="r-urn-hl7ii-2.16.840.1.113883.10.13.44-2015-02-05-warnings-abstract"/>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.44-2015-02-05-branch-1169-34246-warnings" context="cda:observation[cda:templateId[@root='2.16.840.1.113883.10.13.44' and @extension = '2015-02-05']]/cda:value[@xsi:type='CD']/cda:originalText">
			<sch:assert id="a-1169-34247" test="count(cda:reference)=1">The originalText, if present, SHOULD contain zero or one [0..1] reference (CONF:1169-34247).</sch:assert>
			<sch:assert id="a-1169-34248" test="empty(cda:reference) or (count(cda:reference)=1 and count(cda:reference[@value])=1)">The reference, if present, SHOULD contain zero or one [0..1] @value (CONF:1169-34248).</sch:assert>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-oid-2.16.840.1.113883.10.20.22.4.32-infos">
		<sch:rule id="r-urn-oid-2.16.840.1.113883.10.20.22.4.32-infos" context="cda:participantRole[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.32']]">
			<sch:assert id="a-81-7762" test="count(cda:playingEntity)=1">MAY contain zero or one [0..1] playingEntity (CONF:81-7762).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-oid-2.16.840.1.113883.10.20.22.4.32-branch-81-7762-infos" context="cda:participantRole[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.32']]/cda:playingEntity">
			<sch:assert id="a-81-16037" test="count(cda:name)=1">The playingEntity, if present, MAY contain zero or one [0..1] name (CONF:81-16037).</sch:assert>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-oid-2.16.840.1.113883.10.20.22.5.4-infos">
		<sch:rule id="r-urn-oid-2.16.840.1.113883.10.20.22.5.4-infos-abstract" abstract="true">
			<sch:assert id="a-81-10129-c" test="exists(@nullFlavor) or string-length(@value) ge 14">MAY be precise to the second (CONF:81-10129).</sch:assert>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.20.22.2.17-2014-06-09-infos">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.17-2014-06-09-infos" context="cda:section[cda:templateId[@root='2.16.840.1.113883.10.20.22.2.17' and @extension = '2014-06-09']]">
			<sch:assert id="a-1098-16816" test="exists(cda:entry[count(cda:observation[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.85' and @extension = '2014-06-09']])=1])">MAY contain zero or more [0..*] entry (CONF:1098-16816) such that it SHALL contain exactly one [1..1] Tobacco Use (V2) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.4.85:2014-06-09) (CONF:1098-16817).</sch:assert>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.16-2014-06-09-infos">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.16-2014-06-09-infos" context="cda:substanceAdministration[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.16' and @extension = '2014-06-09']]">
			<sch:assert id="a-1098-7506" test="count(cda:code)=1">MAY contain zero or one [0..1] code (CONF:1098-7506). Note: SubstanceAdministration.code is an optional field. Per HL7 Pharmacy Committee, "this is intended to further specify the nature of the substance administration act. To date the committee has made no use of this attribute". Because the type of substance administration is generally implicit in the routeCode, in the consumable participant, etc., the field is generally not used, and there is no defined value set.</sch:assert>
			<sch:assert id="a-1098-32777" test="count(cda:effectiveTime[count(cda:high)=1])=1">MAY contain zero or one [0..1] high (CONF:1098-32777). Note: indicates when medication stopped</sch:assert>
			<sch:assert id="a-1098-7555" test="count(cda:repeatNumber)=1">In "INT" (intent) mood, the repeatNumber defines the number of allowed administrations. For example, a repeatNumber of "3" means that the substance can be administered up to 3 times. In "EVN" (event) mood, the repeatNumber is the number of occurrences. For example, a repeatNumber of "3" in a substance administration event means that the current administration is the 3rd in a series.
MAY contain zero or one [0..1] repeatNumber (CONF:1098-7555).</sch:assert>
			<sch:assert id="a-1098-7515" test="count(cda:approachSiteCode)=1">MAY contain zero or one [0..1] approachSiteCode, where the code SHALL be selected from ValueSet Body Site 2.16.840.1.113883.3.88.12.3221.8.9 DYNAMIC (CONF:1098-7515).</sch:assert>
			<sch:assert id="a-1098-7517" test="count(cda:rateQuantity)=1">MAY contain zero or one [0..1] rateQuantity (CONF:1098-7517).</sch:assert>
			<sch:assert id="a-1098-7518" test="count(cda:maxDoseQuantity)=1">MAY contain zero or one [0..1] maxDoseQuantity (CONF:1098-7518).</sch:assert>
			<sch:assert id="a-1098-7519" test="count(cda:administrationUnitCode)=1">MAY contain zero or one [0..1] administrationUnitCode, which SHALL be selected from ValueSet AdministrableDrugForm 2.16.840.1.113883.1.11.14570 DYNAMIC (CONF:1098-7519).</sch:assert>
			<sch:assert id="a-1098-7522" test="count(cda:performer)=1">MAY contain zero or one [0..1] performer (CONF:1098-7522).</sch:assert>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.20.22.1.1-2014-06-09-infos">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.1.1-2014-06-09-infos" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.20.22.1.1' and @extension = '2014-06-09']]">
			<sch:assert id="a-1098-5441" test="count(cda:dataEnterer)=1">Heading: dataEnterer
The dataEnterer element represents the person who transferred the content, written or dictated, into the clinical document. To clarify, an author provides the content found within the header or body of a document, subject to their own interpretation; a dataEnterer adds an author's information to the electronic system.
MAY contain zero or one [0..1] dataEnterer (CONF:1098-5441).</sch:assert>
			<sch:assert id="a-1098-8001" test="exists(cda:informant[count(cda:assignedEntity)=1])">Heading: informant
The informant element describes an information source for any content within the clinical document. This informant is constrained for use when the source of information is an assigned health care provider for the patient.
MAY contain zero or more [0..*] informant (CONF:1098-8001) such that it SHALL contain exactly one [1..1] assignedEntity (CONF:1098-8002).</sch:assert>
			<sch:assert id="a-1098-31355" test="exists(cda:informant[count(cda:relatedEntity)=1])">Heading: informant
The informant element describes an information source (who is not a provider) for any content within the clinical document. This informant would be used when the source of information has a personal relationship with the patient or is the patient.
MAY contain zero or more [0..*] informant (CONF:1098-31355) such that it SHALL contain exactly one [1..1] relatedEntity (CONF:1098-31356).</sch:assert>
			<sch:assert id="a-1098-5565" test="exists(cda:informationRecipient)">Heading: informationRecipient
The informationRecipient element records the intended recipient of the information at the time the document was created. In cases where the intended recipient of the document is the patient's health chart, set the receivedOrganization to the scoping organization for that chart.
MAY contain zero or more [0..*] informationRecipient (CONF:1098-5565).</sch:assert>
			<sch:assert id="a-1098-5607" test="exists(cda:authenticator)">Heading: authenticator
The authenticator identifies a participant or participants who attest to the accuracy of the information in the document.
MAY contain zero or more [0..*] authenticator (CONF:1098-5607) such that it</sch:assert>
			<sch:assert id="a-1098-10003" test="exists(cda:participant)">Heading: participant
The participant element identifies supporting entities, including parents, relatives, caregivers, insurance policyholders, guarantors, and others related in some way to the patient.
A supporting person or organization is an individual or an organization with a relationship to the patient. A supporting person who is playing multiple roles would be recorded in multiple participants (e.g., emergency contact and next-of-kin).
MAY contain zero or more [0..*] participant (CONF:1098-10003) such that it</sch:assert>
			<sch:assert id="a-1098-9952" test="exists(cda:inFulfillmentOf)">Heading: inFulfillmentOf
The inFulfillmentOf element represents orders that are fulfilled by this document such as a radiologists’ report of an x-ray.
MAY contain zero or more [0..*] inFulfillmentOf (CONF:1098-9952).</sch:assert>
			<sch:assert id="a-1098-16792" test="exists(cda:authorization)">Heading: authorization
The authorization element represents information about the patient’s consent.
The type of consent is conveyed in consent/code. Consents in the header have been finalized (consent/statusCode must equal Completed) and should be on file. This specification does not address how 'Privacy Consent' is represented, but does not preclude the inclusion of ‘Privacy Consent’.
The authorization consent is used for referring to consents that are documented elsewhere in the EHR or medical record for a health condition and/or treatment that is described in the CDA document.
MAY contain zero or more [0..*] authorization (CONF:1098-16792) such that it
			</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.1.1-2014-06-09-branch-1098-5267-infos" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.20.22.1.1' and @extension = '2014-06-09']]/cda:recordTarget/cda:patientRole">
			<sch:assert id="a-1098-5416" test="count(cda:providerOrganization)=1">This patientRole MAY contain zero or one [0..1] providerOrganization (CONF:1098-5416).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.1.1-2014-06-09-branch-1098-5283-infos" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.20.22.1.1' and @extension = '2014-06-09']]/cda:recordTarget/cda:patientRole/cda:patient">
			<sch:assert id="a-1098-5317" test="count(cda:religiousAffiliationCode)=1">This patient MAY contain zero or one [0..1] religiousAffiliationCode, which SHALL be selected from ValueSet Religious Affiliation 2.16.840.1.113883.1.11.19185 DYNAMIC (CONF:1098-5317).</sch:assert>
			<sch:assert id="a-1098-5325" test="exists(cda:guardian)">This patient MAY contain zero or more [0..*] guardian (CONF:1098- 5325).</sch:assert>
			<sch:assert id="a-1098-32418" test="exists(@nullFlavor) or string-length(@value) ge 12">For cases where information about newborn's time of birth needs to be captured. MAY be precise to the minute (CONF:1098-32418).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.1.1-2014-06-09-branch-1098-5397-infos" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.20.22.1.1' and @extension = '2014-06-09']]/cda:recordTarget/cda:patientRole/cda:patient/cda:birthplace/cda:place/cda:addr">
			<sch:assert id="a-1098-5403" test="count(cda:postalCode)=1">This addr MAY contain zero or one [0..1] postalCode, which SHALL be selected from ValueSet PostalCode 2.16.840.1.113883.3.88.12.80.2 DYNAMIC (CONF:1098-5403).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.1.1-2014-06-09-branch-1098-5406-infos" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.20.22.1.1' and @extension = '2014-06-09']]/cda:recordTarget/cda:patientRole/cda:patient/cda:languageCommunication">
			<sch:assert id="a-1098-5409" test="count(cda:modeCode)=1">Such languageCommunications MAY contain zero or one [0..1] modeCode, which SHALL be selected from ValueSet LanguageAbilityMode 2.16.840.1.113883.1.11.12249 DYNAMIC (CONF:1098-5409).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.1.1-2014-06-09-branch-1098-5442-infos" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.20.22.1.1' and @extension = '2014-06-09']]/cda:dataEnterer/cda:assignedEntity">
			<sch:assert id="a-1098-32173" test="count(cda:code)=1">This assignedEntity MAY contain zero or one [0..1] code, which SHOULD be selected from ValueSet Healthcare Provider Taxonomy (HIPAA) 2.16.840.1.114222.4.11.1066 DYNAMIC (CONF:1098-32173).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.1.1-2014-06-09-branch-1098-8002-infos" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.20.22.1.1' and @extension = '2014-06-09']]/cda:informant/cda:assignedEntity">
			<sch:assert id="a-1098-32174" test="count(cda:code)=1">This assignedEntity MAY contain zero or one [0..1] code, which SHOULD be selected from ValueSet Healthcare Provider Taxonomy (HIPAA) 2.16.840.1.114222.4.11.1066 DYNAMIC (CONF:1098-32174).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.1.1-2014-06-09-branch-1098-5566-infos" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.20.22.1.1' and @extension = '2014-06-09']]/cda:informationRecipient/cda:intendedRecipient">
			<sch:assert id="a-1098-32399" test="exists(cda:id)">This intendedRecipient MAY contain zero or more [0..*] id (CONF:1098-32399).</sch:assert>
			<sch:assert id="a-1098-5567" test="count(cda:informationRecipient)=1">This intendedRecipient MAY contain zero or one [0..1] informationRecipient (CONF:1098-5567).</sch:assert>
			<sch:assert id="a-1098-5577" test="count(cda:receivedOrganization)=1">This intendedRecipient MAY contain zero or one [0..1] receivedOrganization (CONF:1098-5577).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.1.1-2014-06-09-branch-1098-5579-infos" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.20.22.1.1' and @extension = '2014-06-09']]/cda:legalAuthenticator">
			<sch:assert id="a-1098-30810" test="count(sdtc:signatureText)=1">Heading: sdtc:signatureText
The sdtc:signatureText extension provides a location in CDA for a textual or multimedia depiction of the signature by which the participant endorses and accepts responsibility for his or her participation in the Act as specified in the Participation.typeCode. Details of what goes in the field are described in the HL7 CDA Digital Signature Standard balloted in Fall of 2013.
The legalAuthenticator, if present, MAY contain zero or one [0..1] sdtc:signatureText (CONF:1098-30810). Note: The signature can be represented either inline or by reference according to the ED data type. Typical cases for CDA are:
1) Electronic signature: this attribute can represent virtually any electronic signature scheme. 2) Digital signature: this attribute can represent digital signatures by reference to a signature data block that is constructed in accordance to a digital signature standard, such as XML-DSIG, PKCS#7, PGP, etc.</sch:assert>
			<sch:assert id="a-1098-17000" test="count(cda:assignedEntity[count(cda:code)=1])=1">This assignedEntity MAY contain zero or one [0..1] code, which SHOULD be selected from ValueSet Healthcare Provider Taxonomy (HIPAA) 2.16.840.1.114222.4.11.1066 DYNAMIC (CONF:1098-17000).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.1.1-2014-06-09-branch-1098-5586-infos" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.20.22.1.1' and @extension = '2014-06-09']]/cda:legalAuthenticator/cda:assignedEntity/cda:id">
			<sch:assert id="a-1098-16823" test="@root='2.16.840.1.113883.4.6' and (exists(@nullFlavor) or matches(@extension, '^\d{10}$'))">Such ids MAY contain zero or one [0..1] @root="2.16.840.1.113883.4.6" National Provider Identifier (CONF:1098-16823).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.1.1-2014-06-09-branch-1098-5607-infos" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.20.22.1.1' and @extension = '2014-06-09']]/cda:authenticator">
			<sch:assert id="a-1098-30811" test="count(sdtc:signatureText)=1">The sdtc:signatureText extension provides a location in CDA for a textual or multimedia depiction of the signature by which the participant endorses and accepts responsibility for his or her participation in the Act as specified in the Participation.typeCode. Details of what goes in the field are described in the HL7 CDA Digital Signature Standard balloted in Fall of 2013.
MAY contain zero or one [0..1] sdtc:signatureText (CONF:1098-30811). Note: The signature can be represented either inline or by reference according to the ED data type. Typical cases for CDA are:
1) Electronic signature: this attribute can represent virtually any electronic signature scheme. 2) Digital signature: this attribute can represent digital signatures by reference to a signature data block that is constructed in accordance to a digital signature standard, such as XML-DSIG, PKCS#7, PGP, etc.</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.1.1-2014-06-09-branch-1098-5612-infos" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.20.22.1.1' and @extension = '2014-06-09']]/cda:authenticator/cda:assignedEntity">
			<sch:assert id="a-1098-16825" test="count(cda:code)=1">This assignedEntity MAY contain zero or one [0..1] code (CONF:1098-16825).</sch:assert>
			<sch:assert id="a-1098-16826" test="empty(cda:code)">The code, if present, MAY contain zero or one [0..1] @code, which SHOULD be selected from ValueSet Healthcare Provider Taxonomy (HIPAA) 2.16.840.1.114222.4.11.1066 DYNAMIC (CONF:1098-16826).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.1.1-2014-06-09-branch-1098-10003-infos" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.20.22.1.1' and @extension = '2014-06-09']]/cda:participant">
			<sch:assert id="a-1098-10004" test="count(cda:time)=1">MAY contain zero or one [0..1] time (CONF:1098-10004).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.1.1-2014-06-09-branch-1098-14839-infos" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.20.22.1.1' and @extension = '2014-06-09']]/cda:documentationOf/cda:serviceEvent/cda:performer">
			<sch:assert id="a-1098-16818" test="count(cda:functionCode)=1">The performer, if present, MAY contain zero or one [0..1] functionCode (CONF:1098-16818).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.1.1-2014-06-09-branch-1098-16793-infos" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.20.22.1.1' and @extension = '2014-06-09']]/cda:authorization/cda:consent">
			<sch:assert id="a-1098-16794" test="exists(cda:id)">This consent MAY contain zero or more [0..*] id (CONF:1098-16794).</sch:assert>
			<sch:assert id="a-1098-16795" test="count(cda:code)=1">This consent MAY contain zero or one [0..1] code (CONF:1098-16795). Note: The type of consent (e.g., a consent to perform the related serviceEvent) is conveyed in consent/code.</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.1.1-2014-06-09-effectiveTime-1098-5256-infos" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.20.22.1.1' and @extension = '2014-06-09']]/cda:effectiveTime">   
			<sch:extends rule="r-urn-oid-2.16.840.1.113883.10.20.22.5.4-infos-abstract"/>
		  </sch:rule>
		 <sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.1.1-2014-06-09-time-1098-5580-infos" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.20.22.1.1' and @extension = '2014-06-09']]/cda:legalAuthenticator/cda:time">   
			<sch:extends rule="r-urn-oid-2.16.840.1.113883.10.20.22.5.4-infos-abstract"/>
		  </sch:rule>
		 <sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.1.1-2014-06-09-time-1098-5445-infos" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.20.22.1.1' and @extension = '2014-06-09']]/cda:author/cda:time">   
			<sch:extends rule="r-urn-oid-2.16.840.1.113883.10.20.22.5.4-infos-abstract"/>  
		</sch:rule> 
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.1.1-2014-06-09-time-1098-5608-infos" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.20.22.1.1' and @extension = '2014-06-09']]/cda:authenticator/cda:time">   
			<sch:extends rule="r-urn-oid-2.16.840.1.113883.10.20.22.5.4-infos-abstract"/>
		  </sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.14-2014-06-09-infos">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.14-2014-06-09-infos" context="cda:procedure[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.14' and @extension = '2014-06-09']]">
			<sch:assert id="a-1098-7668" test="count(cda:priorityCode)=1">MAY contain zero or one [0..1] priorityCode, which SHALL be selected from ValueSet Act Priority 2.16.840.1.113883.1.11.16866 DYNAMIC (CONF:1098-7668).</sch:assert>
			<sch:assert id="a-1098-7670" test='count(cda:methodCode)=1'>MAY contain zero or one [0..1] methodCode (CONF:1098-7670).</sch:assert>
			<sch:assert id="a-1098-7697" test="exists(cda:specimen)">MAY contain zero or more [0..*] specimen (CONF:1098-7697). This specimen is for representing specimens obtained from a procedure (CONF:1098-16842).</sch:assert>
			<sch:assert id="a-1098-7768" test="exists(cda:entryRelationship[@typeCode='COMP'][@inversionInd='true'][count(cda:encounter[@classCode='ENC'][@moodCode='EVN'][count(cda:id)=1])=1])">MAY contain zero or more [0..*] entryRelationship (CONF:1098-7768) such that it SHALL contain exactly one [1..1] @typeCode="COMP" Has Component (CodeSystem: HL7ActRelationshipType urn:oid:2.16.840.1.113883.5.1002 STATIC) (CONF:1098-7769). SHALL contain exactly one [1..1] @inversionInd="true" true (CONF:1098-8009).
SHALL contain exactly one [1..1] encounter (CONF:1098-7770). This encounter SHALL contain exactly one [1..1] @classCode="ENC" Encounter (CodeSystem: HL7ActClass urn:oid:2.16.840.1.113883.5.6 STATIC) (CONF:1098-7771). Set the encounter ID to the ID of an encounter in another section to signify they are the same encounter (CONF:1098-16843).</sch:assert>
			<sch:assert id="a-1098-7886" test="exists(cda:entryRelationship[@typeCode='COMP'][count(cda:substanceAdministration[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.16' and @extension = '2014-06-09']])=1])">MAY contain zero or more [0..*] entryRelationship (CONF:1098-7886) such that it SHALL contain exactly one [1..1] @typeCode="COMP" Has Component (CodeSystem: HL7ActRelationshipType urn:oid:2.16.840.1.113883.5.1002 STATIC) (CONF:1098-7887). SHALL contain exactly one [1..1] Medication Activity (V2) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.4.16:2014-06-09) (CONF:1098-15915).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.14-2014-06-09-branch-1098-7733-infos" context="cda:procedure[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.14' and @extension = '2014-06-09']]/cda:performer/cda:assignedEntity/cda:representedOrganization">
			<sch:assert id="a-1098-7735" test="exists(cda:name)">The representedOrganization, if present, MAY contain zero or more [0..*] name (CONF:1098-7735).</sch:assert>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.4-2014-06-09-infos">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.4-2014-06-09-infos" context="cda:observation[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.4' and @extension = '2014-06-09']]">
			<sch:assert id="a-1098-10139" test="exists(@negationInd)">The negationInd is used to indicate the absence of the condition in observation/value. A negationInd of "true" coupled with an observation/value of SNOMED code 64572001 "Disease (disorder)" indicates that the patient has no known conditions. MAY contain zero or one [0..1] @negationInd (CONF:1098-10139).</sch:assert>
			<sch:assert id="a-1098-9063" test="count(cda:entryRelationship[@typeCode='REFR'][count(cda:observation[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.6' and @extension = '2014-06-09']])=1])=1">MAY contain zero or one [0..1] entryRelationship (CONF:1098-9063) such that it SHALL contain exactly one [1..1] @typeCode="REFR" Refers to (CodeSystem: HL7ActRelationshipType urn:oid:2.16.840.1.113883.5.1002) (CONF:1098-9068). SHALL contain exactly one [1..1] Problem Status (DEPRECATED) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.4.6:2014-06-09) (CONF:1098-15591).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.4-2014-06-09-branch-1098-9050-infos" context="cda:observation[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.4' and @extension = '2014-06-09']]/cda:effectiveTime">
			<sch:assert id="a-1098-15604" test="count(cda:high)=1">The effectiveTime/high (a.k.a. "resolution date") asserts when the condition became biologically resolved. This effectiveTime MAY contain zero or one [0..1] high (CONF:1098-15604).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.4-2014-06-09-branch-1098-9058-infos" context="cda:observation[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.4' and @extension = '2014-06-09']]/cda:value[@xsi:type='CD']">
			<sch:assert id="a-1098-31870" test="exists(cda:qualifier)">The observation/value and all the qualifiers together (often referred to as a post-coordinated expression) make up one concept. Qualifiers constrain the meaning of the primary code, and cannot negate it or change its meaning. Qualifiers can only be used according to well-defined rules of post-coordination and only if the underlying code system defines the use of such qualifiers or if there is a third code system that specifies how other code systems may be combined.
For example, SNOMED CT allows constructing concepts as a combination of multiple codes. SNOMED CT defines a concept "pneumonia (disorder)" (233604007) an attribute "finding site" (363698007) and another concept "left lower lobe of lung (body structure)" (41224006). SNOMED CT allows one to combine these codes in a code phrase, as shown in the sample XML. This value MAY contain zero or more [0..*] qualifier (CONF:1098-31870).</sch:assert>
			<sch:assert id="a-1098-16749" test="exists(cda:translation)">This value MAY contain zero or more [0..*] translation (CONF:1098-16749) such that it</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.4-2014-06-09-branch-1098-16749-infos" context="cda:observation[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.4' and @extension = '2014-06-09']]/cda:value[@xsi:type='CD']/cda:translation">
			<sch:assert id="a-1098-16750" test="exists(@code) and @codeSystem='2.16.840.1.113883.6.90'">MAY contain zero or one [0..1] @code (CodeSystem: ICD10CM 2.16.840.1.113883.6.90 STATIC) (CONF:1098-16750).</sch:assert>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.3-2014-06-09-infos">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.3-2014-06-09-branch-1098-9030-infos" context="cda:act[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.3' and @extension = '2014-06-09']]/cda:effectiveTime">
			<sch:assert id="a-1098-9033" test="count(cda:high)=1">This effectiveTime MAY contain zero or one [0..1] high (CONF:1098-9033). Note: The effectiveTime/high asserts when the concern was completed (e.g., when the clinician deemed there is no longer any need to track the underlying condition).</sch:assert>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.20.22.2.5.1-2014-06-09-infos">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.5.1-2014-06-09-infos" context="cda:section[cda:templateId[@root='2.16.840.1.113883.10.20.22.2.5.1' and @extension = '2014-06-09']]">
			<sch:assert id="a-1098-30479" test="count(cda:entry[count(cda:observation[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.5' and @extension = '2014-06-09']])=1])=1">MAY contain zero or one [0..1] entry (CONF:1098-30479) such that it SHALL contain exactly one [1..1] Health Status Observation (V2) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.4.5:2014-06-09) (CONF:1098-30480).</sch:assert>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.40-2014-06-09-infos">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.40-2014-06-09-infos" context="cda:encounter[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.40' and @extension = '2014-06-09']]">
			<sch:assert id="a-1098-31877" test="exists(cda:entryRelationship[@typeCode='RSON'][count(cda:observation[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.19' and @extension = '2014-06-09']])=1])">The following entryRelationship captures the reason for the planned or ordered encounter MAY contain zero or more [0..*] entryRelationship (CONF:1098-31877) such that it SHALL contain exactly one [1..1] @typeCode="RSON" Has Reason (CodeSystem: HL7ActRelationshipType urn:oid:2.16.840.1.113883.5.1002) (CONF:1098-31878). SHALL contain exactly one [1..1] Indication (V2) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.4.19:2014-06-09) (CONF:1098-31879).</sch:assert>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.41-2014-06-09-infos">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.41-2014-06-09-infos" context="cda:procedure[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.41' and @extension = '2014-06-09']]">
			<sch:assert id="a-1098-31980" test="exists(cda:methodCode)">In a planned procedure the provider may suggest that a procedure should be performed using a particular method. MethodCode SHALL NOT conflict with the method inherent in Procedure/code. MAY contain zero or more [0..*] methodCode (CONF:1098-31980).</sch:assert>
			<sch:assert id="a-1098-31981" test="exists(cda:targetSiteCode)">The targetSiteCode is used to identify the part of the body of concern for the planned procedure. MAY contain zero or more [0..*] targetSiteCode, which SHALL be selected from ValueSet Body Site urn:oid:2.16.840.1.113883.3.88.12.3221.8.9 DYNAMIC (CONF:1098-31981).</sch:assert>
			<sch:assert id="a-1098-30449" test="exists(cda:performer)">The clinician who is expected to perform the procedure could be identified using procedure/performer. MAY contain zero or more [0..*] performer (CONF:1098-30449).</sch:assert>
			<sch:assert id="a-1098-31982" test="exists(cda:entryRelationship[@typeCode='RSON'][count(cda:observation[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.19' and @extension = '2014-06-09']])=1])">The following entryRelationship represents the indication for the procedure. MAY contain zero or more [0..*] entryRelationship (CONF:1098-31982) such that it SHALL contain exactly one [1..1] @typeCode="RSON" Has Reason (CodeSystem: HL7ActRelationshipType urn:oid:2.16.840.1.113883.5.1002) (CONF:1098-31983). SHALL contain exactly one [1..1] Indication (V2) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.4.19:2014-06-09) (CONF:1098-31984).</sch:assert>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.42-2014-06-09-infos">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.42-2014-06-09-infos" context="cda:substanceAdministration[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.42' and @extension = '2014-06-09']]">
			<sch:assert id="a-1098-32066" test="count(cda:repeatNumber)=1">In a Planned Medication Activity, repeatNumber defines the number of allowed administrations. For example, a repeatNumber of "3" means that the substance can be administered up to 3 times. MAY contain zero or one [0..1] repeatNumber (CONF:1098-32066).</sch:assert>
			<sch:assert id="a-1098-32067" test="count(cda:routeCode)=1">MAY contain zero or one [0..1] routeCode, which SHALL be selected from ValueSet Medication Route FDA urn:oid:2.16.840.1.113883.3.88.12.3221.8.7 DYNAMIC (CONF:1098-32067).</sch:assert>
			<sch:assert id="a-1098-32078" test="exists(cda:approachSiteCode)">MAY contain zero or more [0..*] approachSiteCode, which SHALL be selected from ValueSet Body Site urn:oid:2.16.840.1.113883.3.88.12.3221.8.9 DYNAMIC (CONF:1098-32078).</sch:assert>
			<sch:assert id="a-1098-32068" test="count(cda:doseQuantity)=1">MAY contain zero or one [0..1] doseQuantity (CONF:1098-32068).</sch:assert>
			<sch:assert id="a-1098-32079" test="count(cda:rateQuantity)=1">MAY contain zero or one [0..1] rateQuantity (CONF:1098-32079).</sch:assert>
			<sch:assert id="a-1098-32080" test="count(cda:maxDoseQuantity)=1">MAY contain zero or one [0..1] maxDoseQuantity (CONF:1098-32080).</sch:assert>
			<sch:assert id="a-1098-32081" test="count(cda:administrationUnitCode)=1">MAY contain zero or one [0..1] administrationUnitCode, which SHALL be selected from ValueSet AdministrableDrugForm urn:oid:2.16.840.1.113883.1.11.14570 DYNAMIC (CONF:1098-32081).</sch:assert>
			<sch:assert id="a-1098-30470" test="exists(cda:performer)">The clinician who is expected to perform the medication activity could be identified using substanceAdministration/performer. MAY contain zero or more [0..*] performer (CONF:1098-30470).</sch:assert>
			<sch:assert id="a-1098-32069" test="exists(cda:entryRelationship[@typeCode='RSON'][count(cda:observation[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.19' and @extension = '2014-06-09']])=1])">The following entryRelationship represents the indication for the planned medication activity. MAY contain zero or more [0..*] entryRelationship (CONF:1098-32069) such that it SHALL contain exactly one [1..1] @typeCode="RSON" Has Reason (CodeSystem: HL7ActRelationshipType urn:oid:2.16.840.1.113883.5.1002) (CONF:1098-32070). SHALL contain exactly one [1..1] Indication (V2) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.4.19:2014-06-09) (CONF:1098-32071).</sch:assert>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.19-2014-06-09-infos">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.19-2014-06-09-infos" context="cda:observation[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.19' and @extension = '2014-06-09']]">
			<sch:assert id="a-1098-31229-v" test="count(cda:code)=1 and cda:code/@code=document('voc.xml')/voc:systems/voc:system[@valueSetOid='2.16.840.1.113883.3.88.12.3221.7.2']/voc:code/@value">SHALL contain exactly one [1..1] code, which MAY be selected from ValueSet Problem Type 2.16.840.1.113883.3.88.12.3221.7.2 STATIC 2014-09-02 (CONF:1098-31229).</sch:assert>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.27-2014-06-09-infos">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.27-2014-06-09-infos" context="cda:observation[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.27' and @extension = '2014-06-09']]">
			<sch:assert id="a-1098-7307" test="count(cda:interpretationCode)=1">MAY contain zero or one [0..1] interpretationCode (CONF:1098-7307).</sch:assert>
			<sch:assert id="a-1098-7308" test="count(cda:methodCode)=1">MAY contain zero or one [0..1] methodCode (CONF:1098-7308).</sch:assert>
			<sch:assert id="a-1098-7309" test="count(cda:targetSiteCode)=1">MAY contain zero or one [0..1] targetSiteCode (CONF:1098-7309).</sch:assert>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.2-2014-06-09-infos">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.2-2014-06-09-infos" context="cda:observation[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.2' and @extension = '2014-06-09']]">
			<sch:assert id="a-1098-7148" test="count(cda:methodCode)=1">MAY contain zero or one [0..1] methodCode (CONF:1098-7148).</sch:assert>
			<sch:assert id="a-1098-7153" test="count(cda:targetSiteCode)=1">MAY contain zero or one [0..1] targetSiteCode (CONF:1098-7153).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.2-2014-06-09-branch-1098-7143-infos" context="cda:observation[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.2' and @extension = '2014-06-09']]/cda:value">
			<sch:assert id="a-1098-31866" test="exists(cda:translation)">A coded value MAY contain zero or more [0..*] translations, which can be used to represent the original results as output by the lab (CONF:1098-31866).</sch:assert>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.23-2014-06-09-infos">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.23-2014-06-09-infos" context="cda:manufacturedProduct[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.23' and @extension = '2014-06-09']]">
			<sch:assert id="a-1098-7410" test="exists(cda:id)">MAY contain zero or more [0..*] id (CONF:1098-7410).</sch:assert>
			<sch:assert id="a-1098-7416" test="count(cda:manufacturerOrganization)=1">MAY contain zero or one [0..1] manufacturerOrganization (CONF:1098-7416).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.23-2014-06-09-branch-1098-7412-infos" context="cda:manufacturedProduct[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.23' and @extension = '2014-06-09']]/cda:manufacturedMaterial/cda:code/cda:translation">
			<sch:assert id="a-1098-31884" test="true()">This code MAY contain zero or more [0..*] translation, which MAY be selected from ValueSet Clinical Substance urn:oid:2.16.840.1.113762.1.4.1010.2 DYNAMIC (CONF:1098-31884).</sch:assert>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.26-2014-06-09-infos">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.26-2014-06-09-infos" context="cda:organizer[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.26' and @extension = '2014-06-09']]">
			<sch:assert id="a-1098-32740" test="count(cda:code)=1">MAY contain zero or one [0..1] code (CONF:1098-32740).</sch:assert>
			<sch:assert id="a-1098-7288" test="count(cda:effectiveTime)=1">MAY contain zero or one [0..1] effectiveTime (CONF:1098-7288).
Note: The effectiveTime is an interval that spans the effectiveTimes of the contained vital signs observations. Because all contained vital signs observations have a required time stamp, it is not required that this effectiveTime be populated.</sch:assert>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.20.22.2.4.1-2014-06-09-infos">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.4.1-2014-06-09-infos" context="cda:section[cda:templateId[@root='2.16.840.1.113883.10.20.22.2.4.1' and @extension = '2014-06-09']]">
			<sch:assert id="a-1098-32874" test="@nullFlavor='NI'">MAY contain zero or one [0..1] @nullFlavor="NI" No information (CodeSystem: HL7NullFlavor urn:oid:2.16.840.1.113883.5.1008) (CONF:1098-32874).</sch:assert>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.1-2014-06-09-infos">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.1-2014-06-09-infos" context="cda:organizer[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.1' and @extension = '2014-06-09']]">
			<sch:assert id="a-1098-31865" test="count(cda:effectiveTime)=1">MAY contain zero or one [0..1] effectiveTime (CONF:1098-31865). Note: The effectiveTime is an interval that spans the effectiveTimes of the contained result observations. Because all contained result observations have a required time stamp, it is not required that this effectiveTime be populated.</sch:assert>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.85-2014-06-09-infos">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.85-2014-06-09-branch-1098-16564-infos" context="cda:observation[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.85' and @extension = '2014-06-09']]/cda:effectiveTime">
			<sch:assert id="a-1098-31431" test="count(cda:high)=1">This effectiveTime MAY contain zero or one [0..1] high (CONF:1098-31431).</sch:assert>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.20.22.2.3.1-2014-06-09-infos">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.3.1-2014-06-09-infos" context="cda:section[cda:templateId[@root='2.16.840.1.113883.10.20.22.2.3.1' and @extension = '2014-06-09']]">
			<sch:assert id="a-1098-32875" test="@nullFlavor='NI'">MAY contain zero or one [0..1] @nullFlavor="NI" No information (CodeSystem: HL7NullFlavor urn:oid:2.16.840.1.113883.5.1008) (CONF:1098-32875).</sch:assert>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.61-2014-06-09-infos">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.61-2014-06-09-branch-1098-8908-infos" context="cda:act[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.61' and @extension = '2014-06-09']]/cda:performer[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.87']]/cda:assignedEntity">
			<sch:assert id="a-1098-8910" test="count(cda:addr)=1">This assignedEntity MAY contain zero or one [0..1] US Realm Address (AD.US.FIELDED) (identifier: urn:oid:2.16.840.1.113883.10.20.22.5.2) (CONF:1098-8910).</sch:assert>
			<sch:assert id="a-1098-8911" test="exists(cda:telecom)">This assignedEntity MAY contain zero or more [0..*] telecom (CONF:1098- 8911).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.61-2014-06-09-branch-1098-8934-infos" context="cda:act[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.61' and @extension = '2014-06-09']]/cda:participant[@typeCode='HLD'][cda:templateId[@root='2.16.840.1.113883.10.20.22.4.90']]">
			<sch:assert id="a-1098-8938" test="count(cda:time)=1">MAY contain zero or one [0..1] time (CONF:1098-8938).</sch:assert>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-oid-2.16.840.1.113883.10.20.22.4.119-infos">
		<sch:rule id="r-urn-oid-2.16.840.1.113883.10.20.22.4.119-branch-1098-31472-infos" context="cda:author[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.119']]/cda:assignedAuthor">
			<sch:assert id="a-1098-31474" test="count(cda:assignedPerson)=1">This assignedAuthor MAY contain zero or one [0..1] assignedPerson (CONF:1098-31474).</sch:assert>
			<sch:assert id="a-1098-31476" test="count(cda:representedOrganization)=1">This assignedAuthor MAY contain zero or one [0..1] representedOrganization (CONF:1098-31476).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-oid-2.16.840.1.113883.10.20.22.4.119-branch-1098-31474-infos" context="cda:author[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.119']]/cda:assignedAuthor/cda:assignedPerson">
			<sch:assert id="a-1098-31475" test="exists(cda:name)">The assignedPerson, if present, MAY contain zero or more [0..*] name (CONF:1098-31475).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-oid-2.16.840.1.113883.10.20.22.4.119-branch-1098-31476-infos" context="cda:author[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.119']]/cda:assignedAuthor/cda:representedOrganization">
			<sch:assert id="a-1098-31478" test="exists(cda:id)">The representedOrganization, if present, MAY contain zero or more [0..*] id (CONF:1098-31478).</sch:assert>
			<sch:assert id="a-1098-31479" test="exists(cda:name)">The representedOrganization, if present, MAY contain zero or more [0..*] name (CONF:1098-31479).</sch:assert>
			<sch:assert id="a-1098-31480" test="exists(cda:telecom)">The representedOrganization, if present, MAY contain zero or more [0..*] telecom (CONF:1098-31480).</sch:assert>
			<sch:assert id="a-1098-31481" test="exists(cda:addr)">The representedOrganization, if present, MAY contain zero or more [0..*] addr (CONF:1098-31481).</sch:assert>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.20.22.4.45-2014-06-09-infos">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.4.45-2014-06-09-branch-1098-15248-infos" context="cda:organizer[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.45' and @extension = '2014-06-09']]/cda:subject/cda:relatedSubject/cda:subject">
			<sch:assert id="a-1098-15981" test="count(sdtc:deceasedInd)=1">The subject MAY contain zero or one [0..1] sdtc:deceasedInd. The prefix sdtc: SHALL be bound to the namespace “urn:hl7-org:sdtc”. The use of the namespace provides a necessary extension to CDA R2 for the use of the deceasedInd element (CONF:1098-15981).</sch:assert>
			<sch:assert id="a-1098-15982" test="count(sdtc:deceasedTime)=1">The subject MAY contain zero or one [0..1] sdtc:deceasedTime. The prefix sdtc: SHALL be bound to the namespace “urn:hl7-org:sdtc”. The use of the namespace provides a necessary extension to CDA R2 for the use of the deceasedTime element (CONF:1098-15982).</sch:assert>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.20.22.2.15-2014-06-09-infos">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.20.22.2.15-2014-06-09-infos" context="cda:section[cda:templateId[@root='2.16.840.1.113883.10.20.22.2.15' and @extension = '2014-06-09']]">
			<sch:assert id="a-1098-32430" test="exists(cda:entry[count(cda:organizer[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.45' and @extension = '2014-06-09']])=1])">MAY contain zero or more [0..*] entry (CONF:1098-32430) such that it SHALL contain exactly one [1..1] Family History Organizer (V2) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.4.45:2014-06-09) (CONF:1098-32431).</sch:assert>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.13.23-2014-08-08-infos">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.23-2014-08-08-branch-1126-33265-infos" context="cda:observation[cda:templateId[@root='2.16.840.1.113883.10.13.23' and @extension = '2014-08-08']]/cda:value[@xsi:type='CD']">
			<sch:assert id="a-1126-34005" test="exists(@sdtc:valueSet)">This value MAY contain zero or one [0..1] @sdtc:valueSet (CONF:1126-34005).</sch:assert>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.13.27-2014-08-08-infos">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.27-2014-08-08-infos" context="cda:observation[cda:templateId[@root='2.16.840.1.113883.10.13.27' and @extension = '2014-08-08']]">
			<sch:assert id="a-1126-33583" test="count(cda:statusCode)=1">MAY contain zero or one [0..1] statusCode (CONF:1126-33583).</sch:assert>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.13.26-2014-08-08-infos">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.26-2014-08-08-infos" context="cda:procedure[cda:templateId[@root='2.16.840.1.113883.10.13.26' and @extension = '2014-08-08']]">
			<sch:assert id="a-1126-33337" test="exists(cda:participant)">MAY contain zero or more [0..*] participant (CONF:1126-33337).</sch:assert>
			<sch:assert id="a-1126-33338" test="count(cda:entryRelationship[@typeCode='SUBJ'][@inversion='true'][count(cda:observation[cda:templateId[@root='2.16.840.1.113883.10.13.28' and @extension='2014-08-08']])=1])=1">MAY contain zero or one [0..1] entryRelationship (CONF:1126-33338) such that it
SHALL contain exactly one [1..1] @typeCode="SUBJ" subject (CodeSystem: HL7ActRelationshipType urn:oid:2.16.840.1.113883.5.1002) (CONF:1126-33358). SHALL contain exactly one [1..1] @inversionInd="true" (CONF:1126-33359). SHALL contain exactly one [1..1] Radiation Boost Dose - cGy (identifier:urn:hl7ii:2.16.840.1.113883.10.13.28:2014-08-08) (CONF:1126-33360).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.26-2014-08-08-branch-1126-33335-infos" context="cda:procedure[cda:templateId[@root='2.16.840.1.113883.10.13.26' and @extension = '2014-08-08']]/cda:performer/cda:assignedEntity">
			<sch:assert id="a-1126-33581" test="count(cda:assignedPerson)=1">This assignedEntity MAY contain zero or one [0..1] assignedPerson (CONF:1126-33581).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.26-2014-08-08-branch-1126-33581-infos" context="cda:procedure[cda:templateId[@root='2.16.840.1.113883.10.13.26' and @extension = '2014-08-08']]/cda:performer/cda:assignedEntity/cda:assignedPerson">
			<sch:assert id="a-1126-33582" test="count(cda:name)=1">The assignedPerson, if present, MAY contain zero or one [0..1] US Realm Person Name (PN.US.FIELDED) (identifier: urn:oid:2.16.840.1.113883.10.20.22.5.1.1) (CONF:1126-33582).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.26-2014-08-08-branch-1126-33336-infos" context="cda:procedure[cda:templateId[@root='2.16.840.1.113883.10.13.26' and @extension = '2014-08-08']]/cda:performer/cda:assignedEntity/cda:representedOrganization">
			<sch:assert id="a-1126-33352" test="exists(cda:name)">The representedOrganization, if present, MAY contain zero or more [0..*] name (CONF:1126-33352).</sch:assert>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.13.25-2014-08-08-infos">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.25-2014-08-08-infos" context="cda:procedure[cda:templateId[@root='2.16.840.1.113883.10.13.25' and @extension = '2014-08-08']]">
			<sch:assert id="a-1126-33370" test="exists(cda:participant)">MAY contain zero or more [0..*] participant (CONF:1126-33370).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.25-2014-08-08-branch-1126-33369-infos" context="cda:procedure[cda:templateId[@root='2.16.840.1.113883.10.13.25' and @extension = '2014-08-08']]/cda:performer/cda:assignedEntity/cda:representedOrganization">
			<sch:assert id="a-1126-33385" test="exists(cda:name)">The representedOrganization, if present, MAY contain zero or more [0..*] name (CONF:1126-33385).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.25-2014-08-08-branch-1126-33624-infos" context="cda:procedure[cda:templateId[@root='2.16.840.1.113883.10.13.25' and @extension = '2014-08-08']]">
		        <sch:assert id="a-1126-33624" test="exists(cda:entryRelationship[count(cda:observation[cda:templateId[@root='2.16.840.1.113883.10.13.27' and @extension = '2014-08-08']])=1])">May contain at least one [1..*] entryRelationship (CONF:1126-33624) such that it MAY contain exactly one [1..1] Radiation Regional Dose - cGy (identifier: urn:hl7ii:2.16.840.1.113883.10.13.27:2014-08-08) (CONF:1126-33625).</sch:assert>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.13.28-2014-08-08-infos">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.28-2014-08-08-infos" context="cda:observation[cda:templateId[@root='2.16.840.1.113883.10.13.28' and @extension = '2014-08-08']]">
			<sch:assert id="a-1126-33627" test="count(cda:statusCode)=1">MAY contain zero or one [0..1] statusCode (CONF:1126-33627).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.28-2014-08-08-branch-1126-33626-infos" context="cda:observation[cda:templateId[@root='2.16.840.1.113883.10.13.28' and @extension = '2014-08-08']]/cda:code">
			<sch:assert id="a-1126-33631" test="@code='42119-8'">This code MAY contain zero or one [0..1] @code="42119-8" Boost radiation dose [Energy/mass] (CodeSystem: LOINC urn:oid:2.16.840.1.113883.6.1) (CONF:1126-33631).</sch:assert>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.13.16-2015-01-29-infos">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.16-2015-01-29-infos" context="cda:organizer[cda:templateId[@root='2.16.840.1.113883.10.13.16' and @extension = '2015-01-29']]">
			<sch:assert id="a-1169-34250" test="exists(@nullFlavor)">MAY contain zero or one [0..1] @nullFlavor (CONF:1169-34250).</sch:assert>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.13.33-2015-01-29-infos">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.33-2015-01-29-branch-1169-34010-infos" context="cda:observation[cda:templateId[@root='2.16.840.1.113883.10.13.33' and @extension = '2015-01-29']]/cda:effectiveTime">
			<sch:assert id="a-1169-34012" test="count(cda:high)=1">This effectiveTime MAY contain zero or one [0..1] high (CONF:1169-34012).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.33-2015-01-29-branch-1169-34371-infos" context="cda:observation[cda:templateId[@root='2.16.840.1.113883.10.13.33' and @extension = '2015-01-29']]/cda:value[@xsi:type='CD']">
			<sch:assert id="a-1169-34371" test="exists(@nullFlavor)">This value MAY contain zero or one [0..1] @nullFlavor (CONF:1169-34371).</sch:assert>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.13.34-2015-01-29-infos">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.34-2015-01-29-branch-1169-34027-infos" context="cda:observation[cda:templateId[@root='2.16.840.1.113883.10.13.34' and @extension = '2015-01-29']]/cda:effectiveTime">
			<sch:assert id="a-1169-34029" test="count(cda:high)=1">This effectiveTime MAY contain zero or one [0..1] high (CONF:1169-34029).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.34-2015-01-29-branch-1169-34030-infos" context="cda:observation[cda:templateId[@root='2.16.840.1.113883.10.13.34' and @extension = '2015-01-29']]/cda:value[@xsi:type='CD']">
			<sch:assert id="a-1169-34372" test="exists(@nullFlavor)">This value MAY contain zero or one [0..1] @nullFlavor (CONF:1169-34372).</sch:assert>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.13.1-2015-01-29-infos">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.1-2015-01-29-infos" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.13.1' and @extension = '2015-01-29']]">
			<sch:assert id="a-1169-33602" test="exists(cda:relatedDocument)">MAY contain zero or more [0..*] relatedDocument (CONF:1169-33602) such that it</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.1-2015-01-29-branch-1169-226-infos" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.13.1' and @extension = '2015-01-29']]/cda:recordTarget/cda:patientRole/cda:patient/cda:birthplace/cda:place/cda:addr">
			<sch:assert id="a-1169-34363" test="count(cda:country)=1 and count(cda:country[exists(@nullFlavor)])=1">This country MAY contain zero or one [0..1] @nullFlavor (CONF:1169-34363).</sch:assert>
			<sch:assert id="a-1169-34364" test="count(cda:state)=1 and count(cda:state[exists(@nullFlavor)])=1">This state MAY contain zero or one [0..1] @nullFlavor (CONF:1169-34364).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.1-2015-01-29-branch-1169-33897-infos" context="cda:ClinicalDocument[cda:templateId[@root='2.16.840.1.113883.10.13.1' and @extension = '2015-01-29']]/cda:componentOf/cda:encompassingEncounter/cda:location/cda:healthCareFacility/cda:serviceProviderOrganization">
			<sch:assert id="a-1169-33984" test="exists(cda:name)">MAY contain zero or more [0..*] name (CONF:1169-33984).</sch:assert>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.13.5-2015-02-05-infos">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.5-2015-02-05-branch-1169-32513-infos" context="cda:observation[cda:templateId[@root='2.16.840.1.113883.10.13.5' and @extension = '2015-02-05']]/cda:effectiveTime/cda:low">
			<sch:assert id="a-1169-32640" test="exists(@nullFlavor)">This low MAY contain zero or one [0..1] @nullFlavor (CONF:1169-32640).</sch:assert>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.13.2-2015-02-05-infos">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.2-2015-02-05-infos" context="cda:section[cda:templateId[@root='2.16.840.1.113883.10.13.2' and @extension = '2015-02-05']]">
			<sch:assert id="a-1169-256" test="count(cda:entry[count(cda:observation[cda:templateId[@root='2.16.840.1.113883.10.20.22.4.5' and @extension = '2014-06-09']])=1])=1">MAY contain zero or one [0..1] entry (CONF:1169-256) such that it SHALL contain exactly one [1..1] Health Status Observation (V2) (identifier: urn:hl7ii:2.16.840.1.113883.10.20.22.4.5:2014-06-09) (CONF:1169-263).</sch:assert>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.13.3-2015-02-05-infos">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.3-2015-02-05-branch-1169-32424-infos" context="cda:act[cda:templateId[@root='2.16.840.1.113883.10.13.3' and @extension = '2015-02-05']]/cda:effectiveTime/cda:high">
			<sch:assert id="a-1169-32472" test="exists(@nullFlavor)">The high, if present, MAY contain zero or one [0..1] @nullFlavor (CONF:1169-32472).</sch:assert>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.13.4-2015-02-05-infos">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.4-2015-02-05-branch-1169-32446-infos" context="cda:observation[cda:templateId[@root='2.16.840.1.113883.10.13.4' and @extension = '2015-02-05']]/cda:effectiveTime">
			<sch:assert id="a-1169-32461" test="count(cda:high)=1">This effectiveTime MAY contain zero or one [0..1] high (CONF:1169-32461).
Note: The effectiveTime/high (a.k.a. "resolution date") indicates Cancer Resolution Date. If the problem (cancer) is known to be resolved, but the date of resolution is not known, then the high element SHALL be present, and the nullFlavor attribute SHALL be set to 'UNK'. Therefore, the existence of an high element within a problem (cancer) indicates that the problem has been resolved (patient is cancer-free).</sch:assert>
		</sch:rule>
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.4-2015-02-05-branch-1169-32447-infos" context="cda:observation[cda:templateId[@root='2.16.840.1.113883.10.13.4' and @extension = '2015-02-05']]/cda:value[@xsi:type='CD']">
			<sch:assert id="a-1169-34370" test="(empty(@nullFlavor) and exists(@code)) or (@nullFlavor='NA' and empty(@code))">This value MAY contain zero or one [0..1] @nullFlavor (CONF:1169-34370). Note: Use @nullFlavor="NA" when a coded value is not available.</sch:assert>
			<sch:assert id="a-1169-34003" test="exists(@nullFlavor) or exists(@sdtc:valueSet)">If value/@nullFlavor not present then This value MAY contain zero or one [0..1] @sdtc:valueSet (CONF:1169-34003).</sch:assert>
		</sch:rule>
	</sch:pattern>
	<sch:pattern id="p-urn-hl7ii-2.16.840.1.113883.10.13.7-2015-02-06-infos">
		<sch:rule id="r-urn-hl7ii-2.16.840.1.113883.10.13.7-2015-02-06-branch-1169-33123-infos" context="cda:observation[cda:templateId[@root='2.16.840.1.113883.10.13.7' and @extension = '2015-02-06']]/cda:effectiveTime/cda:low">
			<sch:assert id="a-1169-33152" test="exists(@nullFlavor)">This low MAY contain zero or one [0..1] @nullFlavor (CONF:1169-33152).</sch:assert>
		</sch:rule>
	</sch:pattern>
	
</sch:schema>
