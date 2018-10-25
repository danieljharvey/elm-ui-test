import Element exposing (Element, Attr, Decoration, mouseOver, column, el, text, row, alignRight, fill, width, height, rgb255, spacing, centerY, padding)
import Element.Background as Background
import Element.Border as Border
import Element.Font as Font
import Element.Input as Input

type Msg = Noop

main = 
    Element.layout []
        myRowOfStuff

myRowOfStuff : Element Msg
myRowOfStuff =
    column [ height fill] [
        Input.text []
        { onChange = (\s -> Noop)
        , text = "Horse"
        , placeholder = Just (Input.placeholder [] (text "Double horse"))
        , label = (Input.labelAbove [] (text "horse please"))
        },
        row [ width fill, centerY, spacing 30 ]
        [ (myElement "Nice")
        , (myElement "Nice")
        , el [ alignRight ] (myElement "Nice")
        ]    
    ]


myElement : String -> Element Msg
myElement str =
    el
        [ Background.color (rgb255 120 0 120)
        , Font.color (rgb255 255 255 255)
        , Font.family [ Font.typeface "Times New Roman"]
        , Border.rounded 5
        , padding 30
        ]
        (text str)