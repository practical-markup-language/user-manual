{ch title=Customization

    It is possible to customize the style (look) of the final HTML document.
    For example, you might want to display a specific warning in red letters.
    Or you might want to change the amount of space between lines in the whole document.

    There are different ways to customize the style, as explained in the following chapters.

    {chapter title = HTML attributes

        If you want to change the style (or other HTML attributes) of an {i individual} node then you can define a {i HTML style attribute} for that node, as explained previously.
        You can assign any valid {link url=https://www.w3schools.com/css/ text=CSS} to the node's {c html_style} attribute.
        Please refer to chapter {xref node_id=HTML_attributes} for more information.
    }
    
    {chapter title = CSS

        The final HTML document is styled by standard {link url=https://www.w3schools.com/css/ text=CSS}.

        The CSS code is defined in file {c pml-default.css}, located in the same directory as the HTML document.
        Thus, if file {c example.pml} is converted to HTML, the output directory will contain files {c example.html} and {c pml-default.css}.

        To change the style, you can modify file {c pml-default.css} or replace it with your own version.
        You can use the full power of CSS to change the look of your document.

        {note
            At the time of writing there is only one style sheet delivered with PML, and the name of the CSS file is hard-coded.

            Moreover the CSS file is overwritten each time the HTML document is generated. You need to be aware of this if you want to change the CSS code.
            
            Future versions will provide more flexibility.
        }

        Each HTML node in the final HTML document has a {c class} attribute.
        The value of this attribute is used in the CSS file to style the HTML node.
        All CSS class identifiers used in PML are prefixed with {c pml-}.
        For example, the document title's class is {c pml-document-title}.
        Hence, by modifying class {c pml-document-title} in the CSS file, you can change the appearance (font, size, color, etc.) of the document's title.

        If you want to change the style for a given type of node, then you must know the class identifier used to style this node.
        There are two ways to find out the class identifier.
        {list
            {el
                You can open the final HTML document in your preferred editor and search the HTML code, in order to find out the class identifier that defines the style.

                A more efficient approach would be to use your browser's inspector (typically available under the menu 'Developer tools') to inspect the node and see the class name and CSS code.
            }
            {el
                You can use the {link url=[[pml_website]]/docs/Reference_Manual/PML_reference_manual.html text = PML Reference Manual} to find out which class identifier is used.

                Suppose you want to change the color of the document's title. You could proceed like this:
                {list
                    {el
                        Goto chapter {link url=[[pml_website]]/docs/Reference_Manual/PML_reference_manual.html#node_document text = Document} in the {i PML Reference Manual} and look at the example at the end of the chapter.
                    }
                    {el
                        In the {i HTML code generated}, you can spot the line:
                        {code
                            <h1 class="pml-document-title">A Nice Surprise</h1>
                        code}
                        So, now you know that the class identifier is {c pml-document-title}.
                    }
                    {el
                        You can now open the CSS file {c pml-default.css}, search for {c pml-document-title}, and change the class.
                        To display the title in blue, you can add a line at the end of the class definition. The result could look like this:
                        {code
                            .pml-document-title {
                                font-size: 2.2em;
                                margin-top: 0.2em;
                                color: blue;
                            }
                        code}
                    }
                }
            }
        }

        If you want to change the style just for an {i individual} node, you can use the {c html_style} attribute, as {xref node_id=HTML_attributes text=seen already}. Alternatively, you can define an {i identifier} for the node, and then use the identifier in the CSS file to change the style.

        For example, to display a single paragraph with a yellow background, you would write the following PML code:
        {code
            {p id = my-id
                This text is displayed on a yellow background.
            }
        code}
        Then you can add a rule in the CSS file, as follows:
        {code
            #my-id {
                background-color: yellow;
            }
        code}
        Result:
        {p html_style=background-color: yellow;
            This text is displayed on a yellow background.
        }
    }
    
    {chapter title = Future
        In order to provide a maximum of customization, more features will be added in future versions. For example, it will be possible to programmatically add new types of nodes, and specify how they are rendered.
        {--
            block node
            inline node
            templates
            overwriting standard formal nodes programmatically
            adding new formal nodes programmatically
        --}
    }
    
}
