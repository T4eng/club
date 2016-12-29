package mycompany.com.sut;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;

@RooJavaBean
@RooToString
@RooJpaActiveRecord
public class EquipmentList {

    /**
     */
    private String ename;

    /**
     */
    private Integer amount;

    /**
     */
    private Float price;
}
