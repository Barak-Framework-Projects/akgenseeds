<style>
.form-control {
  height: 40px;
}
</style>
<h4 class="page-title">Sipariş Ekle</h4>

<form class="form-horizontal" action="/admin/orders/save" accept-charset="UTF-8" method="post">
  <div class="form-group">
    <label class="col-sm-2 control-label" for="pChIrsaliyeNo">pChIrsaliyeNo</label>
    <div class="col-sm-10">
      <input type="text" placeholder="AB 131541" class="form-control" name="pChIrsaliyeNo" id="pChIrsaliyeNo"/>
      <small class="text-info">
        Ticari gönderiler için mecburi olup irsaliye no veya faturalı irsaliye numarasıdır.
        İrsaliye numarası sonradan kargo takibi için de kullanılabilmektedir.
      </small>
    </div>
  </div>
  <div class="form-group">
    <label class="col-sm-2 control-label" for="pPrKiymet">pPrKiymet</label>
    <div class="col-sm-10">
      <input type="text" placeholder="1200 veya 30,50" class="form-control" name="pPrKiymet" id="pPrKiymet"/>
      <small class="text-info">
        Gönderinin mali değeridir.
        Özellikle kapıda tahsilatlı gönderilerde bu parametre ile ürün bedeli verilmelidir.
      </small>
    </div>
  </div>
  <div class="form-group">
    <label class="col-sm-2 control-label" for="pChBarkod">pChBarkod</label>
    <div class="col-sm-10">
      <input type="text" placeholder="85478541" class="form-control" name="pChBarkod" id="pChBarkod"/>
      <small class="text-info">
        Gönderi üzerine yapıştırılacak olan barkot etiketinin açılımıdır.
        Sipariş Numarası ile aynı olması önerilir.
        Toplu halde verilen gönderiler, şube yetkili personelin önüne geldiğinde üzerindeki barkot okutularak sistemdeki datanın ekrana gelmesi sağlanmaktadır.
        Bu nedenle 6 karakterden uzun sipariş numarası kullanan müşterilerimizin gönderi üzerine yapıştırılacak barkot hazırlamaları tavsiye edilir.
      </small>
    </div>
  </div>
  <div class="form-group">
    <label class="col-sm-2 control-label" for="pChIcerik">pChIcerik</label>
    <div class="col-sm-10">
      <input type="text" placeholder="Gönderinin içerik bilgisini giriniz" class="form-control" name="pChIcerik" id="pChIcerik"/>
      <small class="text-info">
        Maksimum 200 karakter uzunluğa kadar açıklayıcı bilgidir.
      </small>
    </div>
  </div>
  <div class="form-group">
    <label class="col-sm-2 control-label" for="pGonderiHizmetSekli">(*)pGonderiHizmetSekli</label>
    <div class="col-sm-10">
      <!--<input type="text" placeholder="pGonderiHizmetSekli" class="form-control" name="pGonderiHizmetSekli" id="pGonderiHizmetSekli"/>-->
      <select class="form-control" id="pGonderiHizmetSekli" name="pGonderiHizmetSekli">
        <option value="">Gönderim Şekli Seçiniz</option>
        <option value="NORMAL">NORMAL</option>
        <option value="GUNICI">GUNICI</option>
        <option value="AKSAM_TESLIMAT">AKSAM_TESLIMAT</option>
        <option value="ONCELIKLI">ONCELIKLI</option>
      </select>
      <small class="text-info">
        Gönderinin talep edilen özel şartlarda gönderilebilmesi için kullanılmaktadır.
        Standart olarak NORMAL gönderi kullanılmaktadır.
      </small>
    </div>
  </div>
  <div class="form-group">
    <label class="col-sm-2 control-label" for="pTeslimSekli">(*)pTeslimSekli</label>
    <div class="col-sm-10">
      <!--<input type="text" placeholder="pTeslimSekli" class="form-control" name="pTeslimSekli" id="pTeslimSekli"/>-->
      <select class="form-control" id="pTeslimSekli" name="pTeslimSekli">
        <option value="">Teslim Şekli Seçiniz</option>
        <option value="1">Adrese Teslim</option>
        <option value="2">Alıcısı Haberli</option>
        <option value="3">Telefon İhbarlı</option>
      </select>
      <small class="text-info">
        Gönderi teslimat şekli ile ilgili bilgidir.
        Özel durumlarda Alıcının talebine göre düzenleme yapılabilmesi için kullanılmaktadır.
        Standart olarak 1 (ADRESE TESLIM) gönderi olmaktadır.
      </small>
    </div>
  </div>
  <div class="form-group">
    <label class="col-sm-2 control-label" for="pFlAlSms">(*)pFlAlSms</label>
    <div class="col-sm-10">
      <!--<input type="text" placeholder="pFlAlSms" class="form-control" name="pFlAlSms" id="pFlAlSms"/>-->
      <select class="form-control" id="pFlAlSms" name="pFlAlSms">
        <option value="">Gönderi Alındığında Sms Bildirim Yöntemini Seçiniz.</option>
        <option value="1">Gönderi Varış Şubesine Ulaştığında</option>
        <option value="2">Gönderi Fatura Kesildiğinde</option>
      </select>
      <small class="text-info">
        Alıcı için standart 2 tip sms seçeğini bulunmaktadır.
        <b>Sms hizmeti ücretlidir.</b>
      </small>
    </div>
  </div>
  <div class="form-group">
    <label class="col-sm-2 control-label" for="pFlGnSms">(*)pFlGnSms</label>
    <div class="col-sm-10">

      <!--<input type="text" placeholder="pFlGnSms" class="form-control" name="pFlGnSms" id="pFlGnSms"/>-->
      <select class="form-control" id="pFlGnSms" name="pFlGnSms">
        <option value="">Sms Gönderilme Ayarını Seçiniz.</option>
        <option value="0">Sms Gönderme</option>
        <option value="1">Sms Gönder</option>
      </select>
      <small class="text-info">
        Gönderi yerine ulaştığında göndericiye Sms gönderilip gönderilmeyeceği belirtilen parametredir.
        <b>Sms hizmeti ücretlidir.</b>
      </small>
    </div>
  </div>
  <div class="form-group">
    <label class="col-sm-2 control-label" for="pKargoParcaList">(*)pKargoParcaList</label>
    <div class="col-sm-10">
      <input type="text" placeholder="pKargoParcaList" class="form-control" name="pKargoParcaList" id="pKargoParcaList"/>
    </div>
  </div>
  <div class="form-group">
    <label class="col-sm-2 control-label" for="pAliciMusteriMngNo">pAliciMusteriMngNo</label>
    <div class="col-sm-10">
      <input type="text" placeholder="Alıcı müşterinin MNG Kargo sistemindeki tekil numarasını giriniz." class="form-control" name="pAliciMusteriMngNo" id="pAliciMusteriMngNo"/>
      <small class="text-info">
        Alıcı müşterinin sizin tarafınızdan belirlenmiş olan Bayi Numarasıdır.
        Bunun için sürekli gönderi yaptığınız alıcı bayilerinizin daha önceden belirlenen Excel formatında MNG Kargo ile paylaşılmış ve ilgili bayiler MNG Kargo sistemine kayıt edilmiş olmalıdır.
        Verilen bayi numarası alıcılarınız içerisinde tekil bir değer olmalıdır.
      </small>
    </div>
  </div>
  <div class="form-group">
    <label class="col-sm-2 control-label" for="pAliciMusteriBayiNo">pAliciMusteriBayiNo</label>
    <div class="col-sm-10">
      <input type="text" placeholder="pAliciMusteriBayiNo" class="form-control" name="pAliciMusteriBayiNo" id="pAliciMusteriBayiNo"/>
      <small class="text-info">
        Alıcı müşterinin sizin tarafınızdan belirlenmiş olan Bayi Numarasıdır.
        Bunun için sürekli gönderi yaptığınız alıcı bayilerinizin daha önceden belirlenen Excel formatında
        MNG Kargo ile paylaşılmış ve ilgili bayiler MNG Kargo sistemine kayıt edilmiş olmalıdır.
        Verilen bayi numarası alıcılarınız içerisinde tekil bir değer olmalıdır.
      </small>
    </div>
  </div>
  <div class="form-group">
    <label class="col-sm-2 control-label" for="pAliciMusteriAdi">(*)pAliciMusteriAdi</label>
    <div class="col-sm-10">
      <input type="text" placeholder="Gönderinin alıcı adı giriniz" class="form-control" name="pAliciMusteriAdi" id="pAliciMusteriAdi"/>
      <small class="text-info">
        Gönderinin Alıcı adıdır.
        (Her ne kadar bayi numarası verildiğinde gerek olmasa bile bu ve sonradan açıklayacağımız bazı adres değerlerini belirtmeniz oluşabilecek bazı hataların önüne geçecektir. )
      </small>
    </div>
  </div>
  <div class="form-group">
    <label class="col-sm-2 control-label" for="pChSiparisNo">(*)pChSiparisNo</label>
    <div class="col-sm-10">
      <input type="text" placeholder="20 karaktere kadar rakam, harfler ve özel karakterlerden oluşan değerler." class="form-control" name="pChSiparisNo" id="pChSiparisNo"/>
      <small class="text-info">
        Hazırlanacak gönderinin sonradan takibini sağlayacak en önemli anahtar değerdir.
        Sonradan açıklayacağımız Kargo Takip ve Durum sorgulama web servisimizde bu Sipariş Numarasını kullanarak kargo ve durum bilgilerine ulaşabilirsiniz.
        Aynı sipariş numarası farklı bir gönderide kullanılamaz.
        Tekil olmalıdır.
      </small>
    </div>
  </div>
  <div class="form-group">
    <label class="col-sm-2 control-label" for="pLuOdemeSekli">(*)pLuOdemeSekli</label>
    <div class="col-sm-10">
      <!--<input type="text" placeholder="pLuOdemeSekli" class="form-control" name="pLuOdemeSekli" id="pLuOdemeSekli"/>-->
      <select class="form-control" id="pLuOdemeSekli" name="pLuOdemeSekli">
        <option value="">Ödeme Şekli Seçiniz.</option>
        <option value="P">Gönderici Ödemeli</option>
        <option value="U">Alıcı Ödemeli</option>
        <option value="PL">Platform Öder</option>
      </select>
      <small class="text-info">
        Ödemeyi yapacak tarafın belirtildiği parametredir.
      </small>
    </div>
  </div>
  <div class="form-group">
    <label class="col-sm-2 control-label" for="pFlAdresFarkli">(*)pFlAdresFarkli</label>
    <div class="col-sm-10">
      <!--<input type="text" placeholder="pFlAdresFarkli" class="form-control" name="pFlAdresFarkli" id="pFlAdresFarkli"/>-->
      <select class="form-control" id="pFlAdresFarkli" name="pFlAdresFarkli">
        <option value="">Adres Farklı Seçiniz.</option>
        <option value="0">Standart Adres Kullanılsın</option>
        <option value="1">Farklı Adres Kullanılsın</option>
      </select>
      <small class="text-info">
        Standart olarak çift tırnak içinde “0” şeklinde sıfır değeri gönderilir.
        Kayıtlı adres dışına gönderiler için “1” değeri verilir.
        Alıcı bayi numarası verildiğinde, MNG sisteminde kayıtlı olan adresinin dışında bir adrese gönderim yapılmak istendiğinde “1” değeri gönderilir.
      </small>
    </div>
  </div>
  <div class="form-group">
    <label class="col-sm-2 control-label" for="pChIl">(*)pChIl</label>
    <div class="col-sm-10">
      <input type="text" placeholder="İl" class="form-control" name="pChIl" id="pChIl"/>
      <small class="text-info">
        Alıcı müşterinin(bayinin) adresinin il bilgisi gönderilir.
      </small>
    </div>
  </div>
  <div class="form-group">
    <label class="col-sm-2 control-label" for="pChIlce">(*)pChIlce</label>
    <div class="col-sm-10">
      <input type="text" placeholder="İlçe" class="form-control" name="pChIlce" id="pChIlce"/>
      <small class="text-info">
        Alıcı müşterinin(bayinin) adresinin ilçe bilgisi gönderilir.
      </small>
    </div>
  </div>
  <div class="form-group">
    <label class="col-sm-2 control-label" for="pChAdres">(*)pChAdres</label>
    <div class="col-sm-10">
      <input type="text" placeholder="pChAdres" class="form-control" name="pChAdres" id="pChAdres"/>
      <small class="text-info">
        Alıcı müşterinin(bayinin) adresinin il ve ilçe hariç kalan kısmı gönderilir.
        Adres kriterlerini Semt, Mahalle, Meydan/Bulvar,Cadde Sokak...
        gibi ayrıştırarak gönderemeyecek müşterilerimiz bu adres bölümünü kullanabilir.
      </small>
    </div>
  </div>
  <div class="form-group">
    <label class="col-sm-2 control-label" for="pChSemt">pChSemt</label>
    <div class="col-sm-10">
      <input type="text" placeholder="Semt" class="form-control" name="pChSemt" id="pChSemt"/>
      <small class="text-info">
        Alıcı müşterinin adres detay bilgileridir.
      </small>
    </div>
  </div>
  <div class="form-group">
    <label class="col-sm-2 control-label" for="pChMahalle">pChMahalle</label>
    <div class="col-sm-10">
      <input type="text" placeholder="Mahalle" class="form-control" name="pChMahalle" id="pChMahalle"/>
      <small class="text-info">
        Boş bırakılabilecekleri gibi, kayıtlı olmayan bayilerde daha hızlı ve doğru varış şubesi tespit
        edilmesinde fayda sağlamaktalar.
      </small>
    </div>
  </div>
  <div class="form-group">
    <label class="col-sm-2 control-label" for="pChMeydanBulvar">pChMeydanBulvar</label>
    <div class="col-sm-10">
      <input type="text" placeholder="Meydan, Bulvar" class="form-control" name="pChMeydanBulvar" id="pChMeydanBulvar"/>
    </div>
  </div>
  <div class="form-group">
    <label class="col-sm-2 control-label" for="pChCadde">pChCadde</label>
    <div class="col-sm-10">
      <input type="text" placeholder="Cadde" class="form-control" name="pChCadde" id="pChCadde"/>
    </div>
  </div>
  <div class="form-group">
    <label class="col-sm-2 control-label" for="pChSokak">pChSokak</label>
    <div class="col-sm-10">
      <input type="text" placeholder="Sokak" class="form-control" name="pChSokak" id="pChSokak"/>
    </div>
  </div>
  <div class="form-group">
    <label class="col-sm-2 control-label" for="pChTelEv">pChTelEv</label>
    <div class="col-sm-10">
      <input type="text" placeholder="Ev Telefonu" class="form-control" name="pChTelEv" id="pChTelEv"/>
      <small class="text-info">
        Başa sıfır (0) yazılmadan alan kodu ile birlikte 2122546361 gibi.
      </small>
    </div>
  </div>
  <div class="form-group">
    <label class="col-sm-2 control-label" for="pChTelCep">pChTelCep</label>
    <div class="col-sm-10">
      <input type="text" placeholder="Cep Telefonu" class="form-control" name="pChTelCep" id="pChTelCep"/>
      <small class="text-info">
        Başa sıfır (0) yazılmadan alan kodu ile birlikte 5322546361 gibi.
      </small>
    </div>
  </div>
  <div class="form-group">
    <label class="col-sm-2 control-label" for="pChTelIs">pChTelIs</label>
    <div class="col-sm-10">
      <input type="text" placeholder="İş Telefonu" class="form-control" name="pChTelIs" id="pChTelIs"/>
      <small class="text-info">
        Başa sıfır (0) yazılmadan alan kodu ile birlikte 2122546361 gibi.
      </small>
    </div>
  </div>
  <div class="form-group">
    <label class="col-sm-2 control-label" for="pChFax">pChFax</label>
    <div class="col-sm-10">
      <input type="text" placeholder="Fax No" class="form-control" name="pChFax" id="pChFax"/>
      <small class="text-info">
        Başa sıfır (0) yazılmadan alan kodu ile birlikte 2122546361 gibi.
      </small>
    </div>
  </div>
  <div class="form-group">
    <label class="col-sm-2 control-label" for="pChEmail">pChEmail</label>
    <div class="col-sm-10">
      <input type="text" placeholder="Alıcı Email adresi" class="form-control" name="pChEmail" id="pChEmail"/>

    </div>
  </div>
  <div class="form-group">
    <label class="col-sm-2 control-label" for="pChVergiDairesi">pChVergiDairesi</label>
    <div class="col-sm-10">
      <input type="text" placeholder="Vergi Dairesi" class="form-control" name="pChVergiDairesi" id="pChVergiDairesi"/>
      <small class="text-info">
        Alıcı vergi dairesi adıdır.
      </small>
    </div>
  </div>
  <div class="form-group">
    <label class="col-sm-2 control-label" for="pChVergiNumarasi">pChVergiNumarasi</label>
    <div class="col-sm-10">
      <input type="text" placeholder="pChVergiNumarasi" class="form-control" name="pChVergiNumarasi" id="pChVergiNumarasi"/>
      <small class="text-info">
        Alıcıya ait veri numarasıdır.
      </small>
    </div>
  </div>
  <div class="form-group">
    <label class="col-sm-2 control-label" for="pFlKapidaOdeme">(*)pFlKapidaOdeme</label>
    <div class="col-sm-10">
      <!--<input type="text" placeholder="pFlKapidaOdeme" class="form-control" name="pFlKapidaOdeme" id="pFlKapidaOdeme"/>-->
      <select class="form-control" id="pFlKapidaOdeme" name="pFlKapidaOdeme">
        <option value="">Kapıda Tahsil Edilecek Mi?</option>
        <option value="0">Hayır</option>
        <option value="1">Evet</option>
      </select>
      <small class="text-info">
        0 veya 1 değeri alabilir. Ürün bedeli kapıda tahsil edilecek gönderilerde 1 değeri verilir.
        1 değeri verilecek ise, `prKiymet` (Ürün fatura bedeli) değeri boş olmamalıdır.
        <b>Not : Ürün bedeli kapıda tahsil edilecek şekilde gönderi yapabilmeniz için ayrıca yetki verilmesi gerekmektedir.</b>
      </small>
    </div>
  </div>
  <div class="form-group">
    <label class="col-sm-2 control-label" for="pMalBedeliOdemeSekli">pMalBedeliOdemeSekli</label>
    <div class="col-sm-10">
      <!--<input type="text" placeholder="pMalBedeliOdemeSekli" class="form-control" name="pMalBedeliOdemeSekli" id="pMalBedeliOdemeSekli"/>-->
      <select class="form-control" id="pMalBedeliOdemeSekli" name="pMalBedeliOdemeSekli">
        <option value="">Tahsil Etme Şeklini Seçiniz</option>
        <option value="NAKIT">NAKIT</option>
        <option value="KREDI_KARTI">KREDI_KARTI</option>
      </select>
      <small class="text-info">
        NAKIT veya KREDI_KARTI değerlerini alabilir.
        Ürün bedeli kapıda tahsil edilecek gönderilerde tahsilat şeklinin belirtilmesi için kullanılır.
        <b>Not : Ürün bedeli kapıda tahsil edilecek şekilde gönderi yapabilmeniz için ayrıca yetki verilmesi gerekmektedir.</b>
      </small>
    </div>
  </div>
  <div class="form-group">
    <label class="col-sm-2 control-label" for="pPlatformKisaAdi">pPlatformKisaAdi</label>
    <div class="col-sm-10">
      <input type="text" placeholder="MngKargo tarafındaki tanım kodu" class="form-control" name="pPlatformKisaAdi" id="pPlatformKisaAdi"/>
      <small class="text-info">
        Bilgi aktarımı yapılacak olan platforma ait MngKargo tarafındaki tanım kodudur.
        N11, GG,HB, TRND değeri alabilir.Platform gönderilerine ait bilgilerin elektronik olarak ilgili
        platformlara gönderilmesi için kulanılmaktadır.
        GG = Gitti Gidiyor ** HB = Hepsi Burada ** TRND =Trendyol
      </small>
    </div>
  </div>
  <div class="form-group">
    <label class="col-sm-2 control-label" for="pPlatformSatisKodu">pPlatformSatisKodu</label>
    <div class="col-sm-10">
      <input type="text" placeholder="Satış ya da kampanya kodu" class="form-control" name="pPlatformSatisKodu" id="pPlatformSatisKodu"/>
      <small class="text-info">
      	İlgili platforma ait ; kullanılmakta olan satış yada kampanya kodu bilgisidir.
      </small>
    </div>
  </div>
  <div class="form-group">
    <div class="col-sm-offset-2 col-sm-10">
      <button type="submit" class="btn btn-primary">Oluştur</button>
    </div>
  </div>
</form>