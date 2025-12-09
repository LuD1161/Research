.class public final LL2/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LY2/j$c;


# instance fields
.field public final c:LL2/d;

.field public final d:Ldev/fluttercommunity/plus/share/a;


# direct methods
.method public constructor <init>(LL2/d;Ldev/fluttercommunity/plus/share/a;)V
    .locals 1

    const-string v0, "share"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "manager"

    invoke-static {p2, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LL2/a;->c:LL2/d;

    iput-object p2, p0, LL2/a;->d:Ldev/fluttercommunity/plus/share/a;

    return-void
.end method


# virtual methods
.method public final a(LY2/i;)V
    .locals 1

    iget-object p1, p1, LY2/i;->b:Ljava/lang/Object;

    instance-of p1, p1, Ljava/util/Map;

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Map arguments expected"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final b(ZLY2/j$d;)V
    .locals 0

    if-nez p1, :cond_0

    const-string p1, "dev.fluttercommunity.plus/share/unavailable"

    invoke-interface {p2, p1}, LY2/j$d;->a(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onMethodCall(LY2/i;LY2/j$d;)V
    .locals 12

    const-string v0, "call"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "result"

    invoke-static {p2, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, LL2/a;->a(LY2/i;)V

    iget-object v0, p0, LL2/a;->d:Ldev/fluttercommunity/plus/share/a;

    invoke-virtual {v0, p2}, Ldev/fluttercommunity/plus/share/a;->c(LY2/j$d;)V

    :try_start_0
    iget-object v0, p1, LY2/i;->a:Ljava/lang/String;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const v2, -0x6bf77228

    const-string v3, "subject"

    const-string v4, "text"

    const/4 v11, 0x1

    if-eq v1, v2, :cond_4

    const v2, -0x2c5502f3

    const-string v5, "null cannot be cast to non-null type kotlin.String"

    if-eq v1, v2, :cond_2

    const v2, 0x6854fdf

    if-eq v1, v2, :cond_0

    goto/16 :goto_0

    :cond_0
    :try_start_1
    const-string v1, "share"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_0

    :cond_1
    iget-object v0, p0, LL2/a;->c:LL2/d;

    invoke-virtual {p1, v4}, LY2/i;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v5}, Lv3/l;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v3}, LY2/i;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, v1, p1, v11}, LL2/d;->p(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {p0, v11, p2}, LL2/a;->b(ZLY2/j$d;)V

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_2
    const-string v1, "shareUri"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    iget-object v0, p0, LL2/a;->c:LL2/d;

    const-string v1, "uri"

    invoke-virtual {p1, v1}, LY2/i;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, v5}, Lv3/l;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, v11}, LL2/d;->p(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {p0, v11, p2}, LL2/a;->b(ZLY2/j$d;)V

    goto :goto_2

    :cond_4
    const-string v1, "shareFiles"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    iget-object v5, p0, LL2/a;->c:LL2/d;

    const-string v0, "paths"

    invoke-virtual {p1, v0}, LY2/i;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lv3/l;->b(Ljava/lang/Object;)V

    move-object v6, v0

    check-cast v6, Ljava/util/List;

    const-string v0, "mimeTypes"

    invoke-virtual {p1, v0}, LY2/i;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Ljava/util/List;

    invoke-virtual {p1, v4}, LY2/i;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Ljava/lang/String;

    invoke-virtual {p1, v3}, LY2/i;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    move-object v9, p1

    check-cast v9, Ljava/lang/String;

    move v10, v11

    invoke-virtual/range {v5 .. v10}, LL2/d;->q(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {p0, v11, p2}, LL2/a;->b(ZLY2/j$d;)V

    goto :goto_2

    :cond_6
    :goto_0
    invoke-interface {p2}, LY2/j$d;->c()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :goto_1
    iget-object v0, p0, LL2/a;->d:Ldev/fluttercommunity/plus/share/a;

    invoke-virtual {v0}, Ldev/fluttercommunity/plus/share/a;->a()V

    const-string v0, "Share failed"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1, p1}, LY2/j$d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_2
    return-void
.end method
