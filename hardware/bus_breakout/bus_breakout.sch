<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="6.1">
<drawing>
<settings>
<setting alwaysvectorfont="no"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.1" unitdist="inch" unit="inch" style="lines" multiple="1" display="no" altdistance="0.01" altunitdist="inch" altunit="inch"/>
<layers>
<layer number="1" name="Top" color="4" fill="1" visible="no" active="no"/>
<layer number="2" name="Route2" color="1" fill="3" visible="no" active="no"/>
<layer number="3" name="Route3" color="4" fill="3" visible="no" active="no"/>
<layer number="4" name="Route4" color="1" fill="4" visible="no" active="no"/>
<layer number="5" name="Route5" color="4" fill="4" visible="no" active="no"/>
<layer number="6" name="Route6" color="1" fill="8" visible="no" active="no"/>
<layer number="7" name="Route7" color="4" fill="8" visible="no" active="no"/>
<layer number="8" name="Route8" color="1" fill="2" visible="no" active="no"/>
<layer number="9" name="Route9" color="4" fill="2" visible="no" active="no"/>
<layer number="10" name="Route10" color="1" fill="7" visible="no" active="no"/>
<layer number="11" name="Route11" color="4" fill="7" visible="no" active="no"/>
<layer number="12" name="Route12" color="1" fill="5" visible="no" active="no"/>
<layer number="13" name="Route13" color="4" fill="5" visible="no" active="no"/>
<layer number="14" name="Route14" color="1" fill="6" visible="no" active="no"/>
<layer number="15" name="Route15" color="4" fill="6" visible="no" active="no"/>
<layer number="16" name="Bottom" color="1" fill="1" visible="no" active="no"/>
<layer number="17" name="Pads" color="2" fill="1" visible="no" active="no"/>
<layer number="18" name="Vias" color="2" fill="1" visible="no" active="no"/>
<layer number="19" name="Unrouted" color="6" fill="1" visible="no" active="no"/>
<layer number="20" name="Dimension" color="15" fill="1" visible="no" active="no"/>
<layer number="21" name="tPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="22" name="bPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="23" name="tOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="24" name="bOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="25" name="tNames" color="7" fill="1" visible="no" active="no"/>
<layer number="26" name="bNames" color="7" fill="1" visible="no" active="no"/>
<layer number="27" name="tValues" color="7" fill="1" visible="no" active="no"/>
<layer number="28" name="bValues" color="7" fill="1" visible="no" active="no"/>
<layer number="29" name="tStop" color="7" fill="3" visible="no" active="no"/>
<layer number="30" name="bStop" color="7" fill="6" visible="no" active="no"/>
<layer number="31" name="tCream" color="7" fill="4" visible="no" active="no"/>
<layer number="32" name="bCream" color="7" fill="5" visible="no" active="no"/>
<layer number="33" name="tFinish" color="6" fill="3" visible="no" active="no"/>
<layer number="34" name="bFinish" color="6" fill="6" visible="no" active="no"/>
<layer number="35" name="tGlue" color="7" fill="4" visible="no" active="no"/>
<layer number="36" name="bGlue" color="7" fill="5" visible="no" active="no"/>
<layer number="37" name="tTest" color="7" fill="1" visible="no" active="no"/>
<layer number="38" name="bTest" color="7" fill="1" visible="no" active="no"/>
<layer number="39" name="tKeepout" color="4" fill="11" visible="no" active="no"/>
<layer number="40" name="bKeepout" color="1" fill="11" visible="no" active="no"/>
<layer number="41" name="tRestrict" color="4" fill="10" visible="no" active="no"/>
<layer number="42" name="bRestrict" color="1" fill="10" visible="no" active="no"/>
<layer number="43" name="vRestrict" color="2" fill="10" visible="no" active="no"/>
<layer number="44" name="Drills" color="7" fill="1" visible="no" active="no"/>
<layer number="45" name="Holes" color="7" fill="1" visible="no" active="no"/>
<layer number="46" name="Milling" color="3" fill="1" visible="no" active="no"/>
<layer number="47" name="Measures" color="7" fill="1" visible="no" active="no"/>
<layer number="48" name="Document" color="7" fill="1" visible="no" active="no"/>
<layer number="49" name="Reference" color="7" fill="1" visible="no" active="no"/>
<layer number="51" name="tDocu" color="6" fill="9" visible="no" active="no"/>
<layer number="52" name="bDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="91" name="Nets" color="2" fill="1" visible="yes" active="yes"/>
<layer number="92" name="Busses" color="1" fill="1" visible="yes" active="yes"/>
<layer number="93" name="Pins" color="2" fill="1" visible="no" active="yes"/>
<layer number="94" name="Symbols" color="4" fill="1" visible="yes" active="yes"/>
<layer number="95" name="Names" color="7" fill="1" visible="yes" active="yes"/>
<layer number="96" name="Values" color="7" fill="1" visible="yes" active="yes"/>
<layer number="97" name="Info" color="7" fill="1" visible="yes" active="yes"/>
<layer number="98" name="Guide" color="6" fill="1" visible="yes" active="yes"/>
</layers>
<schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
<libraries>
<library name="supply1">
<packages>
</packages>
<symbols>
<symbol name="GND">
<wire x1="-1.905" y1="0" x2="1.905" y2="0" width="0.254" layer="94"/>
<text x="-2.54" y="-2.54" size="1.778" layer="96">&gt;VALUE</text>
<pin name="GND" x="0" y="2.54" visible="off" length="short" direction="sup" rot="R270"/>
</symbol>
<symbol name="+5V">
<wire x1="1.27" y1="-1.905" x2="0" y2="0" width="0.254" layer="94"/>
<wire x1="0" y1="0" x2="-1.27" y2="-1.905" width="0.254" layer="94"/>
<text x="-2.54" y="-5.08" size="1.778" layer="96" rot="R90">&gt;VALUE</text>
<pin name="+5V" x="0" y="-2.54" visible="off" length="short" direction="sup" rot="R90"/>
</symbol>
<symbol name="+12V">
<wire x1="1.27" y1="-1.905" x2="0" y2="0" width="0.254" layer="94"/>
<wire x1="0" y1="0" x2="-1.27" y2="-1.905" width="0.254" layer="94"/>
<wire x1="1.27" y1="-0.635" x2="0" y2="1.27" width="0.254" layer="94"/>
<wire x1="0" y1="1.27" x2="-1.27" y2="-0.635" width="0.254" layer="94"/>
<text x="-2.54" y="-5.08" size="1.778" layer="96" rot="R90">&gt;VALUE</text>
<pin name="+12V" x="0" y="-2.54" visible="off" length="short" direction="sup" rot="R90"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="GND" prefix="GND">
<description>&lt;b&gt;SUPPLY SYMBOL&lt;/b&gt;</description>
<gates>
<gate name="1" symbol="GND" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="+5V" prefix="P+">
<description>&lt;b&gt;SUPPLY SYMBOL&lt;/b&gt;</description>
<gates>
<gate name="1" symbol="+5V" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="+12V" prefix="P+">
<description>&lt;b&gt;SUPPLY SYMBOL&lt;/b&gt;</description>
<gates>
<gate name="1" symbol="+12V" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="con-phoenix-508">
<description>&lt;b&gt;Phoenix Connectors&lt;/b&gt;&lt;p&gt;
Grid 5.08 mm&lt;p&gt;
Based on the previous libraries:
&lt;ul&gt;
&lt;li&gt;pho508a.lbr
&lt;li&gt;pho508b.lbr
&lt;li&gt;pho508c.lbr
&lt;li&gt;pho508d.lbr
&lt;li&gt;pho508e.lbr
&lt;/ul&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="MKDSN1,5/10-5,08">
<description>&lt;b&gt;MKDSN 1,5/10-5,08&lt;/b&gt; Printklemme&lt;p&gt;
Nennstrom: 13,5 A&lt;br&gt;
Nennspannung: 250 V&lt;br&gt;
Rastermaß: 5,08 mm&lt;br&gt;
Polzahl: 10&lt;br&gt;
Anschlussart: Schraubanschluss&lt;br&gt;
Montage: Löten&lt;br&gt;
Anschlussrichtung Leiter/Platine: 0 °&lt;br&gt;
Artikelnummer: 1729209&lt;br&gt;
Source: http://eshop.phoenixcontact.com .. 1729209.pdf</description>
<wire x1="-25.4211" y1="-4.05" x2="25.3789" y2="-4.05" width="0.2032" layer="21"/>
<wire x1="-25.4211" y1="2.5243" x2="25.3789" y2="2.5243" width="0.2032" layer="21"/>
<wire x1="-23.0411" y1="-0.63" x2="-23.9541" y2="-1.543" width="0.2032" layer="51"/>
<wire x1="-25.4211" y1="-1.9555" x2="-25.4211" y2="-2.4479" width="0.2032" layer="21"/>
<wire x1="-25.4211" y1="-3.327" x2="-25.5498" y2="-3.327" width="0.2032" layer="21"/>
<wire x1="-25.5498" y1="-2.913" x2="-25.4211" y2="-2.913" width="0.2032" layer="21"/>
<wire x1="-25.4211" y1="-3.1279" x2="-25.4211" y2="-2.913" width="0.2032" layer="21"/>
<wire x1="-25.4211" y1="-3.327" x2="-25.4211" y2="-3.1279" width="0.2032" layer="21"/>
<wire x1="-25.9911" y1="-2.763" x2="-25.7281" y2="-2.763" width="0.2032" layer="21"/>
<wire x1="-25.9911" y1="-3.477" x2="-25.7281" y2="-3.477" width="0.2032" layer="21"/>
<wire x1="-25.4211" y1="-2.913" x2="-25.4211" y2="-2.4479" width="0.2032" layer="21"/>
<wire x1="-25.5498" y1="-3.327" x2="-25.7281" y2="-3.477" width="0.2032" layer="21"/>
<wire x1="-25.9911" y1="-2.763" x2="-25.9911" y2="-3.477" width="0.2032" layer="21"/>
<wire x1="-25.4211" y1="2.5243" x2="-25.4211" y2="2.0413" width="0.2032" layer="21"/>
<wire x1="-25.4211" y1="-1.9555" x2="-25.4211" y2="2.0413" width="0.2032" layer="21"/>
<wire x1="-25.7281" y1="-2.763" x2="-25.5498" y2="-2.913" width="0.2032" layer="21"/>
<wire x1="25.3789" y1="-2.4479" x2="-25.4211" y2="-2.4479" width="0.2032" layer="21"/>
<wire x1="-22.8811" y1="-0.47" x2="-23.0411" y2="-0.63" width="0.2032" layer="51"/>
<wire x1="-23.5201" y1="-0.119" x2="-22.8811" y2="0.52" width="0.2032" layer="51"/>
<wire x1="-24.4491" y1="-1.048" x2="-23.5201" y2="-0.119" width="0.2032" layer="51"/>
<wire x1="-19.3691" y1="-1.048" x2="-18.4401" y2="-0.119" width="0.2032" layer="51"/>
<wire x1="25.3789" y1="-1.9555" x2="25.3789" y2="-2.4479" width="0.2032" layer="21"/>
<wire x1="-17.9611" y1="-0.63" x2="-18.8741" y2="-1.543" width="0.2032" layer="51"/>
<wire x1="-14.2891" y1="-1.048" x2="-13.3601" y2="-0.119" width="0.2032" layer="51"/>
<wire x1="-12.8811" y1="-0.63" x2="-13.7941" y2="-1.543" width="0.2032" layer="51"/>
<wire x1="-9.2091" y1="-1.048" x2="-8.2801" y2="-0.119" width="0.2032" layer="51"/>
<wire x1="-7.8011" y1="-0.63" x2="-8.7141" y2="-1.543" width="0.2032" layer="51"/>
<wire x1="-18.4401" y1="-0.119" x2="-17.8011" y2="0.52" width="0.2032" layer="51"/>
<wire x1="-17.8011" y1="-0.47" x2="-17.9611" y2="-0.63" width="0.2032" layer="51"/>
<wire x1="-16.2331" y1="1.098" x2="-17.1711" y2="0.16" width="0.2032" layer="51"/>
<wire x1="-11.1531" y1="1.098" x2="-12.0911" y2="0.16" width="0.2032" layer="51"/>
<wire x1="-6.0731" y1="1.098" x2="-7.0111" y2="0.16" width="0.2032" layer="51"/>
<wire x1="-0.9931" y1="1.098" x2="-1.9311" y2="0.16" width="0.2032" layer="51"/>
<wire x1="4.0869" y1="1.098" x2="3.1489" y2="0.16" width="0.2032" layer="51"/>
<wire x1="-17.6821" y1="0.639" x2="-16.7281" y2="1.593" width="0.2032" layer="51"/>
<wire x1="-12.6021" y1="0.639" x2="-11.6481" y2="1.593" width="0.2032" layer="51"/>
<wire x1="-7.5221" y1="0.639" x2="-6.5681" y2="1.593" width="0.2032" layer="51"/>
<wire x1="-2.4421" y1="0.639" x2="-1.4881" y2="1.593" width="0.2032" layer="51"/>
<wire x1="2.6379" y1="0.639" x2="3.5919" y2="1.593" width="0.2032" layer="51"/>
<wire x1="-12.7211" y1="0.52" x2="-12.6021" y2="0.639" width="0.2032" layer="51"/>
<wire x1="-7.6411" y1="0.52" x2="-7.5221" y2="0.639" width="0.2032" layer="51"/>
<wire x1="-2.5611" y1="0.52" x2="-2.4421" y2="0.639" width="0.2032" layer="51"/>
<wire x1="2.5189" y1="0.52" x2="2.6379" y2="0.639" width="0.2032" layer="51"/>
<wire x1="-13.3601" y1="-0.119" x2="-12.7211" y2="0.52" width="0.2032" layer="51"/>
<wire x1="-17.1711" y1="0.16" x2="-17.8011" y2="-0.47" width="0.2032" layer="51"/>
<wire x1="-17.8011" y1="0.52" x2="-17.6821" y2="0.639" width="0.2032" layer="51"/>
<wire x1="-7.0111" y1="0.16" x2="-7.6411" y2="-0.47" width="0.2032" layer="51"/>
<wire x1="-8.2801" y1="-0.119" x2="-7.6411" y2="0.52" width="0.2032" layer="51"/>
<wire x1="-12.0911" y1="0.16" x2="-12.7211" y2="-0.47" width="0.2032" layer="51"/>
<wire x1="-3.2001" y1="-0.119" x2="-2.5611" y2="0.52" width="0.2032" layer="51"/>
<wire x1="-1.9311" y1="0.16" x2="-2.5611" y2="-0.47" width="0.2032" layer="51"/>
<wire x1="3.1489" y1="0.16" x2="2.5189" y2="-0.47" width="0.2032" layer="51"/>
<wire x1="1.8799" y1="-0.119" x2="2.5189" y2="0.52" width="0.2032" layer="51"/>
<wire x1="-12.7211" y1="-0.47" x2="-12.8811" y2="-0.63" width="0.2032" layer="51"/>
<wire x1="-7.6411" y1="-0.47" x2="-7.8011" y2="-0.63" width="0.2032" layer="51"/>
<wire x1="-2.5611" y1="-0.47" x2="-2.7211" y2="-0.63" width="0.2032" layer="51"/>
<wire x1="2.5189" y1="-0.47" x2="2.3589" y2="-0.63" width="0.2032" layer="51"/>
<wire x1="-4.1291" y1="-1.048" x2="-3.2001" y2="-0.119" width="0.2032" layer="51"/>
<wire x1="-2.7211" y1="-0.63" x2="-3.6341" y2="-1.543" width="0.2032" layer="51"/>
<wire x1="2.3589" y1="-0.63" x2="1.4459" y2="-1.543" width="0.2032" layer="51"/>
<wire x1="0.9509" y1="-1.048" x2="1.8799" y2="-0.119" width="0.2032" layer="51"/>
<wire x1="-22.2511" y1="0.16" x2="-22.8811" y2="-0.47" width="0.2032" layer="51"/>
<wire x1="-22.8811" y1="0.52" x2="-22.7621" y2="0.639" width="0.2032" layer="51"/>
<wire x1="-22.7621" y1="0.639" x2="-21.8081" y2="1.593" width="0.2032" layer="51"/>
<wire x1="-21.3131" y1="1.098" x2="-22.2511" y2="0.16" width="0.2032" layer="51"/>
<wire x1="-25.4211" y1="-3.1279" x2="25.3789" y2="-3.1279" width="0.2032" layer="21"/>
<wire x1="25.3789" y1="-3.1279" x2="25.3789" y2="-2.4479" width="0.2032" layer="21"/>
<wire x1="25.3789" y1="-1.9555" x2="25.3789" y2="2.0413" width="0.2032" layer="21"/>
<wire x1="25.3789" y1="2.5243" x2="25.3789" y2="2.0413" width="0.2032" layer="21"/>
<wire x1="25.3789" y1="2.5243" x2="25.3789" y2="4.05" width="0.2032" layer="21"/>
<wire x1="-25.4211" y1="-3.75" x2="-25.4211" y2="-3.327" width="0.2032" layer="21"/>
<wire x1="25.3789" y1="-3.75" x2="25.3789" y2="-3.1279" width="0.2032" layer="21"/>
<wire x1="-25.4211" y1="4.05" x2="25.3789" y2="4.05" width="0.2032" layer="21"/>
<wire x1="-25.4211" y1="2.5243" x2="-25.4211" y2="4.05" width="0.2032" layer="21"/>
<wire x1="25.3789" y1="-3.75" x2="-25.4211" y2="-3.75" width="0.2032" layer="21"/>
<wire x1="-25.4211" y1="-3.75" x2="-25.4211" y2="-4.05" width="0.2032" layer="21"/>
<wire x1="25.3789" y1="-3.75" x2="25.3789" y2="-4.05" width="0.2032" layer="21"/>
<wire x1="-23.5201" y1="-0.119" x2="-23.0411" y2="-0.63" width="0.2032" layer="51" curve="65.201851"/>
<wire x1="-18.4401" y1="-0.119" x2="-17.9611" y2="-0.63" width="0.2032" layer="51" curve="65.201851"/>
<wire x1="3.1489" y1="0.16" x2="2.6379" y2="0.639" width="0.2032" layer="51" curve="65.201851"/>
<wire x1="-1.9311" y1="0.16" x2="-2.4421" y2="0.639" width="0.2032" layer="51" curve="65.201851"/>
<wire x1="-7.0111" y1="0.16" x2="-7.5221" y2="0.639" width="0.2032" layer="51" curve="65.201851"/>
<wire x1="-12.0911" y1="0.16" x2="-12.6021" y2="0.639" width="0.2032" layer="51" curve="65.201851"/>
<wire x1="-17.1711" y1="0.16" x2="-17.6821" y2="0.639" width="0.2032" layer="51" curve="65.201851"/>
<wire x1="-13.3601" y1="-0.119" x2="-12.8811" y2="-0.63" width="0.2032" layer="51" curve="65.201851"/>
<wire x1="-8.2801" y1="-0.119" x2="-7.8011" y2="-0.63" width="0.2032" layer="51" curve="65.201851"/>
<wire x1="-3.2001" y1="-0.119" x2="-2.7211" y2="-0.63" width="0.2032" layer="51" curve="65.201851"/>
<wire x1="1.8799" y1="-0.119" x2="2.3589" y2="-0.63" width="0.2032" layer="51" curve="65.201851"/>
<wire x1="-22.2511" y1="0.16" x2="-22.7621" y2="0.639" width="0.2032" layer="51" curve="65.201851"/>
<wire x1="7.4389" y1="-0.63" x2="6.5259" y2="-1.543" width="0.2032" layer="51"/>
<wire x1="7.5989" y1="-0.47" x2="7.4389" y2="-0.63" width="0.2032" layer="51"/>
<wire x1="6.9599" y1="-0.119" x2="7.5989" y2="0.52" width="0.2032" layer="51"/>
<wire x1="6.0309" y1="-1.048" x2="6.9599" y2="-0.119" width="0.2032" layer="51"/>
<wire x1="11.1109" y1="-1.048" x2="12.0399" y2="-0.119" width="0.2032" layer="51"/>
<wire x1="12.5189" y1="-0.63" x2="11.6059" y2="-1.543" width="0.2032" layer="51"/>
<wire x1="16.1909" y1="-1.048" x2="17.1199" y2="-0.119" width="0.2032" layer="51"/>
<wire x1="17.5989" y1="-0.63" x2="16.6859" y2="-1.543" width="0.2032" layer="51"/>
<wire x1="21.2709" y1="-1.048" x2="22.1999" y2="-0.119" width="0.2032" layer="51"/>
<wire x1="22.6789" y1="-0.63" x2="21.7659" y2="-1.543" width="0.2032" layer="51"/>
<wire x1="12.0399" y1="-0.119" x2="12.6789" y2="0.52" width="0.2032" layer="51"/>
<wire x1="12.6789" y1="-0.47" x2="12.5189" y2="-0.63" width="0.2032" layer="51"/>
<wire x1="14.2469" y1="1.098" x2="13.3089" y2="0.16" width="0.2032" layer="51"/>
<wire x1="19.3269" y1="1.098" x2="18.3889" y2="0.16" width="0.2032" layer="51"/>
<wire x1="24.4069" y1="1.098" x2="23.4689" y2="0.16" width="0.2032" layer="51"/>
<wire x1="12.7979" y1="0.639" x2="13.7519" y2="1.593" width="0.2032" layer="51"/>
<wire x1="17.8779" y1="0.639" x2="18.8319" y2="1.593" width="0.2032" layer="51"/>
<wire x1="22.9579" y1="0.639" x2="23.9119" y2="1.593" width="0.2032" layer="51"/>
<wire x1="17.7589" y1="0.52" x2="17.8779" y2="0.639" width="0.2032" layer="51"/>
<wire x1="22.8389" y1="0.52" x2="22.9579" y2="0.639" width="0.2032" layer="51"/>
<wire x1="17.1199" y1="-0.119" x2="17.7589" y2="0.52" width="0.2032" layer="51"/>
<wire x1="13.3089" y1="0.16" x2="12.6789" y2="-0.47" width="0.2032" layer="51"/>
<wire x1="12.6789" y1="0.52" x2="12.7979" y2="0.639" width="0.2032" layer="51"/>
<wire x1="23.4689" y1="0.16" x2="22.8389" y2="-0.47" width="0.2032" layer="51"/>
<wire x1="22.1999" y1="-0.119" x2="22.8389" y2="0.52" width="0.2032" layer="51"/>
<wire x1="18.3889" y1="0.16" x2="17.7589" y2="-0.47" width="0.2032" layer="51"/>
<wire x1="17.7589" y1="-0.47" x2="17.5989" y2="-0.63" width="0.2032" layer="51"/>
<wire x1="22.8389" y1="-0.47" x2="22.6789" y2="-0.63" width="0.2032" layer="51"/>
<wire x1="8.2289" y1="0.16" x2="7.5989" y2="-0.47" width="0.2032" layer="51"/>
<wire x1="7.5989" y1="0.52" x2="7.7179" y2="0.639" width="0.2032" layer="51"/>
<wire x1="7.7179" y1="0.639" x2="8.6719" y2="1.593" width="0.2032" layer="51"/>
<wire x1="9.1669" y1="1.098" x2="8.2289" y2="0.16" width="0.2032" layer="51"/>
<wire x1="6.9599" y1="-0.119" x2="7.4389" y2="-0.63" width="0.2032" layer="51" curve="65.201851"/>
<wire x1="12.0399" y1="-0.119" x2="12.5189" y2="-0.63" width="0.2032" layer="51" curve="65.201851"/>
<wire x1="23.4689" y1="0.16" x2="22.9579" y2="0.639" width="0.2032" layer="51" curve="65.201851"/>
<wire x1="18.3889" y1="0.16" x2="17.8779" y2="0.639" width="0.2032" layer="51" curve="65.201851"/>
<wire x1="13.3089" y1="0.16" x2="12.7979" y2="0.639" width="0.2032" layer="51" curve="65.201851"/>
<wire x1="17.1199" y1="-0.119" x2="17.5989" y2="-0.63" width="0.2032" layer="51" curve="65.201851"/>
<wire x1="22.1999" y1="-0.119" x2="22.6789" y2="-0.63" width="0.2032" layer="51" curve="65.201851"/>
<wire x1="8.2289" y1="0.16" x2="7.7179" y2="0.639" width="0.2032" layer="51" curve="65.201851"/>
<circle x="-22.8811" y="0.025" radius="1.915" width="0.2032" layer="21"/>
<circle x="-17.8011" y="0.025" radius="1.915" width="0.2032" layer="21"/>
<circle x="-12.7211" y="0.025" radius="1.915" width="0.2032" layer="21"/>
<circle x="-7.6411" y="0.025" radius="1.915" width="0.2032" layer="21"/>
<circle x="-2.5611" y="0.025" radius="1.915" width="0.2032" layer="21"/>
<circle x="2.5189" y="0.025" radius="1.915" width="0.2032" layer="21"/>
<circle x="7.5989" y="0.025" radius="1.915" width="0.2032" layer="21"/>
<circle x="12.6789" y="0.025" radius="1.915" width="0.2032" layer="21"/>
<circle x="17.7589" y="0.025" radius="1.915" width="0.2032" layer="21"/>
<circle x="22.8389" y="0.025" radius="1.915" width="0.2032" layer="21"/>
<pad name="1" x="-22.8811" y="0.025" drill="1.3" diameter="2"/>
<pad name="2" x="-17.8011" y="0.025" drill="1.3" diameter="2"/>
<pad name="3" x="-12.7211" y="0.025" drill="1.3" diameter="2"/>
<pad name="4" x="-7.6411" y="0.025" drill="1.3" diameter="2"/>
<pad name="5" x="-2.5611" y="0.025" drill="1.3" diameter="2"/>
<pad name="6" x="2.5189" y="0.025" drill="1.3" diameter="2"/>
<pad name="7" x="7.5989" y="0.025" drill="1.3" diameter="2"/>
<pad name="8" x="12.6789" y="0.025" drill="1.3" diameter="2"/>
<pad name="9" x="17.7589" y="0.025" drill="1.3" diameter="2"/>
<pad name="10" x="22.8389" y="0.025" drill="1.3" diameter="2"/>
<text x="-25.0711" y="4.445" size="1.27" layer="25">&gt;NAME</text>
<text x="-16.51" y="4.445" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="MKDSN1,5/8-5,08">
<description>&lt;b&gt;MKDSN 1,5/ 8-5,08&lt;/b&gt; Printklemme&lt;p&gt;
Nennstrom: 13,5 A&lt;br&gt;
Nennspannung: 250 V&lt;br&gt;
Rastermaß: 5,08 mm&lt;br&gt;
Polzahl: 8&lt;br&gt;
Anschlussart: Schraubanschluss&lt;br&gt;
Montage: Löten&lt;br&gt;
Anschlussrichtung Leiter/Platine: 0 °&lt;br&gt;
Artikelnummer: 1729186&lt;br&gt;
Source: http://eshop.phoenixcontact.com .. 1729186.pdf</description>
<wire x1="-20.3411" y1="-4.05" x2="20.2989" y2="-4.05" width="0.2032" layer="21"/>
<wire x1="-20.3411" y1="2.5243" x2="20.2989" y2="2.5243" width="0.2032" layer="21"/>
<wire x1="-17.9611" y1="-0.63" x2="-18.8741" y2="-1.543" width="0.2032" layer="51"/>
<wire x1="-20.3411" y1="-1.9555" x2="-20.3411" y2="-2.4479" width="0.2032" layer="21"/>
<wire x1="-20.3411" y1="-3.327" x2="-20.4698" y2="-3.327" width="0.2032" layer="21"/>
<wire x1="-20.4698" y1="-2.913" x2="-20.3411" y2="-2.913" width="0.2032" layer="21"/>
<wire x1="-20.3411" y1="-3.1279" x2="-20.3411" y2="-2.913" width="0.2032" layer="21"/>
<wire x1="-20.3411" y1="-3.327" x2="-20.3411" y2="-3.1279" width="0.2032" layer="21"/>
<wire x1="-20.9111" y1="-2.763" x2="-20.6481" y2="-2.763" width="0.2032" layer="21"/>
<wire x1="-20.9111" y1="-3.477" x2="-20.6481" y2="-3.477" width="0.2032" layer="21"/>
<wire x1="-20.3411" y1="-2.913" x2="-20.3411" y2="-2.4479" width="0.2032" layer="21"/>
<wire x1="-20.4698" y1="-3.327" x2="-20.6481" y2="-3.477" width="0.2032" layer="21"/>
<wire x1="-20.9111" y1="-2.763" x2="-20.9111" y2="-3.477" width="0.2032" layer="21"/>
<wire x1="-20.3411" y1="2.5243" x2="-20.3411" y2="2.0413" width="0.2032" layer="21"/>
<wire x1="-20.3411" y1="-1.9555" x2="-20.3411" y2="2.0413" width="0.2032" layer="21"/>
<wire x1="-20.6481" y1="-2.763" x2="-20.4698" y2="-2.913" width="0.2032" layer="21"/>
<wire x1="20.2989" y1="-2.4479" x2="-20.3411" y2="-2.4479" width="0.2032" layer="21"/>
<wire x1="-17.8011" y1="-0.47" x2="-17.9611" y2="-0.63" width="0.2032" layer="51"/>
<wire x1="-18.4401" y1="-0.119" x2="-17.8011" y2="0.52" width="0.2032" layer="51"/>
<wire x1="-19.3691" y1="-1.048" x2="-18.4401" y2="-0.119" width="0.2032" layer="51"/>
<wire x1="-14.2891" y1="-1.048" x2="-13.3601" y2="-0.119" width="0.2032" layer="51"/>
<wire x1="20.2989" y1="-1.9555" x2="20.2989" y2="-2.4479" width="0.2032" layer="21"/>
<wire x1="-12.8811" y1="-0.63" x2="-13.7941" y2="-1.543" width="0.2032" layer="51"/>
<wire x1="-9.2091" y1="-1.048" x2="-8.2801" y2="-0.119" width="0.2032" layer="51"/>
<wire x1="-7.8011" y1="-0.63" x2="-8.7141" y2="-1.543" width="0.2032" layer="51"/>
<wire x1="-4.1291" y1="-1.048" x2="-3.2001" y2="-0.119" width="0.2032" layer="51"/>
<wire x1="-2.7211" y1="-0.63" x2="-3.6341" y2="-1.543" width="0.2032" layer="51"/>
<wire x1="-13.3601" y1="-0.119" x2="-12.7211" y2="0.52" width="0.2032" layer="51"/>
<wire x1="-12.7211" y1="-0.47" x2="-12.8811" y2="-0.63" width="0.2032" layer="51"/>
<wire x1="-11.1531" y1="1.098" x2="-12.0911" y2="0.16" width="0.2032" layer="51"/>
<wire x1="-6.0731" y1="1.098" x2="-7.0111" y2="0.16" width="0.2032" layer="51"/>
<wire x1="-0.9931" y1="1.098" x2="-1.9311" y2="0.16" width="0.2032" layer="51"/>
<wire x1="4.0869" y1="1.098" x2="3.1489" y2="0.16" width="0.2032" layer="51"/>
<wire x1="9.1669" y1="1.098" x2="8.2289" y2="0.16" width="0.2032" layer="51"/>
<wire x1="-12.6021" y1="0.639" x2="-11.6481" y2="1.593" width="0.2032" layer="51"/>
<wire x1="-7.5221" y1="0.639" x2="-6.5681" y2="1.593" width="0.2032" layer="51"/>
<wire x1="-2.4421" y1="0.639" x2="-1.4881" y2="1.593" width="0.2032" layer="51"/>
<wire x1="2.6379" y1="0.639" x2="3.5919" y2="1.593" width="0.2032" layer="51"/>
<wire x1="7.7179" y1="0.639" x2="8.6719" y2="1.593" width="0.2032" layer="51"/>
<wire x1="-7.6411" y1="0.52" x2="-7.5221" y2="0.639" width="0.2032" layer="51"/>
<wire x1="-2.5611" y1="0.52" x2="-2.4421" y2="0.639" width="0.2032" layer="51"/>
<wire x1="2.5189" y1="0.52" x2="2.6379" y2="0.639" width="0.2032" layer="51"/>
<wire x1="7.5989" y1="0.52" x2="7.7179" y2="0.639" width="0.2032" layer="51"/>
<wire x1="-8.2801" y1="-0.119" x2="-7.6411" y2="0.52" width="0.2032" layer="51"/>
<wire x1="-12.0911" y1="0.16" x2="-12.7211" y2="-0.47" width="0.2032" layer="51"/>
<wire x1="-12.7211" y1="0.52" x2="-12.6021" y2="0.639" width="0.2032" layer="51"/>
<wire x1="-1.9311" y1="0.16" x2="-2.5611" y2="-0.47" width="0.2032" layer="51"/>
<wire x1="-3.2001" y1="-0.119" x2="-2.5611" y2="0.52" width="0.2032" layer="51"/>
<wire x1="-7.0111" y1="0.16" x2="-7.6411" y2="-0.47" width="0.2032" layer="51"/>
<wire x1="1.8799" y1="-0.119" x2="2.5189" y2="0.52" width="0.2032" layer="51"/>
<wire x1="3.1489" y1="0.16" x2="2.5189" y2="-0.47" width="0.2032" layer="51"/>
<wire x1="8.2289" y1="0.16" x2="7.5989" y2="-0.47" width="0.2032" layer="51"/>
<wire x1="6.9599" y1="-0.119" x2="7.5989" y2="0.52" width="0.2032" layer="51"/>
<wire x1="-7.6411" y1="-0.47" x2="-7.8011" y2="-0.63" width="0.2032" layer="51"/>
<wire x1="-2.5611" y1="-0.47" x2="-2.7211" y2="-0.63" width="0.2032" layer="51"/>
<wire x1="2.5189" y1="-0.47" x2="2.3589" y2="-0.63" width="0.2032" layer="51"/>
<wire x1="7.5989" y1="-0.47" x2="7.4389" y2="-0.63" width="0.2032" layer="51"/>
<wire x1="0.9509" y1="-1.048" x2="1.8799" y2="-0.119" width="0.2032" layer="51"/>
<wire x1="2.3589" y1="-0.63" x2="1.4459" y2="-1.543" width="0.2032" layer="51"/>
<wire x1="7.4389" y1="-0.63" x2="6.5259" y2="-1.543" width="0.2032" layer="51"/>
<wire x1="6.0309" y1="-1.048" x2="6.9599" y2="-0.119" width="0.2032" layer="51"/>
<wire x1="-17.1711" y1="0.16" x2="-17.8011" y2="-0.47" width="0.2032" layer="51"/>
<wire x1="-17.8011" y1="0.52" x2="-17.6821" y2="0.639" width="0.2032" layer="51"/>
<wire x1="-17.6821" y1="0.639" x2="-16.7281" y2="1.593" width="0.2032" layer="51"/>
<wire x1="-16.2331" y1="1.098" x2="-17.1711" y2="0.16" width="0.2032" layer="51"/>
<wire x1="-20.3411" y1="-3.1279" x2="20.2989" y2="-3.1279" width="0.2032" layer="21"/>
<wire x1="20.2989" y1="-3.1279" x2="20.2989" y2="-2.4479" width="0.2032" layer="21"/>
<wire x1="20.2989" y1="-1.9555" x2="20.2989" y2="2.0413" width="0.2032" layer="21"/>
<wire x1="20.2989" y1="2.5243" x2="20.2989" y2="2.0413" width="0.2032" layer="21"/>
<wire x1="20.2989" y1="2.5243" x2="20.2989" y2="4.05" width="0.2032" layer="21"/>
<wire x1="-20.3411" y1="-3.75" x2="-20.3411" y2="-3.327" width="0.2032" layer="21"/>
<wire x1="20.2989" y1="-3.75" x2="20.2989" y2="-3.1279" width="0.2032" layer="21"/>
<wire x1="-20.3411" y1="4.05" x2="20.2989" y2="4.05" width="0.2032" layer="21"/>
<wire x1="-20.3411" y1="2.5243" x2="-20.3411" y2="4.05" width="0.2032" layer="21"/>
<wire x1="20.2989" y1="-3.75" x2="-20.3411" y2="-3.75" width="0.2032" layer="21"/>
<wire x1="-20.3411" y1="-3.75" x2="-20.3411" y2="-4.05" width="0.2032" layer="21"/>
<wire x1="20.2989" y1="-3.75" x2="20.2989" y2="-4.05" width="0.2032" layer="21"/>
<wire x1="-18.4401" y1="-0.119" x2="-17.9611" y2="-0.63" width="0.2032" layer="51" curve="65.201851"/>
<wire x1="-13.3601" y1="-0.119" x2="-12.8811" y2="-0.63" width="0.2032" layer="51" curve="65.201851"/>
<wire x1="8.2289" y1="0.16" x2="7.7179" y2="0.639" width="0.2032" layer="51" curve="65.201851"/>
<wire x1="3.1489" y1="0.16" x2="2.6379" y2="0.639" width="0.2032" layer="51" curve="65.201851"/>
<wire x1="-1.9311" y1="0.16" x2="-2.4421" y2="0.639" width="0.2032" layer="51" curve="65.201851"/>
<wire x1="-7.0111" y1="0.16" x2="-7.5221" y2="0.639" width="0.2032" layer="51" curve="65.201851"/>
<wire x1="-12.0911" y1="0.16" x2="-12.6021" y2="0.639" width="0.2032" layer="51" curve="65.201851"/>
<wire x1="-8.2801" y1="-0.119" x2="-7.8011" y2="-0.63" width="0.2032" layer="51" curve="65.201851"/>
<wire x1="-3.2001" y1="-0.119" x2="-2.7211" y2="-0.63" width="0.2032" layer="51" curve="65.201851"/>
<wire x1="1.8799" y1="-0.119" x2="2.3589" y2="-0.63" width="0.2032" layer="51" curve="65.201851"/>
<wire x1="6.9599" y1="-0.119" x2="7.4389" y2="-0.63" width="0.2032" layer="51" curve="65.201851"/>
<wire x1="-17.1711" y1="0.16" x2="-17.6821" y2="0.639" width="0.2032" layer="51" curve="65.201851"/>
<wire x1="12.5189" y1="-0.63" x2="11.6059" y2="-1.543" width="0.2032" layer="51"/>
<wire x1="12.6789" y1="-0.47" x2="12.5189" y2="-0.63" width="0.2032" layer="51"/>
<wire x1="12.0399" y1="-0.119" x2="12.6789" y2="0.52" width="0.2032" layer="51"/>
<wire x1="11.1109" y1="-1.048" x2="12.0399" y2="-0.119" width="0.2032" layer="51"/>
<wire x1="16.1909" y1="-1.048" x2="17.1199" y2="-0.119" width="0.2032" layer="51"/>
<wire x1="17.5989" y1="-0.63" x2="16.6859" y2="-1.543" width="0.2032" layer="51"/>
<wire x1="17.1199" y1="-0.119" x2="17.7589" y2="0.52" width="0.2032" layer="51"/>
<wire x1="17.7589" y1="-0.47" x2="17.5989" y2="-0.63" width="0.2032" layer="51"/>
<wire x1="19.3269" y1="1.098" x2="18.3889" y2="0.16" width="0.2032" layer="51"/>
<wire x1="17.8779" y1="0.639" x2="18.8319" y2="1.593" width="0.2032" layer="51"/>
<wire x1="18.3889" y1="0.16" x2="17.7589" y2="-0.47" width="0.2032" layer="51"/>
<wire x1="17.7589" y1="0.52" x2="17.8779" y2="0.639" width="0.2032" layer="51"/>
<wire x1="13.3089" y1="0.16" x2="12.6789" y2="-0.47" width="0.2032" layer="51"/>
<wire x1="12.6789" y1="0.52" x2="12.7979" y2="0.639" width="0.2032" layer="51"/>
<wire x1="12.7979" y1="0.639" x2="13.7519" y2="1.593" width="0.2032" layer="51"/>
<wire x1="14.2469" y1="1.098" x2="13.3089" y2="0.16" width="0.2032" layer="51"/>
<wire x1="12.0399" y1="-0.119" x2="12.5189" y2="-0.63" width="0.2032" layer="51" curve="65.201851"/>
<wire x1="17.1199" y1="-0.119" x2="17.5989" y2="-0.63" width="0.2032" layer="51" curve="65.201851"/>
<wire x1="18.3889" y1="0.16" x2="17.8779" y2="0.639" width="0.2032" layer="51" curve="65.201851"/>
<wire x1="13.3089" y1="0.16" x2="12.7979" y2="0.639" width="0.2032" layer="51" curve="65.201851"/>
<circle x="-17.8011" y="0.025" radius="1.915" width="0.2032" layer="21"/>
<circle x="-12.7211" y="0.025" radius="1.915" width="0.2032" layer="21"/>
<circle x="-7.6411" y="0.025" radius="1.915" width="0.2032" layer="21"/>
<circle x="-2.5611" y="0.025" radius="1.915" width="0.2032" layer="21"/>
<circle x="2.5189" y="0.025" radius="1.915" width="0.2032" layer="21"/>
<circle x="7.5989" y="0.025" radius="1.915" width="0.2032" layer="21"/>
<circle x="12.6789" y="0.025" radius="1.915" width="0.2032" layer="21"/>
<circle x="17.7589" y="0.025" radius="1.915" width="0.2032" layer="21"/>
<pad name="1" x="-17.8011" y="0.025" drill="1.3" diameter="2"/>
<pad name="2" x="-12.7211" y="0.025" drill="1.3" diameter="2"/>
<pad name="3" x="-7.6411" y="0.025" drill="1.3" diameter="2"/>
<pad name="4" x="-2.5611" y="0.025" drill="1.3" diameter="2"/>
<pad name="5" x="2.5189" y="0.025" drill="1.3" diameter="2"/>
<pad name="6" x="7.5989" y="0.025" drill="1.3" diameter="2"/>
<pad name="7" x="12.6789" y="0.025" drill="1.3" diameter="2"/>
<pad name="8" x="17.7589" y="0.025" drill="1.3" diameter="2"/>
<text x="-19.9911" y="4.445" size="1.27" layer="25">&gt;NAME</text>
<text x="-11.43" y="4.445" size="1.27" layer="27">&gt;VALUE</text>
</package>
</packages>
<symbols>
<symbol name="KLV">
<circle x="1.27" y="0" radius="1.27" width="0.254" layer="94"/>
<circle x="1.27" y="0" radius="1.27" width="0.254" layer="94"/>
<circle x="1.27" y="0" radius="1.27" width="0.254" layer="94"/>
<text x="3.048" y="-0.889" size="1.778" layer="95">&gt;NAME</text>
<text x="-2.54" y="-3.683" size="1.778" layer="96">&gt;VALUE</text>
<pin name="KL" x="-2.54" y="0" visible="off" length="short" direction="pas"/>
</symbol>
<symbol name="KL">
<circle x="1.27" y="0" radius="1.27" width="0.254" layer="94"/>
<circle x="1.27" y="0" radius="1.27" width="0.254" layer="94"/>
<circle x="1.27" y="0" radius="1.27" width="0.254" layer="94"/>
<text x="3.048" y="-0.889" size="1.778" layer="95">&gt;NAME</text>
<pin name="KL" x="-2.54" y="0" visible="off" length="short" direction="pas"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="MKDSN1,5/10-5,08" prefix="X">
<description>&lt;b&gt;MKDSN 1,5/10-5,08&lt;/b&gt; Printklemme&lt;p&gt;
Nennstrom: 13,5 A&lt;br&gt;
Nennspannung: 250 V&lt;br&gt;
Rastermaß: 5,08 mm&lt;br&gt;
Polzahl: 10&lt;br&gt;
Anschlussart: Schraubanschluss&lt;br&gt;
Montage: Löten&lt;br&gt;
Anschlussrichtung Leiter/Platine: 0 °&lt;br&gt;
Artikelnummer: 1729209&lt;br&gt;
Source: http://eshop.phoenixcontact.com .. 1729209.pdf</description>
<gates>
<gate name="-1" symbol="KLV" x="0" y="0" addlevel="always" swaplevel="1"/>
<gate name="-2" symbol="KL" x="0" y="-5.08" addlevel="always" swaplevel="1"/>
<gate name="-3" symbol="KL" x="0" y="-10.16" addlevel="always" swaplevel="1"/>
<gate name="-4" symbol="KL" x="0" y="-15.24" addlevel="always" swaplevel="1"/>
<gate name="-5" symbol="KL" x="0" y="-20.32" addlevel="always" swaplevel="1"/>
<gate name="-6" symbol="KL" x="0" y="-25.4" addlevel="always" swaplevel="1"/>
<gate name="-7" symbol="KL" x="0" y="-30.48" addlevel="always" swaplevel="1"/>
<gate name="-8" symbol="KL" x="0" y="-35.56" addlevel="always" swaplevel="1"/>
<gate name="-9" symbol="KL" x="0" y="-40.64" addlevel="always" swaplevel="1"/>
<gate name="-10" symbol="KL" x="0" y="-45.72" addlevel="always" swaplevel="1"/>
</gates>
<devices>
<device name="" package="MKDSN1,5/10-5,08">
<connects>
<connect gate="-1" pin="KL" pad="1"/>
<connect gate="-10" pin="KL" pad="10"/>
<connect gate="-2" pin="KL" pad="2"/>
<connect gate="-3" pin="KL" pad="3"/>
<connect gate="-4" pin="KL" pad="4"/>
<connect gate="-5" pin="KL" pad="5"/>
<connect gate="-6" pin="KL" pad="6"/>
<connect gate="-7" pin="KL" pad="7"/>
<connect gate="-8" pin="KL" pad="8"/>
<connect gate="-9" pin="KL" pad="9"/>
</connects>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="SMKDSN1,5/10-5,08" constant="no"/>
<attribute name="OC_FARNELL" value="1792913" constant="no"/>
<attribute name="OC_NEWARK" value="70R0297" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="MKDSN1,5/8-5,08" prefix="X">
<description>&lt;b&gt;MKDSN 1,5/ 8-5,08&lt;/b&gt; Printklemme&lt;p&gt;
Nennstrom: 13,5 A&lt;br&gt;
Nennspannung: 250 V&lt;br&gt;
Rastermaß: 5,08 mm&lt;br&gt;
Polzahl: 8&lt;br&gt;
Anschlussart: Schraubanschluss&lt;br&gt;
Montage: Löten&lt;br&gt;
Anschlussrichtung Leiter/Platine: 0 °&lt;br&gt;
Artikelnummer: 1729186&lt;br&gt;
Source: http://eshop.phoenixcontact.com .. 1729186.pdf</description>
<gates>
<gate name="-1" symbol="KLV" x="0" y="0" addlevel="always" swaplevel="1"/>
<gate name="-2" symbol="KL" x="0" y="-5.08" addlevel="always" swaplevel="1"/>
<gate name="-3" symbol="KL" x="0" y="-10.16" addlevel="always" swaplevel="1"/>
<gate name="-4" symbol="KL" x="0" y="-15.24" addlevel="always" swaplevel="1"/>
<gate name="-5" symbol="KL" x="0" y="-20.32" addlevel="always" swaplevel="1"/>
<gate name="-6" symbol="KL" x="0" y="-25.4" addlevel="always" swaplevel="1"/>
<gate name="-7" symbol="KL" x="0" y="-30.48" addlevel="always" swaplevel="1"/>
<gate name="-8" symbol="KL" x="0" y="-35.56" addlevel="always" swaplevel="1"/>
</gates>
<devices>
<device name="" package="MKDSN1,5/8-5,08">
<connects>
<connect gate="-1" pin="KL" pad="1"/>
<connect gate="-2" pin="KL" pad="2"/>
<connect gate="-3" pin="KL" pad="3"/>
<connect gate="-4" pin="KL" pad="4"/>
<connect gate="-5" pin="KL" pad="5"/>
<connect gate="-6" pin="KL" pad="6"/>
<connect gate="-7" pin="KL" pad="7"/>
<connect gate="-8" pin="KL" pad="8"/>
</connects>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="SMKDSN1,5/8-5,08" constant="no"/>
<attribute name="OC_FARNELL" value="1792911" constant="no"/>
<attribute name="OC_NEWARK" value="70R0304" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="con-lsta">
<description>&lt;b&gt;Female Headers etc.&lt;/b&gt;&lt;p&gt;
Naming:&lt;p&gt;
FE = female&lt;p&gt;
# contacts - # rows&lt;p&gt;
W = angled&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="FE10-2">
<description>&lt;b&gt;FEMALE HEADER&lt;/b&gt;</description>
<wire x1="-12.7" y1="-2.413" x2="-12.7" y2="2.413" width="0.1524" layer="21"/>
<wire x1="-12.7" y1="2.413" x2="-12.065" y2="3.048" width="0.1524" layer="21" curve="-90"/>
<wire x1="-12.7" y1="-2.413" x2="-12.065" y2="-3.048" width="0.1524" layer="21" curve="90"/>
<wire x1="-12.065" y1="3.048" x2="12.065" y2="3.048" width="0.1524" layer="21"/>
<wire x1="12.7" y1="-2.413" x2="12.7" y2="2.413" width="0.1524" layer="21"/>
<wire x1="-12.065" y1="-3.048" x2="12.065" y2="-3.048" width="0.1524" layer="21"/>
<wire x1="12.065" y1="3.048" x2="12.7" y2="2.413" width="0.1524" layer="21" curve="-90"/>
<wire x1="12.065" y1="-3.048" x2="12.7" y2="-2.413" width="0.1524" layer="21" curve="90"/>
<circle x="-11.43" y="-1.27" radius="0.127" width="0.4064" layer="51"/>
<circle x="-11.43" y="1.27" radius="0.127" width="0.4064" layer="51"/>
<circle x="-8.89" y="-1.27" radius="0.127" width="0.4064" layer="51"/>
<circle x="-8.89" y="1.27" radius="0.127" width="0.4064" layer="51"/>
<circle x="-6.35" y="-1.27" radius="0.127" width="0.4064" layer="51"/>
<circle x="-6.35" y="1.27" radius="0.127" width="0.4064" layer="51"/>
<circle x="-3.81" y="-1.27" radius="0.127" width="0.4064" layer="51"/>
<circle x="-3.81" y="1.27" radius="0.127" width="0.4064" layer="51"/>
<circle x="-1.27" y="-1.27" radius="0.127" width="0.4064" layer="51"/>
<circle x="-1.27" y="1.27" radius="0.127" width="0.4064" layer="51"/>
<circle x="-11.43" y="-1.27" radius="0.889" width="0.1524" layer="51"/>
<circle x="-11.43" y="1.27" radius="0.889" width="0.1524" layer="51"/>
<circle x="-8.89" y="1.27" radius="0.889" width="0.1524" layer="51"/>
<circle x="-6.35" y="1.27" radius="0.889" width="0.1524" layer="51"/>
<circle x="-3.81" y="1.27" radius="0.889" width="0.1524" layer="51"/>
<circle x="-1.27" y="1.27" radius="0.889" width="0.1524" layer="51"/>
<circle x="-8.89" y="-1.27" radius="0.889" width="0.1524" layer="51"/>
<circle x="-6.35" y="-1.27" radius="0.889" width="0.1524" layer="51"/>
<circle x="-3.81" y="-1.27" radius="0.889" width="0.1524" layer="51"/>
<circle x="-1.27" y="-1.27" radius="0.889" width="0.1524" layer="51"/>
<circle x="1.27" y="-1.27" radius="0.127" width="0.4064" layer="51"/>
<circle x="1.27" y="1.27" radius="0.127" width="0.4064" layer="51"/>
<circle x="3.81" y="-1.27" radius="0.127" width="0.4064" layer="51"/>
<circle x="3.81" y="1.27" radius="0.127" width="0.4064" layer="51"/>
<circle x="6.35" y="-1.27" radius="0.127" width="0.4064" layer="51"/>
<circle x="6.35" y="1.27" radius="0.127" width="0.4064" layer="51"/>
<circle x="8.89" y="-1.27" radius="0.127" width="0.4064" layer="51"/>
<circle x="8.89" y="1.27" radius="0.127" width="0.4064" layer="51"/>
<circle x="11.43" y="-1.27" radius="0.127" width="0.4064" layer="51"/>
<circle x="11.43" y="1.27" radius="0.127" width="0.4064" layer="51"/>
<circle x="1.27" y="-1.27" radius="0.889" width="0.1524" layer="51"/>
<circle x="1.27" y="1.27" radius="0.889" width="0.1524" layer="51"/>
<circle x="3.81" y="1.27" radius="0.889" width="0.1524" layer="51"/>
<circle x="6.35" y="1.27" radius="0.889" width="0.1524" layer="51"/>
<circle x="8.89" y="1.27" radius="0.889" width="0.1524" layer="51"/>
<circle x="11.43" y="1.27" radius="0.889" width="0.1524" layer="51"/>
<circle x="3.81" y="-1.27" radius="0.889" width="0.1524" layer="51"/>
<circle x="6.35" y="-1.27" radius="0.889" width="0.1524" layer="51"/>
<circle x="8.89" y="-1.27" radius="0.889" width="0.1524" layer="51"/>
<circle x="11.43" y="-1.27" radius="0.889" width="0.1524" layer="51"/>
<pad name="1" x="-11.43" y="1.27" drill="0.9144" shape="octagon"/>
<pad name="2" x="-11.43" y="-1.27" drill="0.9144" shape="octagon"/>
<pad name="3" x="-8.89" y="1.27" drill="0.9144" shape="octagon"/>
<pad name="4" x="-8.89" y="-1.27" drill="0.9144" shape="octagon"/>
<pad name="5" x="-6.35" y="1.27" drill="0.9144" shape="octagon"/>
<pad name="6" x="-6.35" y="-1.27" drill="0.9144" shape="octagon"/>
<pad name="7" x="-3.81" y="1.27" drill="0.9144" shape="octagon"/>
<pad name="8" x="-3.81" y="-1.27" drill="0.9144" shape="octagon"/>
<pad name="9" x="-1.27" y="1.27" drill="0.9144" shape="octagon"/>
<pad name="10" x="-1.27" y="-1.27" drill="0.9144" shape="octagon"/>
<pad name="11" x="1.27" y="1.27" drill="0.9144" shape="octagon"/>
<pad name="12" x="1.27" y="-1.27" drill="0.9144" shape="octagon"/>
<pad name="13" x="3.81" y="1.27" drill="0.9144" shape="octagon"/>
<pad name="14" x="3.81" y="-1.27" drill="0.9144" shape="octagon"/>
<pad name="15" x="6.35" y="1.27" drill="0.9144" shape="octagon"/>
<pad name="16" x="6.35" y="-1.27" drill="0.9144" shape="octagon"/>
<pad name="17" x="8.89" y="1.27" drill="0.9144" shape="octagon"/>
<pad name="18" x="8.89" y="-1.27" drill="0.9144" shape="octagon"/>
<pad name="19" x="11.43" y="1.27" drill="0.9144" shape="octagon"/>
<pad name="20" x="11.43" y="-1.27" drill="0.9144" shape="octagon"/>
<text x="-7.62" y="3.429" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-11.811" y="3.429" size="1.27" layer="21" ratio="10">1</text>
<text x="10.541" y="-4.699" size="1.27" layer="21" ratio="10">20</text>
<text x="-12.7" y="-4.699" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
</packages>
<symbols>
<symbol name="FE10-2">
<wire x1="3.81" y1="-12.7" x2="-3.81" y2="-12.7" width="0.4064" layer="94"/>
<wire x1="-1.905" y1="-5.715" x2="-1.905" y2="-4.445" width="0.254" layer="94" curve="-180" cap="flat"/>
<wire x1="-1.905" y1="-8.255" x2="-1.905" y2="-6.985" width="0.254" layer="94" curve="-180" cap="flat"/>
<wire x1="-1.905" y1="-10.795" x2="-1.905" y2="-9.525" width="0.254" layer="94" curve="-180" cap="flat"/>
<wire x1="1.905" y1="-4.445" x2="1.905" y2="-5.715" width="0.254" layer="94" curve="-180" cap="flat"/>
<wire x1="1.905" y1="-6.985" x2="1.905" y2="-8.255" width="0.254" layer="94" curve="-180" cap="flat"/>
<wire x1="1.905" y1="-9.525" x2="1.905" y2="-10.795" width="0.254" layer="94" curve="-180" cap="flat"/>
<wire x1="-1.905" y1="-0.635" x2="-1.905" y2="0.635" width="0.254" layer="94" curve="-180" cap="flat"/>
<wire x1="-1.905" y1="-3.175" x2="-1.905" y2="-1.905" width="0.254" layer="94" curve="-180" cap="flat"/>
<wire x1="1.905" y1="0.635" x2="1.905" y2="-0.635" width="0.254" layer="94" curve="-180" cap="flat"/>
<wire x1="1.905" y1="-1.905" x2="1.905" y2="-3.175" width="0.254" layer="94" curve="-180" cap="flat"/>
<wire x1="-1.905" y1="6.985" x2="-1.905" y2="8.255" width="0.254" layer="94" curve="-180" cap="flat"/>
<wire x1="-1.905" y1="4.445" x2="-1.905" y2="5.715" width="0.254" layer="94" curve="-180" cap="flat"/>
<wire x1="-1.905" y1="1.905" x2="-1.905" y2="3.175" width="0.254" layer="94" curve="-180" cap="flat"/>
<wire x1="1.905" y1="8.255" x2="1.905" y2="6.985" width="0.254" layer="94" curve="-180" cap="flat"/>
<wire x1="1.905" y1="5.715" x2="1.905" y2="4.445" width="0.254" layer="94" curve="-180" cap="flat"/>
<wire x1="1.905" y1="3.175" x2="1.905" y2="1.905" width="0.254" layer="94" curve="-180" cap="flat"/>
<wire x1="-3.81" y1="15.24" x2="-3.81" y2="-12.7" width="0.4064" layer="94"/>
<wire x1="3.81" y1="-12.7" x2="3.81" y2="15.24" width="0.4064" layer="94"/>
<wire x1="-3.81" y1="15.24" x2="3.81" y2="15.24" width="0.4064" layer="94"/>
<wire x1="-1.905" y1="12.065" x2="-1.905" y2="13.335" width="0.254" layer="94" curve="-180" cap="flat"/>
<wire x1="-1.905" y1="9.525" x2="-1.905" y2="10.795" width="0.254" layer="94" curve="-180" cap="flat"/>
<wire x1="1.905" y1="13.335" x2="1.905" y2="12.065" width="0.254" layer="94" curve="-180" cap="flat"/>
<wire x1="1.905" y1="10.795" x2="1.905" y2="9.525" width="0.254" layer="94" curve="-180" cap="flat"/>
<text x="-3.81" y="-15.24" size="1.778" layer="96">&gt;VALUE</text>
<text x="-3.81" y="16.002" size="1.778" layer="95">&gt;NAME</text>
<pin name="1" x="-7.62" y="-10.16" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="3" x="-7.62" y="-7.62" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="5" x="-7.62" y="-5.08" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="2" x="7.62" y="-10.16" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="4" x="7.62" y="-7.62" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="6" x="7.62" y="-5.08" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="7" x="-7.62" y="-2.54" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="9" x="-7.62" y="0" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="8" x="7.62" y="-2.54" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="10" x="7.62" y="0" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="11" x="-7.62" y="2.54" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="13" x="-7.62" y="5.08" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="15" x="-7.62" y="7.62" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="12" x="7.62" y="2.54" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="14" x="7.62" y="5.08" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="16" x="7.62" y="7.62" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="17" x="-7.62" y="10.16" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="19" x="-7.62" y="12.7" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="18" x="7.62" y="10.16" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="20" x="7.62" y="12.7" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="FE10-2" prefix="SV" uservalue="yes">
<description>&lt;b&gt;FEMALE HEADER&lt;/b&gt;</description>
<gates>
<gate name="G$1" symbol="FE10-2" x="0" y="0"/>
</gates>
<devices>
<device name="" package="FE10-2">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="10" pad="10"/>
<connect gate="G$1" pin="11" pad="11"/>
<connect gate="G$1" pin="12" pad="12"/>
<connect gate="G$1" pin="13" pad="13"/>
<connect gate="G$1" pin="14" pad="14"/>
<connect gate="G$1" pin="15" pad="15"/>
<connect gate="G$1" pin="16" pad="16"/>
<connect gate="G$1" pin="17" pad="17"/>
<connect gate="G$1" pin="18" pad="18"/>
<connect gate="G$1" pin="19" pad="19"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="20" pad="20"/>
<connect gate="G$1" pin="3" pad="3"/>
<connect gate="G$1" pin="4" pad="4"/>
<connect gate="G$1" pin="5" pad="5"/>
<connect gate="G$1" pin="6" pad="6"/>
<connect gate="G$1" pin="7" pad="7"/>
<connect gate="G$1" pin="8" pad="8"/>
<connect gate="G$1" pin="9" pad="9"/>
</connects>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
</libraries>
<attributes>
</attributes>
<variantdefs>
</variantdefs>
<classes>
<class number="0" name="default" width="0" drill="0">
</class>
</classes>
<parts>
<part name="GND1" library="supply1" deviceset="GND" device=""/>
<part name="V+" library="con-phoenix-508" deviceset="MKDSN1,5/10-5,08" device="">
<attribute name="MF" value=""/>
<attribute name="MPN" value="SMKDSN1,5/10-5,08"/>
<attribute name="OC_FARNELL" value="1792913"/>
<attribute name="OC_NEWARK" value="70R0297"/>
</part>
<part name="P+1" library="supply1" deviceset="+12V" device=""/>
<part name="P+2" library="supply1" deviceset="+5V" device=""/>
<part name="PORTD" library="con-phoenix-508" deviceset="MKDSN1,5/10-5,08" device=""/>
<part name="X2" library="con-phoenix-508" deviceset="MKDSN1,5/10-5,08" device=""/>
<part name="GND2" library="supply1" deviceset="GND" device=""/>
<part name="SV2" library="con-lsta" deviceset="FE10-2" device=""/>
<part name="P+3" library="supply1" deviceset="+12V" device=""/>
<part name="P+4" library="supply1" deviceset="+12V" device=""/>
<part name="P+5" library="supply1" deviceset="+5V" device=""/>
<part name="P+6" library="supply1" deviceset="+5V" device=""/>
<part name="GND3" library="supply1" deviceset="GND" device=""/>
<part name="GND4" library="supply1" deviceset="GND" device=""/>
<part name="GND5" library="supply1" deviceset="GND" device=""/>
<part name="X1" library="con-phoenix-508" deviceset="MKDSN1,5/8-5,08" device=""/>
</parts>
<sheets>
<sheet>
<plain>
</plain>
<instances>
<instance part="GND1" gate="1" x="106.68" y="20.32"/>
<instance part="V+" gate="-1" x="101.6" y="152.4"/>
<instance part="V+" gate="-2" x="101.6" y="147.32"/>
<instance part="V+" gate="-3" x="101.6" y="142.24"/>
<instance part="V+" gate="-4" x="101.6" y="137.16"/>
<instance part="V+" gate="-5" x="101.6" y="132.08"/>
<instance part="V+" gate="-6" x="101.6" y="127"/>
<instance part="V+" gate="-7" x="101.6" y="121.92"/>
<instance part="V+" gate="-8" x="101.6" y="116.84"/>
<instance part="V+" gate="-9" x="101.6" y="111.76"/>
<instance part="V+" gate="-10" x="101.6" y="106.68"/>
<instance part="P+1" gate="1" x="76.2" y="129.54"/>
<instance part="P+2" gate="1" x="76.2" y="157.48"/>
<instance part="PORTD" gate="-1" x="12.7" y="86.36" rot="MR0"/>
<instance part="PORTD" gate="-2" x="12.7" y="81.28" rot="MR0"/>
<instance part="PORTD" gate="-3" x="12.7" y="76.2" rot="MR0"/>
<instance part="PORTD" gate="-4" x="12.7" y="71.12" rot="MR0"/>
<instance part="PORTD" gate="-5" x="12.7" y="66.04" rot="MR0"/>
<instance part="PORTD" gate="-6" x="12.7" y="60.96" rot="MR0"/>
<instance part="PORTD" gate="-7" x="12.7" y="55.88" rot="MR0"/>
<instance part="PORTD" gate="-8" x="12.7" y="50.8" rot="MR0"/>
<instance part="PORTD" gate="-9" x="12.7" y="45.72" rot="MR0"/>
<instance part="PORTD" gate="-10" x="12.7" y="40.64" rot="MR0"/>
<instance part="X2" gate="-1" x="12.7" y="139.7" rot="MR0"/>
<instance part="X2" gate="-2" x="12.7" y="134.62" rot="MR0"/>
<instance part="X2" gate="-3" x="12.7" y="129.54" rot="MR0"/>
<instance part="X2" gate="-4" x="12.7" y="124.46" rot="MR0"/>
<instance part="X2" gate="-5" x="12.7" y="119.38" rot="MR0"/>
<instance part="X2" gate="-6" x="12.7" y="114.3" rot="MR0"/>
<instance part="X2" gate="-7" x="12.7" y="109.22" rot="MR0"/>
<instance part="X2" gate="-8" x="12.7" y="104.14" rot="MR0"/>
<instance part="X2" gate="-9" x="12.7" y="99.06" rot="MR0"/>
<instance part="X2" gate="-10" x="12.7" y="93.98" rot="MR0"/>
<instance part="GND2" gate="1" x="27.94" y="22.86"/>
<instance part="SV2" gate="G$1" x="63.5" y="55.88" rot="MR180"/>
<instance part="P+3" gate="1" x="53.34" y="73.66"/>
<instance part="P+4" gate="1" x="73.66" y="73.66"/>
<instance part="P+5" gate="1" x="43.18" y="45.72" rot="R90"/>
<instance part="P+6" gate="1" x="83.82" y="45.72" rot="R270"/>
<instance part="GND3" gate="1" x="43.18" y="43.18" rot="R270"/>
<instance part="GND4" gate="1" x="83.82" y="43.18" rot="R90"/>
<instance part="GND5" gate="1" x="35.56" y="114.3" rot="R90"/>
<instance part="X1" gate="-1" x="127" y="76.2"/>
<instance part="X1" gate="-2" x="127" y="71.12"/>
<instance part="X1" gate="-3" x="127" y="66.04"/>
<instance part="X1" gate="-4" x="127" y="60.96"/>
<instance part="X1" gate="-5" x="127" y="55.88"/>
<instance part="X1" gate="-6" x="127" y="50.8"/>
<instance part="X1" gate="-7" x="127" y="45.72"/>
<instance part="X1" gate="-8" x="127" y="40.64"/>
</instances>
<busses>
</busses>
<nets>
<net name="PC1/ADC1" class="0">
<segment>
<pinref part="SV2" gate="G$1" pin="3"/>
<wire x1="55.88" y1="63.5" x2="43.18" y2="63.5" width="0.1524" layer="91"/>
<label x="43.18" y="63.5" size="1.778" layer="95"/>
</segment>
<segment>
<wire x1="114.3" y1="55.88" x2="124.46" y2="55.88" width="0.1524" layer="91"/>
<label x="109.22" y="55.88" size="1.778" layer="95"/>
<pinref part="X1" gate="-5" pin="KL"/>
</segment>
</net>
<net name="PC0/ADC0" class="0">
<segment>
<pinref part="SV2" gate="G$1" pin="4"/>
<wire x1="71.12" y1="63.5" x2="83.82" y2="63.5" width="0.1524" layer="91"/>
<label x="71.12" y="63.5" size="1.778" layer="95"/>
</segment>
<segment>
<wire x1="114.3" y1="45.72" x2="124.46" y2="45.72" width="0.1524" layer="91"/>
<label x="109.22" y="45.72" size="1.778" layer="95"/>
<pinref part="X1" gate="-7" pin="KL"/>
</segment>
</net>
<net name="PC2/ADC2" class="0">
<segment>
<pinref part="SV2" gate="G$1" pin="6"/>
<wire x1="83.82" y1="60.96" x2="71.12" y2="60.96" width="0.1524" layer="91"/>
<label x="71.12" y="60.96" size="1.778" layer="95"/>
</segment>
<segment>
<wire x1="114.3" y1="66.04" x2="124.46" y2="66.04" width="0.1524" layer="91"/>
<label x="109.22" y="66.04" size="1.778" layer="95"/>
<pinref part="X1" gate="-3" pin="KL"/>
</segment>
</net>
<net name="PC4/ADC4/SDA" class="0">
<segment>
<pinref part="SV2" gate="G$1" pin="8"/>
<wire x1="83.82" y1="58.42" x2="71.12" y2="58.42" width="0.1524" layer="91"/>
<label x="71.12" y="58.42" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="X2" gate="-9" pin="KL"/>
<wire x1="15.24" y1="99.06" x2="22.86" y2="99.06" width="0.1524" layer="91"/>
<label x="15.24" y="99.06" size="1.778" layer="95"/>
</segment>
</net>
<net name="PD0/RX" class="0">
<segment>
<pinref part="SV2" gate="G$1" pin="10"/>
<wire x1="83.82" y1="55.88" x2="71.12" y2="55.88" width="0.1524" layer="91"/>
<label x="71.12" y="55.88" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="X2" gate="-5" pin="KL"/>
<wire x1="22.86" y1="119.38" x2="15.24" y2="119.38" width="0.1524" layer="91"/>
<label x="15.24" y="119.38" size="1.778" layer="95"/>
</segment>
</net>
<net name="PD2" class="0">
<segment>
<pinref part="SV2" gate="G$1" pin="12"/>
<wire x1="83.82" y1="53.34" x2="71.12" y2="53.34" width="0.1524" layer="91"/>
<label x="71.12" y="53.34" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="X2" gate="-1" pin="KL"/>
<wire x1="15.24" y1="139.7" x2="22.86" y2="139.7" width="0.1524" layer="91"/>
<label x="15.24" y="139.7" size="1.778" layer="95"/>
</segment>
</net>
<net name="PC3/ADC3" class="0">
<segment>
<pinref part="SV2" gate="G$1" pin="5"/>
<wire x1="43.18" y1="60.96" x2="55.88" y2="60.96" width="0.1524" layer="91"/>
<label x="43.18" y="60.96" size="1.778" layer="95"/>
</segment>
<segment>
<wire x1="114.3" y1="76.2" x2="124.46" y2="76.2" width="0.1524" layer="91"/>
<label x="109.22" y="76.2" size="1.778" layer="95"/>
<pinref part="X1" gate="-1" pin="KL"/>
</segment>
</net>
<net name="PC5/ADC5/SCL" class="0">
<segment>
<pinref part="SV2" gate="G$1" pin="7"/>
<wire x1="43.18" y1="58.42" x2="55.88" y2="58.42" width="0.1524" layer="91"/>
<label x="43.18" y="58.42" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="X2" gate="-7" pin="KL"/>
<wire x1="15.24" y1="109.22" x2="22.86" y2="109.22" width="0.1524" layer="91"/>
<label x="15.24" y="109.22" size="1.778" layer="95"/>
</segment>
</net>
<net name="PD1/TX" class="0">
<segment>
<pinref part="SV2" gate="G$1" pin="9"/>
<wire x1="43.18" y1="55.88" x2="55.88" y2="55.88" width="0.1524" layer="91"/>
<label x="43.18" y="55.88" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="X2" gate="-3" pin="KL"/>
<wire x1="15.24" y1="129.54" x2="22.86" y2="129.54" width="0.1524" layer="91"/>
<label x="15.24" y="129.54" size="1.778" layer="95"/>
</segment>
</net>
<net name="PD3" class="0">
<segment>
<pinref part="SV2" gate="G$1" pin="11"/>
<wire x1="43.18" y1="53.34" x2="55.88" y2="53.34" width="0.1524" layer="91"/>
<label x="43.18" y="53.34" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="PORTD" gate="-9" pin="KL"/>
<wire x1="15.24" y1="45.72" x2="22.86" y2="45.72" width="0.1524" layer="91"/>
<label x="15.24" y="45.72" size="1.778" layer="95"/>
</segment>
</net>
<net name="PD4" class="0">
<segment>
<pinref part="SV2" gate="G$1" pin="14"/>
<wire x1="83.82" y1="50.8" x2="71.12" y2="50.8" width="0.1524" layer="91"/>
<label x="71.12" y="50.8" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="PORTD" gate="-7" pin="KL"/>
<wire x1="15.24" y1="55.88" x2="22.86" y2="55.88" width="0.1524" layer="91"/>
<label x="15.24" y="55.88" size="1.778" layer="95"/>
</segment>
</net>
<net name="PWM1" class="0">
<segment>
<pinref part="SV2" gate="G$1" pin="13"/>
<wire x1="43.18" y1="50.8" x2="55.88" y2="50.8" width="0.1524" layer="91"/>
<label x="43.18" y="50.8" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="PORTD" gate="-5" pin="KL"/>
<wire x1="15.24" y1="66.04" x2="22.86" y2="66.04" width="0.1524" layer="91"/>
<label x="15.24" y="66.04" size="1.778" layer="95"/>
</segment>
</net>
<net name="PWM0" class="0">
<segment>
<pinref part="SV2" gate="G$1" pin="15"/>
<wire x1="43.18" y1="48.26" x2="55.88" y2="48.26" width="0.1524" layer="91"/>
<label x="43.18" y="48.26" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="PORTD" gate="-3" pin="KL"/>
<wire x1="15.24" y1="76.2" x2="22.86" y2="76.2" width="0.1524" layer="91"/>
<label x="15.24" y="76.2" size="1.778" layer="95"/>
</segment>
</net>
<net name="+12V" class="0">
<segment>
<pinref part="P+3" gate="1" pin="+12V"/>
<wire x1="53.34" y1="71.12" x2="53.34" y2="66.04" width="0.1524" layer="91"/>
<pinref part="SV2" gate="G$1" pin="1"/>
<wire x1="53.34" y1="66.04" x2="55.88" y2="66.04" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="SV2" gate="G$1" pin="2"/>
<wire x1="71.12" y1="66.04" x2="73.66" y2="66.04" width="0.1524" layer="91"/>
<pinref part="P+4" gate="1" pin="+12V"/>
<wire x1="73.66" y1="66.04" x2="73.66" y2="71.12" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="V+" gate="-10" pin="KL"/>
<pinref part="V+" gate="-9" pin="KL"/>
<pinref part="V+" gate="-8" pin="KL"/>
<pinref part="V+" gate="-7" pin="KL"/>
<pinref part="V+" gate="-6" pin="KL"/>
<wire x1="99.06" y1="127" x2="99.06" y2="121.92" width="0.1524" layer="91"/>
<junction x="99.06" y="121.92"/>
<wire x1="99.06" y1="121.92" x2="99.06" y2="116.84" width="0.1524" layer="91"/>
<junction x="99.06" y="116.84"/>
<wire x1="99.06" y1="116.84" x2="99.06" y2="111.76" width="0.1524" layer="91"/>
<junction x="99.06" y="111.76"/>
<wire x1="99.06" y1="111.76" x2="99.06" y2="106.68" width="0.1524" layer="91"/>
<pinref part="P+1" gate="1" pin="+12V"/>
<wire x1="76.2" y1="127" x2="99.06" y2="127" width="0.1524" layer="91"/>
<junction x="99.06" y="127"/>
</segment>
</net>
<net name="PD5" class="0">
<segment>
<pinref part="SV2" gate="G$1" pin="16"/>
<wire x1="83.82" y1="48.26" x2="71.12" y2="48.26" width="0.1524" layer="91"/>
<label x="71.12" y="48.26" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="PORTD" gate="-1" pin="KL"/>
<wire x1="15.24" y1="86.36" x2="22.86" y2="86.36" width="0.1524" layer="91"/>
<label x="15.24" y="86.36" size="1.778" layer="95"/>
</segment>
</net>
<net name="+5V" class="0">
<segment>
<pinref part="SV2" gate="G$1" pin="18"/>
<pinref part="P+6" gate="1" pin="+5V"/>
<wire x1="71.12" y1="45.72" x2="81.28" y2="45.72" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="P+5" gate="1" pin="+5V"/>
<pinref part="SV2" gate="G$1" pin="17"/>
<wire x1="45.72" y1="45.72" x2="55.88" y2="45.72" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="P+2" gate="1" pin="+5V"/>
<wire x1="76.2" y1="154.94" x2="76.2" y2="152.4" width="0.1524" layer="91"/>
<pinref part="V+" gate="-1" pin="KL"/>
<pinref part="V+" gate="-2" pin="KL"/>
<wire x1="99.06" y1="152.4" x2="99.06" y2="147.32" width="0.1524" layer="91"/>
<pinref part="V+" gate="-3" pin="KL"/>
<wire x1="99.06" y1="147.32" x2="99.06" y2="142.24" width="0.1524" layer="91"/>
<junction x="99.06" y="147.32"/>
<pinref part="V+" gate="-4" pin="KL"/>
<wire x1="99.06" y1="142.24" x2="99.06" y2="137.16" width="0.1524" layer="91"/>
<junction x="99.06" y="142.24"/>
<pinref part="V+" gate="-5" pin="KL"/>
<wire x1="99.06" y1="137.16" x2="99.06" y2="132.08" width="0.1524" layer="91"/>
<junction x="99.06" y="137.16"/>
<wire x1="76.2" y1="152.4" x2="99.06" y2="152.4" width="0.1524" layer="91"/>
<junction x="99.06" y="152.4"/>
</segment>
</net>
<net name="GND" class="0">
<segment>
<pinref part="GND1" gate="1" pin="GND"/>
<wire x1="106.68" y1="22.86" x2="106.68" y2="40.64" width="0.1524" layer="91"/>
<wire x1="106.68" y1="40.64" x2="124.46" y2="40.64" width="0.1524" layer="91"/>
<wire x1="106.68" y1="40.64" x2="106.68" y2="50.8" width="0.1524" layer="91"/>
<junction x="106.68" y="40.64"/>
<wire x1="106.68" y1="50.8" x2="124.46" y2="50.8" width="0.1524" layer="91"/>
<wire x1="106.68" y1="50.8" x2="106.68" y2="60.96" width="0.1524" layer="91"/>
<junction x="106.68" y="50.8"/>
<wire x1="106.68" y1="60.96" x2="124.46" y2="60.96" width="0.1524" layer="91"/>
<wire x1="106.68" y1="60.96" x2="106.68" y2="71.12" width="0.1524" layer="91"/>
<junction x="106.68" y="60.96"/>
<wire x1="106.68" y1="71.12" x2="124.46" y2="71.12" width="0.1524" layer="91"/>
<pinref part="X1" gate="-2" pin="KL"/>
<pinref part="X1" gate="-4" pin="KL"/>
<pinref part="X1" gate="-6" pin="KL"/>
<pinref part="X1" gate="-8" pin="KL"/>
</segment>
<segment>
<pinref part="PORTD" gate="-2" pin="KL"/>
<pinref part="GND2" gate="1" pin="GND"/>
<wire x1="15.24" y1="81.28" x2="27.94" y2="81.28" width="0.1524" layer="91"/>
<wire x1="27.94" y1="81.28" x2="27.94" y2="71.12" width="0.1524" layer="91"/>
<pinref part="PORTD" gate="-4" pin="KL"/>
<wire x1="27.94" y1="71.12" x2="27.94" y2="60.96" width="0.1524" layer="91"/>
<wire x1="27.94" y1="60.96" x2="27.94" y2="50.8" width="0.1524" layer="91"/>
<wire x1="27.94" y1="50.8" x2="27.94" y2="40.64" width="0.1524" layer="91"/>
<wire x1="27.94" y1="40.64" x2="27.94" y2="25.4" width="0.1524" layer="91"/>
<wire x1="15.24" y1="71.12" x2="27.94" y2="71.12" width="0.1524" layer="91"/>
<junction x="27.94" y="71.12"/>
<pinref part="PORTD" gate="-6" pin="KL"/>
<wire x1="15.24" y1="60.96" x2="27.94" y2="60.96" width="0.1524" layer="91"/>
<junction x="27.94" y="60.96"/>
<pinref part="PORTD" gate="-8" pin="KL"/>
<wire x1="15.24" y1="50.8" x2="27.94" y2="50.8" width="0.1524" layer="91"/>
<junction x="27.94" y="50.8"/>
<pinref part="PORTD" gate="-10" pin="KL"/>
<wire x1="15.24" y1="40.64" x2="27.94" y2="40.64" width="0.1524" layer="91"/>
<junction x="27.94" y="40.64"/>
</segment>
<segment>
<pinref part="GND4" gate="1" pin="GND"/>
<pinref part="SV2" gate="G$1" pin="20"/>
<wire x1="81.28" y1="43.18" x2="71.12" y2="43.18" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="SV2" gate="G$1" pin="19"/>
<pinref part="GND3" gate="1" pin="GND"/>
<wire x1="55.88" y1="43.18" x2="45.72" y2="43.18" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="GND5" gate="1" pin="GND"/>
<pinref part="X2" gate="-2" pin="KL"/>
<wire x1="33.02" y1="114.3" x2="27.94" y2="114.3" width="0.1524" layer="91"/>
<wire x1="27.94" y1="114.3" x2="27.94" y2="124.46" width="0.1524" layer="91"/>
<wire x1="27.94" y1="124.46" x2="27.94" y2="134.62" width="0.1524" layer="91"/>
<wire x1="27.94" y1="134.62" x2="15.24" y2="134.62" width="0.1524" layer="91"/>
<pinref part="X2" gate="-4" pin="KL"/>
<wire x1="15.24" y1="124.46" x2="27.94" y2="124.46" width="0.1524" layer="91"/>
<junction x="27.94" y="124.46"/>
<pinref part="X2" gate="-6" pin="KL"/>
<wire x1="15.24" y1="114.3" x2="27.94" y2="114.3" width="0.1524" layer="91"/>
<junction x="27.94" y="114.3"/>
<pinref part="X2" gate="-8" pin="KL"/>
<wire x1="15.24" y1="104.14" x2="27.94" y2="104.14" width="0.1524" layer="91"/>
<wire x1="27.94" y1="104.14" x2="27.94" y2="114.3" width="0.1524" layer="91"/>
<pinref part="X2" gate="-10" pin="KL"/>
<wire x1="15.24" y1="93.98" x2="27.94" y2="93.98" width="0.1524" layer="91"/>
<wire x1="27.94" y1="93.98" x2="27.94" y2="104.14" width="0.1524" layer="91"/>
<junction x="27.94" y="104.14"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
</eagle>
