.class public abstract LW0/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LV0/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LW0/c$a;
    }
.end annotation


# instance fields
.field public final a:LX0/h;

.field public final b:Ljava/util/List;

.field public final c:Ljava/util/List;

.field public d:Ljava/lang/Object;

.field public e:LW0/c$a;


# direct methods
.method public constructor <init>(LX0/h;)V
    .locals 1

    const-string v0, "tracker"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LW0/c;->a:LX0/h;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, LW0/c;->b:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, LW0/c;->c:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 1

    iput-object p1, p0, LW0/c;->d:Ljava/lang/Object;

    iget-object v0, p0, LW0/c;->e:LW0/c$a;

    invoke-virtual {p0, v0, p1}, LW0/c;->h(LW0/c$a;Ljava/lang/Object;)V

    return-void
.end method

.method public abstract b(LZ0/u;)Z
.end method

.method public abstract c(Ljava/lang/Object;)Z
.end method

.method public final d(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "workSpecId"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, LW0/c;->d:Ljava/lang/Object;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, LW0/c;->c(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LW0/c;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final e(Ljava/lang/Iterable;)V
    .locals 3

    const-string v0, "workSpecs"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, LW0/c;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, LW0/c;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, LW0/c;->b:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, LZ0/u;

    invoke-virtual {p0, v2}, LW0/c;->b(LZ0/u;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object p1, p0, LW0/c;->b:Ljava/util/List;

    check-cast p1, Ljava/lang/Iterable;

    iget-object v0, p0, LW0/c;->c:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LZ0/u;

    iget-object v1, v1, LZ0/u;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    iget-object p1, p0, LW0/c;->b:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, LW0/c;->a:LX0/h;

    invoke-virtual {p1, p0}, LX0/h;->f(LV0/a;)V

    goto :goto_2

    :cond_3
    iget-object p1, p0, LW0/c;->a:LX0/h;

    invoke-virtual {p1, p0}, LX0/h;->c(LV0/a;)V

    :goto_2
    iget-object p1, p0, LW0/c;->e:LW0/c$a;

    iget-object v0, p0, LW0/c;->d:Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, LW0/c;->h(LW0/c$a;Ljava/lang/Object;)V

    return-void
.end method

.method public final f()V
    .locals 1

    iget-object v0, p0, LW0/c;->b:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, LW0/c;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, LW0/c;->a:LX0/h;

    invoke-virtual {v0, p0}, LX0/h;->f(LV0/a;)V

    :cond_0
    return-void
.end method

.method public final g(LW0/c$a;)V
    .locals 1

    iget-object v0, p0, LW0/c;->e:LW0/c$a;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, LW0/c;->e:LW0/c$a;

    iget-object v0, p0, LW0/c;->d:Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, LW0/c;->h(LW0/c$a;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final h(LW0/c$a;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, LW0/c;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p2, :cond_2

    invoke-virtual {p0, p2}, LW0/c;->c(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    iget-object p2, p0, LW0/c;->b:Ljava/util/List;

    invoke-interface {p1, p2}, LW0/c$a;->b(Ljava/util/List;)V

    goto :goto_1

    :cond_2
    :goto_0
    iget-object p2, p0, LW0/c;->b:Ljava/util/List;

    invoke-interface {p1, p2}, LW0/c$a;->c(Ljava/util/List;)V

    :cond_3
    :goto_1
    return-void
.end method
