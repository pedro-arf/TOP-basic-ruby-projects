Feature: Caesar Cipher Project

    Test The Odin Project Caesar Cipher Project

    Scenario Outline: Positive small shift value

        Given I provide the string <string> and a shift value of <shift>, I expect the encrypted string to be <encrypted_string>

        Examples:
            | string                   | shift | encrypted_string         |
            | What a string!           | 5     | Bmfy f xywnsl!           |
            | Howdy, partner!!         | 24    | Fmubw, nyprlcp!!         |
            | Hello! my name is Pedro. | 2     | Jgnnq! oa pcog ku Rgftq. |
            | Hello, world!            | 0     | Hello, world!            |
            | Hello, world!            | 26    | Hello, world!            |

    Scenario Outline: Positivie high shift value

        Given I provide the string <string> and a shift value of <shift>, I expect the encrypted string to be <encrypted_string>

        Examples:
            | string                   | shift | encrypted_string         |
            | What a string!           | 50    | Ufyr y qrpgle!           |
            | Howdy, partner!!         | 200   | Zgovq, hsjlfwj!!         |
            | Hello! my name is Pedro. | 27    | Ifmmp! nz obnf jt Qfesp. |
            | Hello, world!            | 550   | Lipps, asvph!            |

    Scenario Outline: Negative shift values

        Given I provide the string <string> and a shift value of <shift>, I expect the encrypted string to be <encrypted_string>

        Examples:
            | string                   | shift | encrypted_string         |
            | What a string!           | -5    | Rcvo v nomdib!           |
            | Howdy, partner!!         | -24   | Jqyfa, rctvpgt!!         |
            | Hello! my name is Pedro. | -2    | Fcjjm! kw lykc gq Ncbpm. |
            | Hello, world!            | -26   | Hello, world!            |






