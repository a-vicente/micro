package com.sicedesign.micro.thymeleaf;

import java.util.HashSet;
import java.util.Set;

import org.springframework.stereotype.Component;
import org.thymeleaf.dialect.AbstractProcessorDialect;
import org.thymeleaf.processor.IProcessor;
import org.thymeleaf.standard.StandardDialect;

import com.sicedesign.micro.thymeleaf.processor.ClassForErrorAttributeTagProcessor;
import com.sicedesign.micro.thymeleaf.processor.MenuAttributeTagProcessor;
import com.sicedesign.micro.thymeleaf.processor.MessageElementTagProcessor;
import com.sicedesign.micro.thymeleaf.processor.OrderElementTagProcessor;
import com.sicedesign.micro.thymeleaf.processor.PaginationElementTagProcessor;

@Component
public class EfinderiDialect extends AbstractProcessorDialect{

	public EfinderiDialect() {
		super("Micro", "micro", StandardDialect.PROCESSOR_PRECEDENCE);
	}
	
	@Override
	public Set<IProcessor> getProcessors(String dialectPrefix) {
		final Set<IProcessor> processadores = new HashSet<>();
		processadores.add(new ClassForErrorAttributeTagProcessor(dialectPrefix));
		processadores.add(new MessageElementTagProcessor(dialectPrefix));
		processadores.add(new OrderElementTagProcessor(dialectPrefix));
		processadores.add(new PaginationElementTagProcessor(dialectPrefix));
		processadores.add(new MenuAttributeTagProcessor(dialectPrefix));
		return processadores;
}

}
