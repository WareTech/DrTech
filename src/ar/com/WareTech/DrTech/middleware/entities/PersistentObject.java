package ar.com.WareTech.DrTech.middleware.entities;

import java.io.Serializable;

/**
 * @author Augusto (AugustoSoncini@WareTech.com.ar)
 * Company - WareTech TM (www.WareTech.com.ar)
 * Project - DrTech
 */
public interface PersistentObject
    extends Serializable
{
    /**
     * @return
     */
    public Long getId();
    
    /**
     * @param id
     */
    public void setId(Long id);
    
    /**
     * @return
     */
    public Long getVersion();
    
    /**
     * @param version
     */
    public void setVersion(Long version);
}
