.class public final Lj3/e;
.super Lj3/a;
.source "SourceFile"


# instance fields
.field public final e:Lj3/d;


# direct methods
.method public constructor <init>(Lj3/d;)V
    .locals 1

    const-string v0, "backing"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lj3/a;-><init>()V

    iput-object p1, p0, Lj3/e;->e:Lj3/d;

    return-void
.end method


# virtual methods
.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {p0, p1}, Lj3/e;->w(Ljava/util/Map$Entry;)Z

    move-result p1

    return p1
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 1

    const-string v0, "elements"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public clear()V
    .locals 1

    iget-object v0, p0, Lj3/e;->e:Lj3/d;

    invoke-virtual {v0}, Lj3/d;->clear()V

    return-void
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 1

    const-string v0, "elements"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lj3/e;->e:Lj3/d;

    invoke-virtual {v0, p1}, Lj3/d;->n(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lj3/e;->e:Lj3/d;

    invoke-virtual {v0}, Lj3/d;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1

    iget-object v0, p0, Lj3/e;->e:Lj3/d;

    invoke-virtual {v0}, Lj3/d;->s()Lj3/d$b;

    move-result-object v0

    return-object v0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 1

    const-string v0, "elements"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lj3/e;->e:Lj3/d;

    invoke-virtual {v0}, Lj3/d;->l()V

    invoke-super {p0, p1}, Ljava/util/AbstractCollection;->removeAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 1

    const-string v0, "elements"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lj3/e;->e:Lj3/d;

    invoke-virtual {v0}, Lj3/d;->l()V

    invoke-super {p0, p1}, Ljava/util/AbstractCollection;->retainAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public s()I
    .locals 1

    iget-object v0, p0, Lj3/e;->e:Lj3/d;

    invoke-virtual {v0}, Lj3/d;->size()I

    move-result v0

    return v0
.end method

.method public u(Ljava/util/Map$Entry;)Z
    .locals 1

    const-string v0, "element"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lj3/e;->e:Lj3/d;

    invoke-virtual {v0, p1}, Lj3/d;->o(Ljava/util/Map$Entry;)Z

    move-result p1

    return p1
.end method

.method public v(Ljava/util/Map$Entry;)Z
    .locals 1

    const-string v0, "element"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lj3/e;->e:Lj3/d;

    invoke-virtual {v0, p1}, Lj3/d;->I(Ljava/util/Map$Entry;)Z

    move-result p1

    return p1
.end method

.method public w(Ljava/util/Map$Entry;)Z
    .locals 1

    const-string v0, "element"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method
