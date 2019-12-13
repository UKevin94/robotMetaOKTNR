*** Settings ***
Test Template    Always True
Documentation    This file is used for regression testing on metadata

*** Test Cases ***               Message
Standard Case                    StandardCase
    [Tags]  tf:linked-TC=0b4a61a7-eede-43e5-a9f2-d332d96f8386
Number In Key                    NumberInKey
    [Tags]  tf:11111=first_value  tf:22222  tf:33333=one|two|three  tf:mix4444
Number In Value                  NumberInValue
    [Tags]  tf:first_key=1111  tf:multiline=222|zzz|mix33  tf:solo_line=mix555
Special Char                     SpecialChar
    [Tags]  tf:first_key-to.test=1111  tf:solo_line=second-key_to.test/now
Multiline Duplicate Warning      MultiDupWarn
    [Tags]  tf:duplicate=same|same|same  tf:duplicate_two=1|1
Unicity1                         Uni1
    [Tags]  tf:unicity_ok=value1  tf:unicity_multiline=value_solo
Unicity2                         Uni2
    [Tags]  tf:unicity_ok=value2  tf:unicity_multiline=value_one|value_two|value_three
Unicity Suite                    Unisuite
    [Tags]  tf:unicity_suite_ok=value1  tf:unicity_suite_multiline=value_solo
Spaces                           Spaces
    [Tags]  tf:space_before_sep =first_value  tf:space_after_sep= value  tf:multivaluesep = one|two|three

*** Keywords ***

Always True
    [Arguments]         ${message}
    Set Test Message    ${message}