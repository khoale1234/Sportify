/*
 * Created on 2023-06-14 ( 09:06:03 )
 * Generated by Telosys ( http://www.telosys.org/ ) version 3.3.0
 */
package duan.sportify.entities;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * JPA entity class for "Eventweb"
 *
 * @author Telosys
 *
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
@Entity
@Table(name="eventweb", catalog="sportify" )
public class Eventweb implements Serializable {

    private static final long serialVersionUID = 1L;

    //--- ENTITY PRIMARY KEY 
    @Id
    @GeneratedValue(strategy=GenerationType.IDENTITY)
    @Column(name="eventid", nullable=false)
    private Integer    eventid ;
    @NotBlank(message = "{NotBlank.eventweb.nameevent}")
    //--- ENTITY DATA FIELDS 
    @Size(max = 50, message = "{Size.eventweb.nameevent}")
    @Column(name="nameevent", nullable=false, length=50)
    private String     nameevent ;

    @Temporal(TemporalType.DATE)
    @Column(name="datestart", nullable=false)
    private Date       datestart ;

    @Temporal(TemporalType.DATE)
    @Column(name="dateend", nullable=false)
    private Date       dateend ;

    @Column(name="image", length=100)
    private String     image ;
    @NotBlank(message = "{NotBlank.eventweb.descriptions}")
    @Column(name="descriptions", length=1000)
    private String     descriptions ;
    
    @Column(name="eventtype", length=50)
    private String     eventtype ;

    //--- ENTITY LINKS ( RELATIONSHIP )

    
}