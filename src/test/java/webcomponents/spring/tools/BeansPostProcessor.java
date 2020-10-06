package webcomponents.spring.tools;

import org.springframework.beans.BeansException;
import org.springframework.beans.factory.config.BeanPostProcessor;
import org.springframework.stereotype.Component;

@Component("BeansPostProcessor")
public class BeansPostProcessor implements BeanPostProcessor {
    public Object postProcessBeforeInitialization(Object bean, String beanName) throws BeansException {
        System.out.println("Bean" + bean.toString() + " Bean name " + beanName);
        return null;
    }

    public Object postProcessAfterInitialization(Object bean, String beanName) throws BeansException {

        return null;
    }
}
