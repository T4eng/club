package mycompany.com.sut;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;
import javax.persistence.ManyToOne;
import javax.persistence.Enumerated;

@RooJavaBean
@RooToString
@RooJpaActiveRecord
public class Ordershirt {

    /**
     */
    @ManyToOne
    private Members members;

    /**
     */
    @Enumerated
    private Sizes sizes;

    /**
     */
    private Integer amount;
}
