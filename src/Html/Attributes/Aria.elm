module Html.Attributes.Aria
    exposing
        ( ariaActiveDescendant
        , ariaChecked
        , ariaDescribedby
        , ariaDisabled
        , ariaExpanded
        , ariaHidden
        , ariaLabel
        , ariaLabelledby
        , ariaLive
        , ariaPressed
        , ariaReadonly
        , ariaRequired
        , ariaSelected
        , role
        )

{-| Additional attributes for html

# Aria role
@docs role

# Aria Attributes
@docs ariaActiveDescendant
@docs ariaChecked
@docs ariaDescribedby
@docs ariaDisabled
@docs ariaExpanded
@docs ariaHidden
@docs ariaLabel
@docs ariaLabelledby
@docs ariaLive
@docs ariaPressed
@docs ariaReadonly
@docs ariaRequired
@docs ariaSelected

-}

import Html exposing (Attribute)
import Html.Attributes exposing (attribute)
import Json.Encode as JE


boolAttribute : String -> Bool -> Attribute msg
boolAttribute name val =
    attribute name (JE.encode 0 <| JE.bool val)


{-| Identifies the currently active descendant of a composite widget.
See the [official specs](https://www.w3.org/TR/wai-aria/states_and_properties#aria-activedescendant).

    div [ ariaActiveDescendant "id" ] [ text "Hello aria!" ]
-}
ariaActiveDescendant : String -> Attribute msg
ariaActiveDescendant =
    attribute "aria-activedescendant"


{-| Indicates the current "checked" state of checkboxes, radio buttons, and other widgets.
See the [official specs](https://www.w3.org/TR/wai-aria/states_and_properties#aria-checked).

    div [ ariaChecked "true" ] [ text "Hello aria!" ]
-}
ariaChecked : String -> Attribute msg
ariaChecked =
    attribute "aria-checked"


{-| Identifies the element (or elements) that describes the object.
See the [official specs](https://www.w3.org/TR/wai-aria/states_and_properties#aria-describedby).

    div [ ariaDescribedby "id" ] [ text "Hello aria!" ]
-}
ariaDescribedby : String -> Attribute msg
ariaDescribedby =
    attribute "aria-describedby"


{-| Indicates that the element is perceivable but disabled, so it is not editable or otherwise operable.
See the [official specs](https://www.w3.org/TR/wai-aria/states_and_properties#aria-disabled).

    div [ ariaDisabled True ] [ text "Hello aria!" ]
-}
ariaDisabled : Bool -> Attribute msg
ariaDisabled =
    boolAttribute "aria-disabled"


{-| Indicates whether the element, or another grouping element it controls, is currently expanded or collapsed.
See the [official specs](https://www.w3.org/TR/wai-aria/states_and_properties#aria-expanded).

    div [ ariaExpanded "true" ] [ text "Hello aria!" ]
-}
ariaExpanded : String -> Attribute msg
ariaExpanded =
    attribute "aria-expanded"


{-| Indicates that the element and all of its descendants are not visible or perceivable to any user as implemented by the author.
See the [official specs](https://www.w3.org/TR/wai-aria/states_and_properties#aria-hidden).

    div [ ariaHidden True ] [ text "Hello aria!" ]
-}
ariaHidden : Bool -> Attribute msg
ariaHidden =
    boolAttribute "aria-hidden"


{-| Defines a string value that labels the current element.
See the [official specs](https://www.w3.org/TR/wai-aria/states_and_properties#aria-label).

    div [ ariaLabel "label" ] [ text "Hello aria!" ]
-}
ariaLabel : String -> Attribute msg
ariaLabel =
    attribute "aria-label"


{-| Identifies the element (or elements) that labels the current element.
See the [official specs](https://www.w3.org/TR/wai-aria/states_and_properties#aria-labelledby).

    div [ ariaLabelledby "id" ] [ text "Hello aria!" ]
-}
ariaLabelledby : String -> Attribute msg
ariaLabelledby =
    attribute "aria-labelledby"


{-| Indicates that an element will be updated, and describes the types of updates the user agents,
assistive technologies, and user can expect from the live region.
See the [official specs](https://www.w3.org/TR/wai-aria/states_and_properties#aria-live).

    input [ ariaLive "assertive" ] []
-}
ariaLive : String -> Attribute msg
ariaLive =
    attribute "aria-live"


{-| Indicates the current "pressed" state of toggle buttons.
See the [official specs](https://www.w3.org/TR/wai-aria/states_and_properties#aria-pressed).
    button [ ariaPressed True ] [ text "Submit" ]
-}
ariaPressed : Bool -> Attribute msg
ariaPressed =
    boolAttribute "aria-pressed"


{-| Indicates that the element is not editable, but is otherwise operable.
See the [official specs](https://www.w3.org/TR/wai-aria/states_and_properties#aria-readonly).

    div [ ariaReadonly True ] [ text "Hello aria!" ]
-}
ariaReadonly : Bool -> Attribute msg
ariaReadonly =
    boolAttribute "aria-readonly"


{-| Indicates that user input is required on the element before a form may be submitted.
See the [official specs](https://www.w3.org/TR/wai-aria/states_and_properties#aria-required).

    div [ ariaRequired True ] [ text "Hello aria!" ]
-}
ariaRequired : Bool -> Attribute msg
ariaRequired =
    boolAttribute "aria-required"


{-| Indicates the current "selected" state of various widgets.
See the [official specs](https://www.w3.org/TR/wai-aria/states_and_properties#aria-selected).

    div [ ariaSelected "true" ] [ text "Hello aria!" ]
-}
ariaSelected : String -> Attribute msg
ariaSelected =
    attribute "aria-selected"


{-| An attribute to support the role classification of elements.
See the [official specs](https://www.w3.org/TR/role-attribute).

    div [ role "button" ] [ text "Submit" ]
-}
role : String -> Attribute msg
role =
    attribute "role"
