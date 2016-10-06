def  sadece_rakam(dizi)
  dizi.delete_if { |num| num.index(/[^0-9]/) }
end
