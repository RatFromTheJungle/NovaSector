/datum/quirk/item_quirk/permit
	name = "Permit Quirk"
	desc = "You got pre-approved for a weapons permit... however you did that."
	icon = FA_ICON_ID_BADGE
	value = 6
	gain_text = span_notice("You feel like you're in the wildwest..")
	lose_text = span_notice("You feel like you've lost your wildwest swagger.")
	medical_record_text = ""
	quirk_flags = QUIRK_HIDE_FROM_SCAN


/datum/quirk/item_quirk/permit/add_unique(client/client_source)
	give_item_to_holder(/obj/item/card/permit_card, list(LOCATION_BACKPACK)


/obj/item/card/permit_card
    name = "permit card"
    desc = "A small card, that when used on any ID, will add a weapons permit."

/obj/item/card/permit_card/afterattack(atom/movable/AM, mob/user, proximity)
    . = ..()
    if(istype(AM, var/obj/item/card/id/advanced/) && proximity)
        var/obj/item/card/id/advanced/I = AM
        I.access |= ACCESS_WEAPONSPERMIT
        to_chat(user, "You upgrade [I] with a weapons permit.")
        qdel(src)
