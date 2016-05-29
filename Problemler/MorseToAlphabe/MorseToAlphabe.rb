#encoding : utf-8
alfabe =
[
  ['e',[
        ['i',[
              ['s',[
                    ['h',[
                          ['5',[
                                 [false , [false, false] ],
                                 [false , [false, false] ]
                               ]
                          ],
                          ['4',[
                                [false , [false, false] ],
                                [false , [false, false] ]
                               ]
                          ]
                        ],
                    ],
                    ['v',[
                          ['ŝ',[
                                 [false , [false, false] ],
                                 [false , [false, false] ]
                               ]
                          ],
                          ['3',[
                                [false , [false, false] ],
                                [false , [false, false] ]
                               ]
                          ]
                        ]
                    ]
                   ]
              ],
              ['u',[
                    ['f',[
                          ['é',[
                                 [false , [false, false] ],
                                 [false , [false, false] ]
                               ]
                          ],
                          [false,[
                                [false , [false, false] ],
                                [false , [false, false] ]
                               ]
                          ]
                        ],
                    ],
                    ['ü',[
                          ['Đ',[
                                 ["?" , [false, false] ],
                                 ["_" , [false, false] ]
                               ]
                          ],
                          ['2',[
                                [false , [false, false] ],
                                [false , [false, false] ]
                               ]
                          ]
                        ]
                    ]
                   ]
              ]
             ]
        ],
        ['a',[
              ['r',[
                    ['l',[
                          [false,[
                                 [false , [false, false] ],
                                 [false , [false, false] ]
                               ]
                          ],
                          ['è',[
                                [' " ' , [false, false] ],
                                [false , [false, false] ]
                               ]
                          ]
                        ],
                    ],
                    ['Ä',[
                          ['+',[
                                 [false , [false, false] ],
                                 ['.' , [false, false] ]
                               ]
                          ],
                          [false,[
                                [false , [false, false] ],
                                [false , [false, false] ]
                               ]
                          ]
                        ]
                    ]
                   ]
              ],
              ['w',[
                    ['p',[
                          ['þ',[
                                 [false , [false, false] ],
                                 [false , [false, false] ]
                               ]
                          ],
                          ['À',[
                                ['@' , [false, false] ],
                                [false , [false, false] ]
                               ]
                          ]
                        ],
                    ],
                    ['j',[
                          ['ĵ',[
                                 [false , [false, false] ],
                                 [false , [false, false] ]
                               ]
                          ],
                          ['1',[
                                ["'" , [false, false] ],
                                [false , [false, false] ]
                               ]
                          ]
                        ]
                    ]
                   ]
              ]
             ]
        ]
       ]
  ],
  ['t',[
        ['n',[
              ['d',[
                    ['b',[
                          ['6',[
                                 [false , [false, false] ],
                                 ['-' , [false, false] ]
                               ]
                          ],
                          ['=',[
                                [false , [false, false] ],
                                [false , [false, false] ]
                               ]
                          ]
                         ],
                    ],
                    ['x',[
                          ['/',[
                                 [false , [false, false] ],
                                 [false , [false, false] ]
                               ]
                          ],
                          [false,[
                                [false , [false, false] ],
                                [false , [false, false] ]
                               ]
                          ]
                        ]
                    ]
                   ]
              ],
              ['k',[
                    ['c',[
                          ['ç',[
                                 [false , [false, false] ],
                                 [false , [false, false] ]
                               ]
                          ],
                          [' ',[
                                [':' , [false, false] ],
                                ['!' , [false, false] ]
                               ]
                          ]
                        ],
                    ],
                    ['y',[
                          ['ĥ',[
                                 [false , [false, false] ],
                                 ["()" , [false, false] ]
                               ]
                          ],
                          [false,[
                                [false , [false, false] ],
                                [false , [false, false] ]
                               ]
                          ]
                        ]
                    ]
                   ]
              ],
             ]
        ],
        ['m',[
              ['g',[
                    ['z',[
                          ['7',[
                                 [false , [false, false] ],
                                 [false , [false, false] ]
                               ]
                          ],
                          [' ',[
                                [',' , [false, false] ],
                                [false , [false, false] ]
                               ]
                          ]
                        ],
                    ],
                    ['q',[
                          ['ĝ',[
                                 [false , [false, false] ],
                                 [false , [false, false] ]
                               ]
                          ],
                          ['Ñ',[
                                [false , [false, false] ],
                                [false , [false, false] ]
                               ]
                          ]
                        ]
                    ]
                   ]
              ],
              ['o',[
                    ['ö',[
                          ['8',[
                                 [':' , [false, false] ],
                                 [false , [false, false] ]
                               ]
                          ],
                          [false,[
                                [false , [false, false] ],
                                [false , [false, false] ]
                               ]
                          ]
                        ],
                    ],
                    ['ch',[
                          ['9',[
                                 [false , [false, false] ],
                                 [false , [false, false] ]
                               ]
                          ],
                          ['0',[
                                [false , [false, false] ],
                                [false , [false, false] ]
                               ]
                          ]
                        ]
                    ]
                   ]
              ]
             ]
        ]
      ]
  ]
]

def  cümle_al #klavyeden kelime okur
    puts "Bir kelime giriniz..."
    cümle = gets.chomp
    return cümle
end

def  mors_cozumle( kelime, agac )
    boyut = kelime.size
   if boyut > 7 #max 6 mors karakteri kullanılabilir
      return "Girilen sembol boyutu, bir harfle uyuşmamaktadır!!!\n "
   end
   deger, cizgi, alt, nokta = 0, 1, 1, 0
   i = 0
   while i < boyut
     case kelime[i]
     when '.'
       agac = agac[nokta]
     when '-'
       agac = agac[cizgi]
     when 'é'
       sonuc = agac[deger]
       break #son değere ulaşıldığı için çık
     else #nokta ve çizgi harici girilen karakterler için
       puts "Girilen değer '#{kelime[i]}' mors alfabesinde tanımlı değil!"
       break
     end
      if i < kelime.size-2
       agac = agac[alt]
      end
       i+=1
   end
     agac = agac[deger]

   if ( agac == false ) #false olma ihtimaline karşılık. Bu satır olmazsa bug olabiliyor.
   elsif ( agac.size > 1 )  #Birden çok sonucu varsa demekki istenen değere ulaşılamamıştır.
       return "Geçerli bir değer giriniz!!!\n"
   elsif ( sonuc == false ) #eğer false değeri dönerse gecerli sonuc yok demektir.
       return "Gecerli bir harf bulunmamaktadır!!!\n"
   else
       return sonuc
   end
end
def ayıkla(cümle, mors_alfabesi)
   cümle = cümle.split("/")  #her kelimeyi '/'den ayır
   cümle.each do |kelime|
     kelime = kelime.split  #her harfi ayır
     kelime.each do |harf|
         harf_harf=harf.split("") #her harfin karakterlerini ayır
         harf_harf<< 'é' #Son karakter olarak é yi koy
         print mors_cozumle(harf_harf, mors_alfabesi)
     end
     print " " #kelimelerin aralarına boşluk bırakmak için
   end
   print "\n"
end

ayıkla(cümle_al, alfabe)
