.class public Lio/flutter/embedding/engine/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/flutter/embedding/engine/b$b;
    }
.end annotation


# instance fields
.field public final a:Ljava/util/List;


# direct methods
.method public constructor <init>(Landroid/content/Context;[Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/flutter/embedding/engine/b;->a:Ljava/util/List;

    invoke-static {}, LM2/a;->e()LM2/a;

    move-result-object v0

    invoke-virtual {v0}, LM2/a;->c()LR2/d;

    move-result-object v0

    invoke-virtual {v0}, LR2/d;->k()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, LR2/d;->m(Landroid/content/Context;)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, LR2/d;->f(Landroid/content/Context;[Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lio/flutter/embedding/engine/b$b;)Lio/flutter/embedding/engine/a;
    .locals 8

    invoke-virtual {p1}, Lio/flutter/embedding/engine/b$b;->b()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lio/flutter/embedding/engine/b$b;->c()LP2/a$c;

    move-result-object v0

    invoke-virtual {p1}, Lio/flutter/embedding/engine/b$b;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lio/flutter/embedding/engine/b$b;->d()Ljava/util/List;

    move-result-object v4

    invoke-virtual {p1}, Lio/flutter/embedding/engine/b$b;->f()Lio/flutter/plugin/platform/t;

    move-result-object v2

    if-eqz v2, :cond_0

    :goto_0
    move-object v5, v2

    goto :goto_1

    :cond_0
    new-instance v2, Lio/flutter/plugin/platform/t;

    invoke-direct {v2}, Lio/flutter/plugin/platform/t;-><init>()V

    goto :goto_0

    :goto_1
    invoke-virtual {p1}, Lio/flutter/embedding/engine/b$b;->a()Z

    move-result v6

    invoke-virtual {p1}, Lio/flutter/embedding/engine/b$b;->g()Z

    move-result v7

    if-nez v0, :cond_1

    invoke-static {}, LP2/a$c;->a()LP2/a$c;

    move-result-object p1

    move-object v2, p1

    goto :goto_2

    :cond_1
    move-object v2, v0

    :goto_2
    iget-object p1, p0, Lio/flutter/embedding/engine/b;->a:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {p0, v1, v5, v6, v7}, Lio/flutter/embedding/engine/b;->b(Landroid/content/Context;Lio/flutter/plugin/platform/t;ZZ)Lio/flutter/embedding/engine/a;

    move-result-object p1

    if-eqz v3, :cond_2

    invoke-virtual {p1}, Lio/flutter/embedding/engine/a;->o()LX2/n;

    move-result-object v0

    invoke-virtual {v0, v3}, LX2/n;->c(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p1}, Lio/flutter/embedding/engine/a;->k()LP2/a;

    move-result-object v0

    invoke-virtual {v0, v2, v4}, LP2/a;->k(LP2/a$c;Ljava/util/List;)V

    goto :goto_3

    :cond_3
    iget-object p1, p0, Lio/flutter/embedding/engine/b;->a:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lio/flutter/embedding/engine/a;

    invoke-virtual/range {v0 .. v7}, Lio/flutter/embedding/engine/a;->B(Landroid/content/Context;LP2/a$c;Ljava/lang/String;Ljava/util/List;Lio/flutter/plugin/platform/t;ZZ)Lio/flutter/embedding/engine/a;

    move-result-object p1

    :goto_3
    iget-object v0, p0, Lio/flutter/embedding/engine/b;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lio/flutter/embedding/engine/b$a;

    invoke-direct {v0, p0, p1}, Lio/flutter/embedding/engine/b$a;-><init>(Lio/flutter/embedding/engine/b;Lio/flutter/embedding/engine/a;)V

    invoke-virtual {p1, v0}, Lio/flutter/embedding/engine/a;->e(Lio/flutter/embedding/engine/a$b;)V

    return-object p1
.end method

.method public b(Landroid/content/Context;Lio/flutter/plugin/platform/t;ZZ)Lio/flutter/embedding/engine/a;
    .locals 10

    new-instance v9, Lio/flutter/embedding/engine/a;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    move-object v0, v9

    move-object v1, p1

    move-object v4, p2

    move v6, p3

    move v7, p4

    move-object v8, p0

    invoke-direct/range {v0 .. v8}, Lio/flutter/embedding/engine/a;-><init>(Landroid/content/Context;LR2/d;Lio/flutter/embedding/engine/FlutterJNI;Lio/flutter/plugin/platform/t;[Ljava/lang/String;ZZLio/flutter/embedding/engine/b;)V

    return-object v9
.end method
