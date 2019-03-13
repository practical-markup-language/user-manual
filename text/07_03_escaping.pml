{ch title=Escaping Reserved Characters

    As seen already, characters {c \{} and {c \}} define the start and end of a node. Moreover, character {c \=} is used to assign a value to an attribute.
    
    Therefore, if these characters are used in text, they must be escaped, in order to avoid confusion. This is done by prefixing the character with a backslash ({c \\ }). For instance, instead of writing {c \{}, we have to write {c \\\{}.
    
    As a backslash is used as escape character, it must itself also be escaped when it is used in text. Hence, instead of writing {c \\ }, we have to write {c \\\\ }.
    
    Here is an example to demonstrate how escaping works:

    {list
        {el title = PML code:
            {code highlighter=none
                File path \= C:\\tests\\example.txt
                
                Instead of writing \\, we have to write \\\\

                Instead of writing \{, we have to write \\\{
            code}
        }

        {el title = Result:
            File path \= C:\\tests\\example.txt

            Instead of writing \\, we have to write \\\\

            Instead of writing \{, we have to write \\\{
        }
    }
    
    The final rule is simple: Characters {c \{}, {c \}}, {c \=}, and {c \\ } must be preceded by {c \\ } when they are used in normal text.
}
