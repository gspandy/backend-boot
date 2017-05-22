/*
 * Copyright &copy; <a href="http://www.zsteel.cc">zsteel</a> All rights reserved.
 */
package com.bdfint.backend.modules.cms.service.impl;

import com.bdfint.backend.framework.common.BaseServiceImpl;
import com.bdfint.backend.framework.util.StringUtils;
import com.bdfint.backend.modules.cms.bean.Site;
import com.bdfint.backend.modules.cms.service.SiteService;
import com.bdfint.backend.modules.cms.utils.CmsUtils;
import org.apache.commons.lang3.StringEscapeUtils;
import org.springframework.stereotype.Service;

/**
 * 站点Service
 *
 * @author lufengc
 * @version 2016-09-12
 */
@Service
public class SiteServiceImpl extends BaseServiceImpl<Site> implements SiteService {

    @Override
    public String save(Site site) throws Exception {
        if (site.getCopyright() != null) {
            site.setCopyright(StringEscapeUtils.unescapeHtml4(site.getCopyright()));
        }
        if (StringUtils.isNotEmpty(site.getId())) {
            site.preUpdate();
            super.update(site);
        } else {
            site.preInsert();
            super.insert(site);
        }
        CmsUtils.removeCache("site_" + site.getId());
        CmsUtils.removeCache("siteList");
        return site.getId();
    }

    @Override
    public int delete(String ids) throws Exception {
        super.delete(ids);
        CmsUtils.removeCache("site_" + ids);
        CmsUtils.removeCache("siteList");
        return 1;
    }

}
