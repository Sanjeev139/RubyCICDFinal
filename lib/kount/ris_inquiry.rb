require 'kount'
require_relative 'Response'
require 'kount/utils/khash'


class RisRequest

    options = {
        merchant_id: 900431,  # required (6 digit number, assigned by Kount)
        key: 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiI5MDA0MzEiLCJhdWQiOiJLb3VudC4xIiwiaWF0IjoxNTYzOTM4NjA2LCJzY3AiOnsia2EiOnRydWUsImtjIjp0cnVlLCJhcGkiOnRydWUsInJpcyI6dHJ1ZX19.WidWQkNcPeVRlBdu77cgsyQOSMRqzQHnzH3S70cnU38',  #required (created in the AWC web app by merchant)
        ksalt: '1b^jIFD)e1@<ZKuH"A+?Ea`p+ATAo6@:Wee+EM+(FD5Z2/N<',      #required (provided by Kount)
        is_test: true, # RIS endpoint is set to Kount Test Server setting
        timeout:3
    }
    
    
    client = Kount.new(options)
    inquiry = Kount::Inquiry.new(
        SITE: "DEFAULT", 
        MACK: "Y", 
        AUTH: "A", 
        ORDR: "989898900", 
        TOTL: "8240", 
        EMAL: "test@example.com", 
        MODE:'Q', 
        ANID: "+380931234567",
        B2A1: "Street F",
        B2A2: "",
        B2CC: "US",
        B2CI: "LA",
        B2ST: "LA",
        B2PC: "",
        B2PN: "+380931234567",
        NAME: "Smith",
        S2A1: "Street A",
        S2A2: "",
        S2PC: "",
        S2PN: "+380931234567",
        S2CC: "US",
        S2CI: "LA",
        S2ST: "LA",
        PTYP: "CARD",
        PTOK: "123456XXXXXXXXXX3456",
        PENC: "MASK",
        CURR: "USD",
        IPAD: "192.168.0.1",
        SESS: "5qteg2qjenchtasga2ro3862cg"
    )
    
    $i=0
    $num=3
    # inquiryArr = Array.new
    while $i < $num  do
        puts("Inside loop = #{$i}")
    
        inquiry.add_udf("PROMO",45678)
        cart = Kount::Cart.new()
        cart.add_item('32 inch LCD TV', 'Electronics', 'Television', '44', '1000')
        inquiry.add_cart(cart)
        # puts inquiry
        # inquiryList = Hash.new(inquiry)
        response = client.get_response(inquiry)
        puts response
        $i +=1
    end
    # inquiryArr = Array.new(inquiry)
    # puts inquiryList[5]
    # response = client.get_response(inquiryList)
    #puts response
    # ris = Response::Resp.new(response)
    # puts ris.get_mode()
end
RisRequest.new()
