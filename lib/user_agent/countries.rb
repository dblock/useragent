class UserAgent
  module Countries

    # As defined here: http://www.w3.org/Protocols/rfc2616/rfc2616-sec3.html#sec3.10
    # List found here: http://www.iso.org/iso/list-en1-semic-3.txt
    REGEXP_AND_NAMES = {
      /AF/i => "AFGHANISTAN",
      /AX/i => "ÅLAND ISLANDS",
      /AL/i => "ALBANIA",
      /DZ/i => "ALGERIA",
      /AS/i => "AMERICAN SAMOA",
      /AD/i => "ANDORRA",
      /AO/i => "ANGOLA",
      /AI/i => "ANGUILLA",
      /AQ/i => "ANTARCTICA",
      /AG/i => "ANTIGUA AND BARBUDA",
      /AR/i => "ARGENTINA",
      /AM/i => "ARMENIA",
      /AW/i => "ARUBA",
      /AU/i => "AUSTRALIA",
      /AT/i => "AUSTRIA",
      /AZ/i => "AZERBAIJAN",
      /BS/i => "BAHAMAS",
      /BH/i => "BAHRAIN",
      /BD/i => "BANGLADESH",
      /BB/i => "BARBADOS",
      /BY/i => "BELARUS",
      /BE/i => "BELGIUM",
      /BZ/i => "BELIZE",
      /BJ/i => "BENIN",
      /BM/i => "BERMUDA",
      /BT/i => "BHUTAN",
      /BO/i => "BOLIVIA, PLURINATIONAL STATE OF",
      /BQ/i => "BONAIRE, SAINT EUSTATIUS AND SABA",
      /BA/i => "BOSNIA AND HERZEGOVINA",
      /BW/i => "BOTSWANA",
      /BV/i => "BOUVET ISLAND",
      /BR/i => "BRAZIL",
      /IO/i => "BRITISH INDIAN OCEAN TERRITORY",
      /BN/i => "BRUNEI DARUSSALAM",
      /BG/i => "BULGARIA",
      /BF/i => "BURKINA FASO",
      /BI/i => "BURUNDI",
      /KH/i => "CAMBODIA",
      /CM/i => "CAMEROON",
      /CA/i => "CANADA",
      /CV/i => "CAPE VERDE",
      /KY/i => "CAYMAN ISLANDS",
      /CF/i => "CENTRAL AFRICAN REPUBLIC",
      /TD/i => "CHAD",
      /CL/i => "CHILE",
      /CN/i => "CHINA",
      /CX/i => "CHRISTMAS ISLAND",
      /CC/i => "COCOS (KEELING) ISLANDS",
      /CO/i => "COLOMBIA",
      /KM/i => "COMOROS",
      /CG/i => "CONGO",
      /CD/i => "CONGO, THE DEMOCRATIC REPUBLIC OF THE",
      /CK/i => "COOK ISLANDS",
      /CR/i => "COSTA RICA",
      /CI/i => "CÔTE D'IVOIRE",
      /HR/i => "CROATIA",
      /CU/i => "CUBA",
      /CW/i => "CURAÇAO",
      /CY/i => "CYPRUS",
      /CZ/i => "CZECH REPUBLIC",
      /DK/i => "DENMARK",
      /DJ/i => "DJIBOUTI",
      /DM/i => "DOMINICA",
      /DO/i => "DOMINICAN REPUBLIC",
      /EC/i => "ECUADOR",
      /EG/i => "EGYPT",
      /SV/i => "EL SALVADOR",
      /GQ/i => "EQUATORIAL GUINEA",
      /ER/i => "ERITREA",
      /EE/i => "ESTONIA",
      /ET/i => "ETHIOPIA",
      /FK/i => "FALKLAND ISLANDS (MALVINAS)",
      /FO/i => "FAROE ISLANDS",
      /FJ/i => "FIJI",
      /FI/i => "FINLAND",
      /FR/i => "FRANCE",
      /GF/i => "FRENCH GUIANA",
      /PF/i => "FRENCH POLYNESIA",
      /TF/i => "FRENCH SOUTHERN TERRITORIES",
      /GA/i => "GABON",
      /GM/i => "GAMBIA",
      /GE/i => "GEORGIA",
      /DE/i => "GERMANY",
      /GH/i => "GHANA",
      /GI/i => "GIBRALTAR",
      /GR/i => "GREECE",
      /GL/i => "GREENLAND",
      /GD/i => "GRENADA",
      /GP/i => "GUADELOUPE",
      /GU/i => "GUAM",
      /GT/i => "GUATEMALA",
      /GG/i => "GUERNSEY",
      /GN/i => "GUINEA",
      /GW/i => "GUINEA-BISSAU",
      /GY/i => "GUYANA",
      /HT/i => "HAITI",
      /HM/i => "HEARD ISLAND AND MCDONALD ISLANDS",
      /VA/i => "HOLY SEE (VATICAN CITY STATE)",
      /HN/i => "HONDURAS",
      /HK/i => "HONG KONG",
      /HU/i => "HUNGARY",
      /IS/i => "ICELAND",
      /IN/i => "INDIA",
      /ID/i => "INDONESIA",
      /IR/i => "IRAN, ISLAMIC REPUBLIC OF",
      /IQ/i => "IRAQ",
      /IE/i => "IRELAND",
      /IM/i => "ISLE OF MAN",
      /IL/i => "ISRAEL",
      /IT/i => "ITALY",
      /JM/i => "JAMAICA",
      /JP/i => "JAPAN",
      /JE/i => "JERSEY",
      /JO/i => "JORDAN",
      /KZ/i => "KAZAKHSTAN",
      /KE/i => "KENYA",
      /KI/i => "KIRIBATI",
      /KP/i => "KOREA, DEMOCRATIC PEOPLE'S REPUBLIC OF",
      /KR/i => "KOREA, REPUBLIC OF",
      /KW/i => "KUWAIT",
      /KG/i => "KYRGYZSTAN",
      /LA/i => "LAO PEOPLE'S DEMOCRATIC REPUBLIC",
      /LV/i => "LATVIA",
      /LB/i => "LEBANON",
      /LS/i => "LESOTHO",
      /LR/i => "LIBERIA",
      /LY/i => "LIBYAN ARAB JAMAHIRIYA",
      /LI/i => "LIECHTENSTEIN",
      /LT/i => "LITHUANIA",
      /LU/i => "LUXEMBOURG",
      /MO/i => "MACAO",
      /MK/i => "MACEDONIA, THE FORMER YUGOSLAV REPUBLIC OF",
      /MG/i => "MADAGASCAR",
      /MW/i => "MALAWI",
      /MY/i => "MALAYSIA",
      /MV/i => "MALDIVES",
      /ML/i => "MALI",
      /MT/i => "MALTA",
      /MH/i => "MARSHALL ISLANDS",
      /MQ/i => "MARTINIQUE",
      /MR/i => "MAURITANIA",
      /MU/i => "MAURITIUS",
      /YT/i => "MAYOTTE",
      /MX/i => "MEXICO",
      /FM/i => "MICRONESIA, FEDERATED STATES OF",
      /MD/i => "MOLDOVA, REPUBLIC OF",
      /MC/i => "MONACO",
      /MN/i => "MONGOLIA",
      /ME/i => "MONTENEGRO",
      /MS/i => "MONTSERRAT",
      /MA/i => "MOROCCO",
      /MZ/i => "MOZAMBIQUE",
      /MM/i => "MYANMAR",
      /NA/i => "NAMIBIA",
      /NR/i => "NAURU",
      /NP/i => "NEPAL",
      /NL/i => "NETHERLANDS",
      /NC/i => "NEW CALEDONIA",
      /NZ/i => "NEW ZEALAND",
      /NI/i => "NICARAGUA",
      /NE/i => "NIGER",
      /NG/i => "NIGERIA",
      /NU/i => "NIUE",
      /NF/i => "NORFOLK ISLAND",
      /MP/i => "NORTHERN MARIANA ISLANDS",
      /NO/i => "NORWAY",
      /OM/i => "OMAN",
      /PK/i => "PAKISTAN",
      /PW/i => "PALAU",
      /PS/i => "PALESTINIAN TERRITORY, OCCUPIED",
      /PA/i => "PANAMA",
      /PG/i => "PAPUA NEW GUINEA",
      /PY/i => "PARAGUAY",
      /PE/i => "PERU",
      /PH/i => "PHILIPPINES",
      /PN/i => "PITCAIRN",
      /PL/i => "POLAND",
      /PT/i => "PORTUGAL",
      /PR/i => "PUERTO RICO",
      /QA/i => "QATAR",
      /RE/i => "RÉUNION",
      /RO/i => "ROMANIA",
      /RU/i => "RUSSIAN FEDERATION",
      /RW/i => "RWANDA",
      /BL/i => "SAINT BARTHÉLEMY",
      /SH/i => "SAINT HELENA, ASCENSION AND TRISTAN DA CUNHA",
      /KN/i => "SAINT KITTS AND NEVIS",
      /LC/i => "SAINT LUCIA",
      /MF/i => "SAINT MARTIN (FRENCH PART)",
      /PM/i => "SAINT PIERRE AND MIQUELON",
      /VC/i => "SAINT VINCENT AND THE GRENADINES",
      /WS/i => "SAMOA",
      /SM/i => "SAN MARINO",
      /ST/i => "SAO TOME AND PRINCIPE",
      /SA/i => "SAUDI ARABIA",
      /SN/i => "SENEGAL",
      /RS/i => "SERBIA",
      /SC/i => "SEYCHELLES",
      /SL/i => "SIERRA LEONE",
      /SG/i => "SINGAPORE",
      /SX/i => "SINT MAARTEN (DUTCH PART)",
      /SK/i => "SLOVAKIA",
      /SI/i => "SLOVENIA",
      /SB/i => "SOLOMON ISLANDS",
      /SO/i => "SOMALIA",
      /ZA/i => "SOUTH AFRICA",
      /GS/i => "SOUTH GEORGIA AND THE SOUTH SANDWICH ISLANDS",
      /ES/i => "SPAIN",
      /LK/i => "SRI LANKA",
      /SD/i => "SUDAN",
      /SR/i => "SURINAME",
      /SJ/i => "SVALBARD AND JAN MAYEN",
      /SZ/i => "SWAZILAND",
      /SE/i => "SWEDEN",
      /CH/i => "SWITZERLAND",
      /SY/i => "SYRIAN ARAB REPUBLIC",
      /TW/i => "TAIWAN, PROVINCE OF CHINA",
      /TJ/i => "TAJIKISTAN",
      /TZ/i => "TANZANIA, UNITED REPUBLIC OF",
      /TH/i => "THAILAND",
      /TL/i => "TIMOR-LESTE",
      /TG/i => "TOGO",
      /TK/i => "TOKELAU",
      /TO/i => "TONGA",
      /TT/i => "TRINIDAD AND TOBAGO",
      /TN/i => "TUNISIA",
      /TR/i => "TURKEY",
      /TM/i => "TURKMENISTAN",
      /TC/i => "TURKS AND CAICOS ISLANDS",
      /TV/i => "TUVALU",
      /UG/i => "UGANDA",
      /UA/i => "UKRAINE",
      /AE/i => "UNITED ARAB EMIRATES",
      /GB/i => "UNITED KINGDOM",
      /US/i => "UNITED STATES",
      /UM/i => "UNITED STATES MINOR OUTLYING ISLANDS",
      /UY/i => "URUGUAY",
      /UZ/i => "UZBEKISTAN",
      /VU/i => "VANUATU",
      /VE/i => "VENEZUELA, BOLIVARIAN REPUBLIC OF",
      /VN/i => "VIET NAM",
      /VG/i => "VIRGIN ISLANDS, BRITISH",
      /VI/i => "VIRGIN ISLANDS, U.S.",
      /WF/i => "WALLIS AND FUTUNA",
      /EH/i => "WESTERN SAHARA",
      /YE/i => "YEMEN",
      /ZM/i => "ZAMBIA",
      /ZW/i => "ZIMBABWE"
    }

  end
end
