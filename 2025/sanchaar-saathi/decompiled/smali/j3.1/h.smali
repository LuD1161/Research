.class public final Lj3/h;
.super Li3/f;
.source "SourceFile"

# interfaces
.implements Ljava/util/Set;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lj3/h$a;
    }
.end annotation


# static fields
.field public static final f:Lj3/h$a;

.field public static final g:Lj3/h;


# instance fields
.field public final e:Lj3/d;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lj3/h$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lj3/h$a;-><init>(Lv3/g;)V

    sput-object v0, Lj3/h;->f:Lj3/h$a;

    new-instance v0, Lj3/h;

    sget-object v1, Lj3/d;->r:Lj3/d$a;

    invoke-virtual {v1}, Lj3/d$a;->e()Lj3/d;

    move-result-object v1

    invoke-direct {v0, v1}, Lj3/h;-><init>(Lj3/d;)V

    sput-object v0, Lj3/h;->g:Lj3/h;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 3
    new-instance v0, Lj3/d;

    invoke-direct {v0}, Lj3/d;-><init>()V

    invoke-direct {p0, v0}, Lj3/h;-><init>(Lj3/d;)V

    return-void
.end method

.method public constructor <init>(Lj3/d;)V
    .locals 1

    const-string v0, "backing"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Li3/f;-><init>()V

    .line 2
    iput-object p1, p0, Lj3/h;->e:Lj3/d;

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lj3/h;->e:Lj3/d;

    invoke-virtual {v0, p1}, Lj3/d;->i(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 1

    const-string v0, "elements"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lj3/h;->e:Lj3/d;

    invoke-virtual {v0}, Lj3/d;->l()V

    invoke-super {p0, p1}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public clear()V
    .locals 1

    iget-object v0, p0, Lj3/h;->e:Lj3/d;

    invoke-virtual {v0}, Lj3/d;->clear()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lj3/h;->e:Lj3/d;

    invoke-virtual {v0, p1}, Lj3/d;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lj3/h;->e:Lj3/d;

    invoke-virtual {v0}, Lj3/d;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1

    iget-object v0, p0, Lj3/h;->e:Lj3/d;

    invoke-virtual {v0}, Lj3/d;->C()Lj3/d$e;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lj3/h;->e:Lj3/d;

    invoke-virtual {v0, p1}, Lj3/d;->L(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 1

    const-string v0, "elements"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lj3/h;->e:Lj3/d;

    invoke-virtual {v0}, Lj3/d;->l()V

    invoke-super {p0, p1}, Ljava/util/AbstractCollection;->removeAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 1

    const-string v0, "elements"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lj3/h;->e:Lj3/d;

    invoke-virtual {v0}, Lj3/d;->l()V

    invoke-super {p0, p1}, Ljava/util/AbstractCollection;->retainAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public s()I
    .locals 1

    iget-object v0, p0, Lj3/h;->e:Lj3/d;

    invoke-virtual {v0}, Lj3/d;->size()I

    move-result v0

    return v0
.end method

.method public final t()Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lj3/h;->e:Lj3/d;

    invoke-virtual {v0}, Lj3/d;->k()Ljava/util/Map;

    invoke-virtual {p0}, Li3/f;->size()I

    move-result v0

    if-lez v0, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    sget-object v0, Lj3/h;->g:Lj3/h;

    :goto_0
    return-object v0
.end method
