package mycompany.com.sut.domain;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;
import javax.validation.constraints.NotNull;
import javax.persistence.ManyToOne;
import java.util.HashSet;
import java.util.Set;
import javax.persistence.CascadeType;
import javax.persistence.ManyToMany;

@RooJavaBean
@RooToString
@RooJpaActiveRecord
public class Classify {

    /**
     */
    @NotNull
    private String classify_id;

    /**
     */
    @ManyToOne
    private ClubType Types;

    /**
     */
    @ManyToMany(cascade = CascadeType.ALL)
    private Set<Club> List = new HashSet<Club>();
}
