{if $aSimilarTopics}
    <section class="block block-type-stream">
        <header class="block-header">
            <h3><i class="fontello icon-braille"></i> {$aLang.plugin.similar.block_similar_articles_title}</h3>
        </header>
        <div class="block-content">
		
		<ul class="item-list">
                {foreach from=$aSimilarTopics item=oTopic name="cmt"}
                    {assign var="oBlog" value=$oTopic->getBlog()}
                    {assign var="oUser" value=$oTopic->getUser()}
		
		<li class="js-title-topic" title="{$oTopic->getText()|strip_tags|trim|truncate:150:'...'|escape:'html'}">
			<a class="circle" href="{$oUser->getUserWebPath()}"><img src="{$oUser->getProfileAvatarPath(48)}" alt="avatar" class="avatar" /></a>
			
			<a href="{$oUser->getUserWebPath()}" class="author">{$oUser->getLogin()}</a> <i class="fontello icon-right"></i>
			<a href="{$oBlog->getUrlFull()}" class="blog-name">{$oBlog->getTitle()|escape:'html'}</a> <i class="fontello icon-right"></i>
			<a href="{$oTopic->getUrl()}">{$oTopic->getTitle()|escape:'html'}</a>
			
			<p>
				<time datetime="{date_format date=$oTopic->getDate() format='c'}">{date_format date=$oTopic->getDateAdd() hours_back="12" minutes_back="60" now="60" day="day H:i" format="j F Y, H:i"}</time> |
				{$oTopic->getCountComment()} <i class="fontello icon-comment"></i>
			</p>
		</li>						
				{/foreach}				
		</ul>
		
        </div>
    </section>
{/if}