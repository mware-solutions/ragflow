import {Flex, Typography} from 'antd';
import classNames from 'classnames';

import {useTranslate} from '@/hooks/commonHooks';
import styles from './index.less';

const { Title, Text } = Typography;

const LoginRightPanel = () => {
  const { t } = useTranslate('login');
  return (
    <section className={styles.rightPanel}>
      <div>
        <img src='/surogate_logo_white.svg' style={{width: '100px'}}/>
        <Title
          level={1}
          className={classNames(styles.white, styles.productTitle)}
        >Surogate</Title>
        <Title
          level={1}
          className={classNames(styles.white, styles.loginTitle)}
        >
          {t('title')}
        </Title>
        <Text className={classNames(styles.pink, styles.loginDescription)}>
          {t('description')}
        </Text>
        <Text className={classNames(styles.pink, styles.loginDescription, styles.loginDescription2)}>
          {t('description2')}
        </Text>
      </div>
    </section>
  );
};

export default LoginRightPanel;
