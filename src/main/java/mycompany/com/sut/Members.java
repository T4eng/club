package mycompany.com.sut;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;
import javax.persistence.Enumerated;

@RooJavaBean
@RooToString
@RooJpaActiveRecord
public class Members {

    /**
     */
    private String name;

    /**
     */
    private String idmember;

    /**
     */
    @Enumerated
    private Gender gender;

    /**
     */
    private Integer age;
}
