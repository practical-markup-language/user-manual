{ch title=Anatomy of a PML Document

    {ch title=Document Tree
    
        A PML document is a tree composed of PML nodes.
        
        Here is a visual representation of the tree structure of a simple PML document:
    
        {insert file = 03_01_document_tree_example.pml}
        
        The above document has two chapters. The first chapter is composed of three paragraphs. The second chapter contains a paragraph, followed by an image.
        
        A real document having the above structure would look like this:
        
        {insert_code file = [[examples_dir]]/simple_document/03_01_document_example.pml title = File example.pml}
        
        File {c example.pml} can be converted to file {c example.html} with the following command:
        
        {input
            pmlc example.pml
        input}
        
        Now file {c example.html} can be opened in the browser, and the result looks like this:
        
        {image source = images/03_01_document_example.png border=yes id=simple_document_example}
    }
    
    {ch title=Tags
    
        There are different {i types} of nodes in a document tree.
        
        The type of node is determined by a {i tag}. For example:
        {list
            {el A {i chapter} node has the tag {c chapter}, and represents a chapter of an article or book.}
            {el An {c image} node represents an image to be inserted in the document.}
            {el An {c italic} node is used to write text in {i italics}.}
        }
        
        Every type of node has one standard tag, but can optionally have alternative tags. For example, the standard tag for a chapter node is {c chapter}. Alternatively, the shortcut {c ch} can also be used. Hence, writing:
        
        {code
            {chapter title = Chapter 1
        code}
        
        ... is equivalent to writing
    
        {code
            {ch title = Chapter 1
        code}
        
        Every node in a document starts with a {c \{} and ends with a {c \}}. The node's tag is written immediately after the opening {c \{}, without a space (e.g. {c \{chapter ... \}} or {c \{ch ... \}}).
        
        You can see the full list of standard tags in the {link url=[[pml_website]]/docs/Reference_Manual/PML_reference_manual.html text = PML Reference Manual}.
    }
    
    {ch title=Attributes
    
        Some nodes have attributes.
        
        For example, the {c chapter} node has an attribute named {c title}, which defines the chapter's title.
        
        To assign a value to an attribute, the syntax {c attribute_name = attribute_value} is used. For example:
        
        {code
            {chapter title = Fundamental Concepts
        code}

        An attribute value can optionally be quoted. Hence, the above code can also be written like this:
        
        {code
            {chapter title = "Fundamental Concepts"
        code}

        If an attribute value is embedded within quotes, then quotes within the value must be escaped with a preceding backslash ({c \\ }). For example:

        {code
            {chapter title = "PPL \"How to ...\" Guide"
        code}

        To increase the readability in case of several attributes, each attribute assignment can be written on a separate line. In this case each line, except the last one, must be terminated by a backslash ({c \\ }), as in the following example:
        
        {code
            {image source = images/ball.png \
                width = 300 \
                height = 200 \
                border = yes}
        code}

        Some attributes are required, others are optional. For instance, in the above example attribute {c source} is required, all others are optional.
        
        The list of attributes for each node is documented in the {link url=[[pml_website]]/docs/Reference_Manual/PML_reference_manual.html text = PML Reference Manual}.
    }
    
    {ch title=HTML Attributes id=HTML_attributes
    
        {i HTML attributes} can optionally be specified for some nodes.
        
        This is sometimes useful to explicitly set HTML attributes in the resulting HTML code. The most frequent use of HTML attributes is to explicitly set the {c style} for a specific element. 
        
        An HTML attribute name starts with {c html_}, followed by the real HTML attribute name. Thus, to specify a {c style} attribute in the resulting HTML code, you would write for example: {c html_style=color:red;}. Any valid CSS can be assigned to a {c html_style} attribute.
        
        Suppose you want to write a paragraph in red letters, surrounded by a blue dashed border. Here is how it works:
        
        {list
        
            {el title = PML code:
                {code
                    {p html_style = color:red; border:1px dashed blue
                        It is important to note that ...
                    }
                code}
            }
            
            {el title = Result:
                {p html_style = color:red; border:1px dashed blue
                    It is important to note that ...
                }
            }
            
            {el title = Generated HTML code:
                {code
                    <p style="color:red; border:1px dashed blue" class="pml-paragraph">It is important to note that ... </p>
                code}
            }
        }
        
        To see if HTML attributes are {i allowed} for a given node, please refer to the {link url=[[pml_website]]/docs/Reference_Manual/PML_reference_manual.html text = PML Reference Manual}.
        
        To see the {i list} of attributes supported for a given node, please refer to the official HML documentation.
    }
    
    {ch title=Documentation
    
        As said already, all nodes are documented in the {link url=[[pml_website]]/docs/Reference_Manual/PML_reference_manual.html text = PML Reference Manual}.
        
        Another way to get information about nodes is to use the integrated help of the PML Converter. You can type the following command in a terminal to get an overview of how to use it:
        
        {input
            pmlc help
        input}
    }
}
