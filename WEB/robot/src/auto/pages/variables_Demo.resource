*** Variables ***
# Para separação utilização underline('_')
# Evitar o uso de qualquer acentuação!

# Componente       |      Prefixo   |             Exemplo
#  ComboBox	                cbo	                cbo_English
#  Button	                btn	                 btn_Sair
#  TextBox	                txt	                txt_Salario
#   Menu	                mnu	                mnu_FileOpen
# CheckBox	                chk	                 chk_Confirma
# RadioButton	            rad	                 rad_Casado

&{demo}
...    cmp_FirstName=//*[@ng-model="FirstName"]
...    cmp_LastName=//*[@ng-model="LastName"]
...    cmp_Address=//*[@ng-model="Adress"]
...    cmp_Email=//*[@ng-model="EmailAdress"]
...    cmp_Phone=//*[@ng-model="Phone"]
...    cmp_Language=//*[@id="msdd"]
...    cbo_Skills=//*[@ng-model="Skill"]
...    cbo_country=//*[@ng-model="country"]
...    cmp_password=//*[@ng-model="Password"]
...    cmp_Cpassword=//*[@ng-model="CPassword"]
...    popup_OK=//button[@class="btn btn-danger"]
...    popup_OkCancel=//button[@class="btn btn-primary"]
...    popup_text=//button[@class="btn btn-info"]
...    btn_ok=//a[@class="analystic"][text()='Alert with OK ']
...    btn_OkCancel=//a[@class="analystic"][text()='Alert with OK & Cancel ']
...    btn_text=//a[@class="analystic"][text()='Alert with Textbox ']