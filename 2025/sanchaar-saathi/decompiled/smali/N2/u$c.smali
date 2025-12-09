.class public LN2/u$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/flutter/embedding/engine/renderer/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LN2/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LN2/u;


# direct methods
.method public constructor <init>(LN2/u;)V
    .locals 0

    iput-object p1, p0, LN2/u$c;->a:LN2/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d()V
    .locals 2

    iget-object v0, p0, LN2/u$c;->a:LN2/u;

    const/4 v1, 0x0

    invoke-static {v0, v1}, LN2/u;->g(LN2/u;Z)Z

    iget-object v0, p0, LN2/u$c;->a:LN2/u;

    invoke-static {v0}, LN2/u;->h(LN2/u;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/flutter/embedding/engine/renderer/m;

    invoke-interface {v1}, Lio/flutter/embedding/engine/renderer/m;->d()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public g()V
    .locals 2

    iget-object v0, p0, LN2/u$c;->a:LN2/u;

    const/4 v1, 0x1

    invoke-static {v0, v1}, LN2/u;->g(LN2/u;Z)Z

    iget-object v0, p0, LN2/u$c;->a:LN2/u;

    invoke-static {v0}, LN2/u;->h(LN2/u;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/flutter/embedding/engine/renderer/m;

    invoke-interface {v1}, Lio/flutter/embedding/engine/renderer/m;->g()V

    goto :goto_0

    :cond_0
    return-void
.end method
