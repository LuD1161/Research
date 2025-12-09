.class public final Lj3/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Map;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lj3/d$a;,
        Lj3/d$b;,
        Lj3/d$c;,
        Lj3/d$d;,
        Lj3/d$e;,
        Lj3/d$f;
    }
.end annotation


# static fields
.field public static final r:Lj3/d$a;

.field public static final s:Lj3/d;


# instance fields
.field public e:[Ljava/lang/Object;

.field public f:[Ljava/lang/Object;

.field public g:[I

.field public h:[I

.field public i:I

.field public j:I

.field public k:I

.field public l:I

.field public m:I

.field public n:Lj3/f;

.field public o:Lj3/g;

.field public p:Lj3/e;

.field public q:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lj3/d$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lj3/d$a;-><init>(Lv3/g;)V

    sput-object v0, Lj3/d;->r:Lj3/d$a;

    new-instance v0, Lj3/d;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lj3/d;-><init>(I)V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lj3/d;->q:Z

    sput-object v0, Lj3/d;->s:Lj3/d;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x8

    .line 9
    invoke-direct {p0, v0}, Lj3/d;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 7

    .line 10
    invoke-static {p1}, Lj3/c;->d(I)[Ljava/lang/Object;

    move-result-object v1

    .line 11
    new-array v3, p1, [I

    .line 12
    sget-object v0, Lj3/d;->r:Lj3/d$a;

    invoke-static {v0, p1}, Lj3/d$a;->a(Lj3/d$a;I)I

    move-result p1

    new-array v4, p1, [I

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    .line 13
    invoke-direct/range {v0 .. v6}, Lj3/d;-><init>([Ljava/lang/Object;[Ljava/lang/Object;[I[III)V

    return-void
.end method

.method public constructor <init>([Ljava/lang/Object;[Ljava/lang/Object;[I[III)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lj3/d;->e:[Ljava/lang/Object;

    .line 3
    iput-object p2, p0, Lj3/d;->f:[Ljava/lang/Object;

    .line 4
    iput-object p3, p0, Lj3/d;->g:[I

    .line 5
    iput-object p4, p0, Lj3/d;->h:[I

    .line 6
    iput p5, p0, Lj3/d;->i:I

    .line 7
    iput p6, p0, Lj3/d;->j:I

    .line 8
    sget-object p1, Lj3/d;->r:Lj3/d$a;

    invoke-virtual {p0}, Lj3/d;->x()I

    move-result p2

    invoke-static {p1, p2}, Lj3/d$a;->b(Lj3/d$a;I)I

    move-result p1

    iput p1, p0, Lj3/d;->k:I

    return-void
.end method

.method public static final synthetic a(Lj3/d;)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lj3/d;->j()[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic b()Lj3/d;
    .locals 1

    sget-object v0, Lj3/d;->s:Lj3/d;

    return-object v0
.end method

.method public static final synthetic c(Lj3/d;)[Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lj3/d;->e:[Ljava/lang/Object;

    return-object p0
.end method

.method public static final synthetic d(Lj3/d;)I
    .locals 0

    iget p0, p0, Lj3/d;->j:I

    return p0
.end method

.method public static final synthetic e(Lj3/d;)I
    .locals 0

    iget p0, p0, Lj3/d;->l:I

    return p0
.end method

.method public static final synthetic f(Lj3/d;)[I
    .locals 0

    iget-object p0, p0, Lj3/d;->g:[I

    return-object p0
.end method

.method public static final synthetic g(Lj3/d;)[Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lj3/d;->f:[Ljava/lang/Object;

    return-object p0
.end method

.method public static final synthetic h(Lj3/d;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lj3/d;->J(I)V

    return-void
.end method


# virtual methods
.method public A()Ljava/util/Collection;
    .locals 1

    iget-object v0, p0, Lj3/d;->o:Lj3/g;

    if-nez v0, :cond_0

    new-instance v0, Lj3/g;

    invoke-direct {v0, p0}, Lj3/g;-><init>(Lj3/d;)V

    iput-object v0, p0, Lj3/d;->o:Lj3/g;

    :cond_0
    return-object v0
.end method

.method public final B(Ljava/lang/Object;)I
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const v0, -0x61c88647

    mul-int/2addr p1, v0

    iget v0, p0, Lj3/d;->k:I

    ushr-int/2addr p1, v0

    return p1
.end method

.method public final C()Lj3/d$e;
    .locals 1

    new-instance v0, Lj3/d$e;

    invoke-direct {v0, p0}, Lj3/d$e;-><init>(Lj3/d;)V

    return-object v0
.end method

.method public final D(Ljava/util/Collection;)Z
    .locals 2

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Lj3/d;->r(I)V

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-virtual {p0, v0}, Lj3/d;->E(Ljava/util/Map$Entry;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public final E(Ljava/util/Map$Entry;)Z
    .locals 5

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lj3/d;->i(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0}, Lj3/d;->j()[Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x1

    if-ltz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    aput-object p1, v1, v0

    return v2

    :cond_0
    neg-int v0, v0

    sub-int/2addr v0, v2

    aget-object v3, v1, v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4, v3}, Lv3/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    aput-object p1, v1, v0

    return v2

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final F(I)Z
    .locals 5

    iget-object v0, p0, Lj3/d;->e:[Ljava/lang/Object;

    aget-object v0, v0, p1

    invoke-virtual {p0, v0}, Lj3/d;->B(Ljava/lang/Object;)I

    move-result v0

    iget v1, p0, Lj3/d;->i:I

    :goto_0
    iget-object v2, p0, Lj3/d;->h:[I

    aget v3, v2, v0

    const/4 v4, 0x1

    if-nez v3, :cond_0

    add-int/lit8 v1, p1, 0x1

    aput v1, v2, v0

    iget-object v1, p0, Lj3/d;->g:[I

    aput v0, v1, p1

    return v4

    :cond_0
    add-int/lit8 v1, v1, -0x1

    if-gez v1, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    add-int/lit8 v2, v0, -0x1

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lj3/d;->x()I

    move-result v0

    sub-int/2addr v0, v4

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method public final G()V
    .locals 1

    iget v0, p0, Lj3/d;->l:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lj3/d;->l:I

    return-void
.end method

.method public final H(I)V
    .locals 3

    invoke-virtual {p0}, Lj3/d;->G()V

    iget v0, p0, Lj3/d;->j:I

    invoke-virtual {p0}, Lj3/d;->size()I

    move-result v1

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    invoke-virtual {p0, v2}, Lj3/d;->m(Z)V

    :cond_0
    new-array v0, p1, [I

    iput-object v0, p0, Lj3/d;->h:[I

    sget-object v0, Lj3/d;->r:Lj3/d$a;

    invoke-static {v0, p1}, Lj3/d$a;->b(Lj3/d$a;I)I

    move-result p1

    iput p1, p0, Lj3/d;->k:I

    :goto_0
    iget p1, p0, Lj3/d;->j:I

    if-ge v2, p1, :cond_2

    add-int/lit8 p1, v2, 0x1

    invoke-virtual {p0, v2}, Lj3/d;->F(I)Z

    move-result v0

    if-eqz v0, :cond_1

    move v2, p1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "This cannot happen with fixed magic multiplier and grow-only hash array. Have object hashCodes changed?"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    return-void
.end method

.method public final I(Ljava/util/Map$Entry;)Z
    .locals 3

    const-string v0, "entry"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lj3/d;->l()V

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lj3/d;->t(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    if-gez v0, :cond_0

    return v1

    :cond_0
    iget-object v2, p0, Lj3/d;->f:[Ljava/lang/Object;

    invoke-static {v2}, Lv3/l;->b(Ljava/lang/Object;)V

    aget-object v2, v2, v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-static {v2, p1}, Lv3/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0, v0}, Lj3/d;->J(I)V

    const/4 p1, 0x1

    return p1
.end method

.method public final J(I)V
    .locals 2

    iget-object v0, p0, Lj3/d;->e:[Ljava/lang/Object;

    invoke-static {v0, p1}, Lj3/c;->f([Ljava/lang/Object;I)V

    iget-object v0, p0, Lj3/d;->f:[Ljava/lang/Object;

    if-eqz v0, :cond_0

    invoke-static {v0, p1}, Lj3/c;->f([Ljava/lang/Object;I)V

    :cond_0
    iget-object v0, p0, Lj3/d;->g:[I

    aget v0, v0, p1

    invoke-virtual {p0, v0}, Lj3/d;->K(I)V

    iget-object v0, p0, Lj3/d;->g:[I

    const/4 v1, -0x1

    aput v1, v0, p1

    invoke-virtual {p0}, Lj3/d;->size()I

    move-result p1

    add-int/2addr p1, v1

    iput p1, p0, Lj3/d;->m:I

    invoke-virtual {p0}, Lj3/d;->G()V

    return-void
.end method

.method public final K(I)V
    .locals 9

    iget v0, p0, Lj3/d;->i:I

    mul-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Lj3/d;->x()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lz3/e;->c(II)I

    move-result v0

    const/4 v1, 0x0

    move v2, v0

    move v3, v1

    move v0, p1

    :cond_0
    add-int/lit8 v4, p1, -0x1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lj3/d;->x()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_1
    move p1, v4

    :goto_0
    add-int/lit8 v3, v3, 0x1

    iget v4, p0, Lj3/d;->i:I

    if-le v3, v4, :cond_2

    iget-object p1, p0, Lj3/d;->h:[I

    aput v1, p1, v0

    return-void

    :cond_2
    iget-object v4, p0, Lj3/d;->h:[I

    aget v5, v4, p1

    if-nez v5, :cond_3

    aput v1, v4, v0

    return-void

    :cond_3
    const/4 v6, -0x1

    if-gez v5, :cond_4

    aput v6, v4, v0

    :goto_1
    move v0, p1

    move v3, v1

    goto :goto_2

    :cond_4
    iget-object v4, p0, Lj3/d;->e:[Ljava/lang/Object;

    add-int/lit8 v7, v5, -0x1

    aget-object v4, v4, v7

    invoke-virtual {p0, v4}, Lj3/d;->B(Ljava/lang/Object;)I

    move-result v4

    sub-int/2addr v4, p1

    invoke-virtual {p0}, Lj3/d;->x()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    and-int/2addr v4, v8

    if-lt v4, v3, :cond_5

    iget-object v3, p0, Lj3/d;->h:[I

    aput v5, v3, v0

    iget-object v3, p0, Lj3/d;->g:[I

    aput v0, v3, v7

    goto :goto_1

    :cond_5
    :goto_2
    add-int/2addr v2, v6

    if-gez v2, :cond_0

    iget-object p1, p0, Lj3/d;->h:[I

    aput v6, p1, v0

    return-void
.end method

.method public final L(Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p0}, Lj3/d;->l()V

    invoke-virtual {p0, p1}, Lj3/d;->t(Ljava/lang/Object;)I

    move-result p1

    if-gez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p0, p1}, Lj3/d;->J(I)V

    const/4 p1, 0x1

    return p1
.end method

.method public final M(Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p0}, Lj3/d;->l()V

    invoke-virtual {p0, p1}, Lj3/d;->u(Ljava/lang/Object;)I

    move-result p1

    if-gez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p0, p1}, Lj3/d;->J(I)V

    const/4 p1, 0x1

    return p1
.end method

.method public final N(I)Z
    .locals 3

    invoke-virtual {p0}, Lj3/d;->v()I

    move-result v0

    iget v1, p0, Lj3/d;->j:I

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lj3/d;->size()I

    move-result v2

    sub-int/2addr v1, v2

    if-ge v0, p1, :cond_0

    add-int/2addr v0, v1

    if-lt v0, p1, :cond_0

    invoke-virtual {p0}, Lj3/d;->v()I

    move-result p1

    div-int/lit8 p1, p1, 0x4

    if-lt v1, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final O()Lj3/d$f;
    .locals 1

    new-instance v0, Lj3/d$f;

    invoke-direct {v0, p0}, Lj3/d$f;-><init>(Lj3/d;)V

    return-object v0
.end method

.method public clear()V
    .locals 6

    invoke-virtual {p0}, Lj3/d;->l()V

    iget v0, p0, Lj3/d;->j:I

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    if-ltz v0, :cond_1

    move v2, v1

    :goto_0
    iget-object v3, p0, Lj3/d;->g:[I

    aget v4, v3, v2

    if-ltz v4, :cond_0

    iget-object v5, p0, Lj3/d;->h:[I

    aput v1, v5, v4

    const/4 v4, -0x1

    aput v4, v3, v2

    :cond_0
    if-eq v2, v0, :cond_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lj3/d;->e:[Ljava/lang/Object;

    iget v2, p0, Lj3/d;->j:I

    invoke-static {v0, v1, v2}, Lj3/c;->g([Ljava/lang/Object;II)V

    iget-object v0, p0, Lj3/d;->f:[Ljava/lang/Object;

    if-eqz v0, :cond_2

    iget v2, p0, Lj3/d;->j:I

    invoke-static {v0, v1, v2}, Lj3/c;->g([Ljava/lang/Object;II)V

    :cond_2
    iput v1, p0, Lj3/d;->m:I

    iput v1, p0, Lj3/d;->j:I

    invoke-virtual {p0}, Lj3/d;->G()V

    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lj3/d;->t(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lj3/d;->u(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final bridge entrySet()Ljava/util/Set;
    .locals 1

    invoke-virtual {p0}, Lj3/d;->w()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p1, p0, :cond_1

    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1}, Lj3/d;->p(Ljava/util/Map;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lj3/d;->t(Ljava/lang/Object;)I

    move-result p1

    if-gez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p0, Lj3/d;->f:[Ljava/lang/Object;

    invoke-static {v0}, Lv3/l;->b(Ljava/lang/Object;)V

    aget-object p1, v0, p1

    return-object p1
.end method

.method public hashCode()I
    .locals 3

    invoke-virtual {p0}, Lj3/d;->s()Lj3/d$b;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Lj3/d$d;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lj3/d$b;->l()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    return v1
.end method

.method public final i(Ljava/lang/Object;)I
    .locals 7

    invoke-virtual {p0}, Lj3/d;->l()V

    :goto_0
    invoke-virtual {p0, p1}, Lj3/d;->B(Ljava/lang/Object;)I

    move-result v0

    iget v1, p0, Lj3/d;->i:I

    mul-int/lit8 v1, v1, 0x2

    invoke-virtual {p0}, Lj3/d;->x()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-static {v1, v2}, Lz3/e;->c(II)I

    move-result v1

    const/4 v2, 0x0

    :goto_1
    iget-object v3, p0, Lj3/d;->h:[I

    aget v3, v3, v0

    const/4 v4, 0x1

    if-gtz v3, :cond_2

    iget v1, p0, Lj3/d;->j:I

    invoke-virtual {p0}, Lj3/d;->v()I

    move-result v3

    if-lt v1, v3, :cond_0

    invoke-virtual {p0, v4}, Lj3/d;->r(I)V

    goto :goto_0

    :cond_0
    iget v1, p0, Lj3/d;->j:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lj3/d;->j:I

    iget-object v5, p0, Lj3/d;->e:[Ljava/lang/Object;

    aput-object p1, v5, v1

    iget-object p1, p0, Lj3/d;->g:[I

    aput v0, p1, v1

    iget-object p1, p0, Lj3/d;->h:[I

    aput v3, p1, v0

    invoke-virtual {p0}, Lj3/d;->size()I

    move-result p1

    add-int/2addr p1, v4

    iput p1, p0, Lj3/d;->m:I

    invoke-virtual {p0}, Lj3/d;->G()V

    iget p1, p0, Lj3/d;->i:I

    if-le v2, p1, :cond_1

    iput v2, p0, Lj3/d;->i:I

    :cond_1
    return v1

    :cond_2
    iget-object v5, p0, Lj3/d;->e:[Ljava/lang/Object;

    add-int/lit8 v6, v3, -0x1

    aget-object v5, v5, v6

    invoke-static {v5, p1}, Lv3/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    neg-int p1, v3

    return p1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    if-le v2, v1, :cond_4

    invoke-virtual {p0}, Lj3/d;->x()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0}, Lj3/d;->H(I)V

    goto :goto_0

    :cond_4
    add-int/lit8 v3, v0, -0x1

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lj3/d;->x()I

    move-result v0

    sub-int/2addr v0, v4

    goto :goto_1

    :cond_5
    move v0, v3

    goto :goto_1
.end method

.method public isEmpty()Z
    .locals 1

    invoke-virtual {p0}, Lj3/d;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final j()[Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lj3/d;->f:[Ljava/lang/Object;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lj3/d;->v()I

    move-result v0

    invoke-static {v0}, Lj3/c;->d(I)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lj3/d;->f:[Ljava/lang/Object;

    return-object v0
.end method

.method public final k()Ljava/util/Map;
    .locals 2

    invoke-virtual {p0}, Lj3/d;->l()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lj3/d;->q:Z

    invoke-virtual {p0}, Lj3/d;->size()I

    move-result v0

    if-lez v0, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    sget-object v0, Lj3/d;->s:Lj3/d;

    const-string v1, "null cannot be cast to non-null type kotlin.collections.Map<K of kotlin.collections.builders.MapBuilder, V of kotlin.collections.builders.MapBuilder>"

    invoke-static {v0, v1}, Lv3/l;->c(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method

.method public final bridge keySet()Ljava/util/Set;
    .locals 1

    invoke-virtual {p0}, Lj3/d;->y()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final l()V
    .locals 1

    iget-boolean v0, p0, Lj3/d;->q:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final m(Z)V
    .locals 7

    iget-object v0, p0, Lj3/d;->f:[Ljava/lang/Object;

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget v3, p0, Lj3/d;->j:I

    if-ge v1, v3, :cond_3

    iget-object v3, p0, Lj3/d;->g:[I

    aget v4, v3, v1

    if-ltz v4, :cond_2

    iget-object v5, p0, Lj3/d;->e:[Ljava/lang/Object;

    aget-object v6, v5, v1

    aput-object v6, v5, v2

    if-eqz v0, :cond_0

    aget-object v5, v0, v1

    aput-object v5, v0, v2

    :cond_0
    if-eqz p1, :cond_1

    aput v4, v3, v2

    iget-object v3, p0, Lj3/d;->h:[I

    add-int/lit8 v5, v2, 0x1

    aput v5, v3, v4

    :cond_1
    add-int/lit8 v2, v2, 0x1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lj3/d;->e:[Ljava/lang/Object;

    invoke-static {p1, v2, v3}, Lj3/c;->g([Ljava/lang/Object;II)V

    if-eqz v0, :cond_4

    iget p1, p0, Lj3/d;->j:I

    invoke-static {v0, v2, p1}, Lj3/c;->g([Ljava/lang/Object;II)V

    :cond_4
    iput v2, p0, Lj3/d;->j:I

    return-void
.end method

.method public final n(Ljava/util/Collection;)Z
    .locals 2

    const-string v0, "m"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    :try_start_0
    check-cast v0, Ljava/util/Map$Entry;

    invoke-virtual {p0, v0}, Lj3/d;->o(Ljava/util/Map$Entry;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_0

    nop

    :catch_0
    :cond_1
    return v1

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public final o(Ljava/util/Map$Entry;)Z
    .locals 2

    const-string v0, "entry"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lj3/d;->t(Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v1, p0, Lj3/d;->f:[Ljava/lang/Object;

    invoke-static {v1}, Lv3/l;->b(Ljava/lang/Object;)V

    aget-object v0, v1, v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Lv3/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final p(Ljava/util/Map;)Z
    .locals 2

    invoke-virtual {p0}, Lj3/d;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-virtual {p0, p1}, Lj3/d;->n(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0}, Lj3/d;->l()V

    invoke-virtual {p0, p1}, Lj3/d;->i(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p0}, Lj3/d;->j()[Ljava/lang/Object;

    move-result-object v0

    if-gez p1, :cond_0

    neg-int p1, p1

    add-int/lit8 p1, p1, -0x1

    aget-object v1, v0, p1

    aput-object p2, v0, p1

    return-object v1

    :cond_0
    aput-object p2, v0, p1

    const/4 p1, 0x0

    return-object p1
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 1

    const-string v0, "from"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lj3/d;->l()V

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-virtual {p0, p1}, Lj3/d;->D(Ljava/util/Collection;)Z

    return-void
.end method

.method public final q(I)V
    .locals 2

    if-ltz p1, :cond_2

    invoke-virtual {p0}, Lj3/d;->v()I

    move-result v0

    if-le p1, v0, :cond_1

    sget-object v0, Li3/c;->e:Li3/c$a;

    invoke-virtual {p0}, Lj3/d;->v()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Li3/c$a;->d(II)I

    move-result p1

    iget-object v0, p0, Lj3/d;->e:[Ljava/lang/Object;

    invoke-static {v0, p1}, Lj3/c;->e([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lj3/d;->e:[Ljava/lang/Object;

    iget-object v0, p0, Lj3/d;->f:[Ljava/lang/Object;

    if-eqz v0, :cond_0

    invoke-static {v0, p1}, Lj3/c;->e([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lj3/d;->f:[Ljava/lang/Object;

    iget-object v0, p0, Lj3/d;->g:[I

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    const-string v1, "copyOf(...)"

    invoke-static {v0, v1}, Lv3/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lj3/d;->g:[I

    sget-object v0, Lj3/d;->r:Lj3/d$a;

    invoke-static {v0, p1}, Lj3/d$a;->a(Lj3/d$a;I)I

    move-result p1

    invoke-virtual {p0}, Lj3/d;->x()I

    move-result v0

    if-le p1, v0, :cond_1

    invoke-virtual {p0, p1}, Lj3/d;->H(I)V

    :cond_1
    return-void

    :cond_2
    new-instance p1, Ljava/lang/OutOfMemoryError;

    invoke-direct {p1}, Ljava/lang/OutOfMemoryError;-><init>()V

    throw p1
.end method

.method public final r(I)V
    .locals 1

    invoke-virtual {p0, p1}, Lj3/d;->N(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lj3/d;->m(Z)V

    goto :goto_0

    :cond_0
    iget v0, p0, Lj3/d;->j:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lj3/d;->q(I)V

    :goto_0
    return-void
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lj3/d;->l()V

    invoke-virtual {p0, p1}, Lj3/d;->t(Ljava/lang/Object;)I

    move-result p1

    if-gez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p0, Lj3/d;->f:[Ljava/lang/Object;

    invoke-static {v0}, Lv3/l;->b(Ljava/lang/Object;)V

    aget-object v0, v0, p1

    invoke-virtual {p0, p1}, Lj3/d;->J(I)V

    return-object v0
.end method

.method public final s()Lj3/d$b;
    .locals 1

    new-instance v0, Lj3/d$b;

    invoke-direct {v0, p0}, Lj3/d$b;-><init>(Lj3/d;)V

    return-object v0
.end method

.method public final bridge size()I
    .locals 1

    invoke-virtual {p0}, Lj3/d;->z()I

    move-result v0

    return v0
.end method

.method public final t(Ljava/lang/Object;)I
    .locals 5

    invoke-virtual {p0, p1}, Lj3/d;->B(Ljava/lang/Object;)I

    move-result v0

    iget v1, p0, Lj3/d;->i:I

    :goto_0
    iget-object v2, p0, Lj3/d;->h:[I

    aget v2, v2, v0

    const/4 v3, -0x1

    if-nez v2, :cond_0

    return v3

    :cond_0
    if-lez v2, :cond_1

    iget-object v4, p0, Lj3/d;->e:[Ljava/lang/Object;

    add-int/lit8 v2, v2, -0x1

    aget-object v4, v4, v2

    invoke-static {v4, p1}, Lv3/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    return v2

    :cond_1
    add-int/2addr v1, v3

    if-gez v1, :cond_2

    return v3

    :cond_2
    add-int/lit8 v2, v0, -0x1

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lj3/d;->x()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lj3/d;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    add-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lj3/d;->s()Lj3/d$b;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1}, Lj3/d$d;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    if-lez v2, :cond_0

    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v1, v0}, Lj3/d$b;->k(Ljava/lang/StringBuilder;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "toString(...)"

    invoke-static {v0, v1}, Lv3/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final u(Ljava/lang/Object;)I
    .locals 2

    iget v0, p0, Lj3/d;->j:I

    :cond_0
    const/4 v1, -0x1

    add-int/2addr v0, v1

    if-ltz v0, :cond_1

    iget-object v1, p0, Lj3/d;->g:[I

    aget v1, v1, v0

    if-ltz v1, :cond_0

    iget-object v1, p0, Lj3/d;->f:[Ljava/lang/Object;

    invoke-static {v1}, Lv3/l;->b(Ljava/lang/Object;)V

    aget-object v1, v1, v0

    invoke-static {v1, p1}, Lv3/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_1
    return v1
.end method

.method public final v()I
    .locals 1

    iget-object v0, p0, Lj3/d;->e:[Ljava/lang/Object;

    array-length v0, v0

    return v0
.end method

.method public final bridge values()Ljava/util/Collection;
    .locals 1

    invoke-virtual {p0}, Lj3/d;->A()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public w()Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lj3/d;->p:Lj3/e;

    if-nez v0, :cond_0

    new-instance v0, Lj3/e;

    invoke-direct {v0, p0}, Lj3/e;-><init>(Lj3/d;)V

    iput-object v0, p0, Lj3/d;->p:Lj3/e;

    :cond_0
    return-object v0
.end method

.method public final x()I
    .locals 1

    iget-object v0, p0, Lj3/d;->h:[I

    array-length v0, v0

    return v0
.end method

.method public y()Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lj3/d;->n:Lj3/f;

    if-nez v0, :cond_0

    new-instance v0, Lj3/f;

    invoke-direct {v0, p0}, Lj3/f;-><init>(Lj3/d;)V

    iput-object v0, p0, Lj3/d;->n:Lj3/f;

    :cond_0
    return-object v0
.end method

.method public z()I
    .locals 1

    iget v0, p0, Lj3/d;->m:I

    return v0
.end method
