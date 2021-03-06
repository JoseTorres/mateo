/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package mx.edu.um.mateo.rh.model;

import org.springframework.core.convert.ConversionFailedException;
import org.springframework.core.convert.TypeDescriptor;
import org.springframework.core.convert.converter.Converter;

/**
 *
 * @author osoto
 */
public class StringToNivelEstudiosConverter implements Converter<String, NivelEstudios> {

    @Override
    public NivelEstudios convert(String nivelEstudiosAsString) {

        if (nivelEstudiosAsString == null) {
            throw new ConversionFailedException(TypeDescriptor.valueOf(String.class),
                    TypeDescriptor.valueOf(String.class), nivelEstudiosAsString, null);
        }

        return NivelEstudios.valueOf(nivelEstudiosAsString);
    }
}
