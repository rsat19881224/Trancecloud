# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ -> 
  $(document).on 'click','.travelmodalhdn', ->
    $('#travelmodal').modal('hide')
  $(document).on 'click','.schoolmodalhdn', ->
    $('#schoolmodal').modal('hide')
  $(document).on 'click','.partnermodalhdn', ->
    $('#partnermodal').modal('hide')
  $(document).on 'click','.transportmodalhdn', ->
    $('#transportmodal').modal('hide')
  $(document).on 'click','.hotelmodalhdn', ->
    $('#hotelmodal').modal('hide')
  $(document).on 'click','.arrivalhotelmodalhdn', ->
    $('#arrivalhotelmodal').modal('hide')

  #動的に作成したHTMLへのイベントはバインドされない
  $(document).on 'click','.travelselect', ->
    aryVal = (@.value).split(',')
    travelId = aryVal[0].replace('[','')
    travelName = aryVal[1].replace(/"|]/g,'')
    $('#delivery_travel_id').val(travelId)
    $('#q_travel_id_eq').val(travelId)
    $('#travel_id_travel_name').val(travelName)
    $('#travelmodal').modal('hide')

  $(document).on 'click','.schoolselect', ->
    aryVal = (@.value).split(',')
    schoolId = aryVal[0].replace('[','')
    schoolName = aryVal[1].replace(/"|]/g,'')
    $('#delivery_school_id').val(schoolId)
    $('#q_school_id_eq').val(schoolId)
    $('#school_id_school_name').val(schoolName)
    $('#schoolmodal').modal('hide')

  $(document).on 'click','.partnerselect', ->
    aryVal = (@.value).split(',')
    partnerId = aryVal[0].replace('[','')
    partnerName = aryVal[1].replace(/"|]/g,'')
    $('#delivery_partner_id').val(partnerId)
    $('#q_partner_id_eq').val(partnerId)
    $('#partner_id_partner_name').val(partnerName)
    $('#partnermodal').modal('hide')

  $(document).on 'click','.transportselect', ->
    aryVal = (@.value).split(',')
    transportId = aryVal[0].replace('[','')
    transportName = aryVal[1].replace(/"|]/g,'')
    $('#delivery_detail_transport_id').val(transportId)
    $('#transport_id_transport_name').val(transportName)
    $('#transportmodal').modal('hide')

  $(document).on 'click','.hotelselect', ->
    aryVal = (@.value).split(',')
    hotelId = aryVal[0].replace('[','')
    hotelName = aryVal[1].replace(/"|]/g,'')
    $('#delivery_detail_cargo_hotel_id').val(hotelId)
    $('#delivery_detail_ship_hotel_id').val(hotelId)
    $('#ship_hotel_id_ship_hotel_name').val(hotelName)
    $('#cargo_hotel_id_cargo_hotel_name').val(hotelName)
    $('#hotelmodal').modal('hide')

  $(document).on 'click','.arrivalhotelselect', ->
    aryVal = (@.value).split(',')
    hotelId = aryVal[0].replace('[','')
    hotelName = aryVal[1].replace(/"|]/g,'')
    $('#delivery_detail_cargo_hotel_id').val(hotelId)
    $('#delivery_detail_arrival_hotel_id').val(hotelId)
    $('#arrival_hotel_id_arrival_hotel_name').val(hotelName)
    $('#arrivalhotelmodal').modal('hide')
    