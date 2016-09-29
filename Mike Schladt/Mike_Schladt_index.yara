rule blackenergy3_api_encode
{
    meta:
        author = "Mike Schladt"
        date = "2015-06-08"
        description = "matches api name encoding function for be3 persistence dll"
        md5 = "46649163C659CBA8A7D0D4075329EFA3"
        reference  = "https://www.f-secure.com/documents/996508/1030745/blackenergy_whitepaper.pdf"
        
    strings:
        $api_encode = {8B C2 C1 E8 09 32 E0 32 C4 32 E0 0F C8 66 8B CA 66 D1 E9 8A E1 33 C9 8A EA 66 D1 E9 8A C1 8B CA D1 E9 0F C9 0A C1 33 C9 8A 0B 33 C1 8B D0 43 EB CA}
        
    condition:
        $api_encode
        
}        

rule blackenergy3_push_bytes
{
    meta:
        author = "Mike Schladt"
        date = "2015-06-08"
        description = "matches push bytes used for api calls in be3 core files"
        md5 = "46649163C659CBA8A7D0D4075329EFA3"
        md5_2 = "78387651dd9608fcdf6bfb9df8b84db4"
        reference  = "https://www.f-secure.com/documents/996508/1030745/blackenergy_whitepaper.pdf"
        
    strings:        
        $push_4byte_1 = {68 EE EA C0 1F}
        $push_4byte_2 = {68 49 F3 A5 2C}
        $push_4byte_3 = {68 6B 43 59 4E}
        $push_4byte_4 = {68 E6 4B 59 4E}
        $push_4byte_5 = {68 6C 91 BA 4F}
        $push_4byte_6 = {68 8A 86 39 56}
        $push_4byte_7 = {68 9E 6D BD 5C}
        $push_4byte_8 = {68 FE 6A 7A 69}
        $push_4byte_9 = {68 A1 B0 5C 72}
        $push_4byte_10 = {68 60 A2 8A 76}
        $push_4byte_11 = {68 67 95 CD 77}
        $push_4byte_12 = {68 EB 3D 03 84}
        $push_4byte_13 = {68 19 2B 90 95}
        $push_4byte_14 = {68 62 67 8D A4}
        $push_4byte_15 = {68 AF 02 91 AB}
        $push_4byte_16 = {68 26 80 AC C8}
    
    condition:
        all of them
    
}

rule apt_win_blackenergy3_installer
{
    meta:
    
        author = "Mike Schladt"
        date = "2015-05-29"
        description = "Matches unique code block for import name construction "
        md5 = "78387651DD9608FCDF6BFB9DF8B84DB4"
        sha1 = "78636F7BBD52EA80D79B4E2A7882403092BBB02D"
        reference  = "https://www.f-secure.com/documents/996508/1030745/blackenergy_whitepaper.pdf"
        
    strings : 
    
        $import_names = { C7 45 D0 75 73 65 72 C7 45 D4 33 32 2E 64 66 C7 45 D8 6C 6C 88 5D DA C7 45 84 61 64 76 61 C7 45 88 70 69 33 32 C7 45 8C 2E 64 6C 6C 88 5D 90 C7 45 B8 77 69 6E 69 C7 45 BC 6E 65 74 2E C7 45 C0 64 6C 6C 00 C7 45 C4 77 73 32 5F C7 45 C8 33 32 2E 64 66 C7 45 CC 6C 6C 88 5D CE C7 45 94 73 68 65 6C C7 45 98 6C 33 32 2E C7 45 9C 64 6C 6C 00 C7 45 E8 70 73 61 70 C7 45 EC 69 2E 64 6C 66 C7 45 F0 6C 00 C7 85 74 FF FF FF 6E 65 74 61 C7 85 78 FF FF FF 70 69 33 32 C7 85 7C FF FF FF 2E 64 6C 6C 88 5D 80 C7 85 64 FF FF FF 6F 6C 65 61 C7 85 68 FF FF FF 75 74 33 32 C7 85 6C FF FF FF 2E 64 6C 6C 88 9D 70 FF FF FF C7 45 DC 6F 6C 65 33 C7 45 E0 32 2E 64 6C 66 C7 45 E4 6C 00 C7 45 A0 76 65 72 73 C7 45 A4 69 6F 6E 2E C7 45 A8 64 6C 6C 00 C7 85 54 FF FF FF 69 6D 61 67 C7 85 58 FF FF FF 65 68 6C 70 C7 85 5C FF FF FF 2E 64 6C 6C 88 9D 60 FF FF FF C7 45 AC 61 70 70 68 C7 45 B0 65 6C 70 2E C7 45 B4 64 6C 6C 00 C7 45 F4 2E 64 6C 6C 88 5D F8 }    
                      
    condition : 
        any of them

}

