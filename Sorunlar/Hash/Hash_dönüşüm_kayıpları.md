> NOT: KOD ALINTIDIR

**Sorun**:
Rubyde bir keyin birden fazla value değeri varsa,
**invert** fonksiyonu hashi çevirirken değerlerin kaybolmasına sebep olabiliyor.

**Çözüm:**
Aşağıdaki fonksiyon bu problemi çözüyor.

~~~Ruby
class Hash
  # like invert but not lossy
  # {"one"=>1,"two"=>2, "1"=>1, "2"=>2}.inverse => {1=>["one", "1"], 2=>["two", "2"]}
  def safe_invert
    each_with_object({}) do |(key,value),out|
      out[value] ||= []
      out[value] << key
    end
  end
end

class Hash
  def safe_invert
    self.each_with_object( {} ) { |(key, value), out| ( out[value] ||= [] ) << key }
  end
end
~~~
