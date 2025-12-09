.class public final LO3/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LO3/r$a;
    }
.end annotation


# static fields
.field public static final f:LO3/r$a;

.field public static final g:Ljava/lang/String;


# instance fields
.field public final e:LO3/e;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LO3/r$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LO3/r$a;-><init>(Lv3/g;)V

    sput-object v0, LO3/r;->f:LO3/r$a;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    const-string v1, "separator"

    invoke-static {v0, v1}, Lv3/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, LO3/r;->g:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(LO3/e;)V
    .locals 1

    const-string v0, "bytes"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LO3/r;->e:LO3/e;

    return-void
.end method


# virtual methods
.method public b(LO3/r;)I
    .locals 1

    const-string v0, "other"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, LO3/r;->f()LO3/e;

    move-result-object v0

    invoke-virtual {p1}, LO3/r;->f()LO3/e;

    move-result-object p1

    invoke-virtual {v0, p1}, LO3/e;->b(LO3/e;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, LO3/r;

    invoke-virtual {p0, p1}, LO3/r;->b(LO3/r;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, LO3/r;

    if-eqz v0, :cond_0

    check-cast p1, LO3/r;

    invoke-virtual {p1}, LO3/r;->f()LO3/e;

    move-result-object p1

    invoke-virtual {p0}, LO3/r;->f()LO3/e;

    move-result-object v0

    invoke-static {p1, v0}, Lv3/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final f()LO3/e;
    .locals 1

    iget-object v0, p0, LO3/r;->e:LO3/e;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    invoke-virtual {p0}, LO3/r;->f()LO3/e;

    move-result-object v0

    invoke-virtual {v0}, LO3/e;->hashCode()I

    move-result v0

    return v0
.end method

.method public final k()LO3/r;
    .locals 4

    invoke-static {p0}, LP3/c;->h(LO3/r;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v1, LO3/r;

    invoke-virtual {p0}, LO3/r;->f()LO3/e;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, LO3/e;->E(II)LO3/e;

    move-result-object v0

    invoke-direct {v1, v0}, LO3/r;-><init>(LO3/e;)V

    move-object v0, v1

    :goto_0
    return-object v0
.end method

.method public final l()Ljava/util/List;
    .locals 7

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0}, LP3/c;->h(LO3/r;)I

    move-result v1

    const/4 v2, -0x1

    const/16 v3, 0x5c

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, LO3/r;->f()LO3/e;

    move-result-object v2

    invoke-virtual {v2}, LO3/e;->C()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p0}, LO3/r;->f()LO3/e;

    move-result-object v2

    invoke-virtual {v2, v1}, LO3/e;->k(I)B

    move-result v2

    if-ne v2, v3, :cond_1

    add-int/lit8 v1, v1, 0x1

    :cond_1
    :goto_0
    invoke-virtual {p0}, LO3/r;->f()LO3/e;

    move-result-object v2

    invoke-virtual {v2}, LO3/e;->C()I

    move-result v2

    move v4, v1

    :goto_1
    if-ge v1, v2, :cond_4

    invoke-virtual {p0}, LO3/r;->f()LO3/e;

    move-result-object v5

    invoke-virtual {v5, v1}, LO3/e;->k(I)B

    move-result v5

    const/16 v6, 0x2f

    if-eq v5, v6, :cond_2

    invoke-virtual {p0}, LO3/r;->f()LO3/e;

    move-result-object v5

    invoke-virtual {v5, v1}, LO3/e;->k(I)B

    move-result v5

    if-ne v5, v3, :cond_3

    :cond_2
    invoke-virtual {p0}, LO3/r;->f()LO3/e;

    move-result-object v5

    invoke-virtual {v5, v4, v1}, LO3/e;->E(II)LO3/e;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v1, 0x1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, LO3/r;->f()LO3/e;

    move-result-object v1

    invoke-virtual {v1}, LO3/e;->C()I

    move-result v1

    if-ge v4, v1, :cond_5

    invoke-virtual {p0}, LO3/r;->f()LO3/e;

    move-result-object v1

    invoke-virtual {p0}, LO3/r;->f()LO3/e;

    move-result-object v2

    invoke-virtual {v2}, LO3/e;->C()I

    move-result v2

    invoke-virtual {v1, v4, v2}, LO3/e;->E(II)LO3/e;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_5
    return-object v0
.end method

.method public final m()Z
    .locals 2

    invoke-static {p0}, LP3/c;->h(LO3/r;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final n()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, LO3/r;->o()LO3/e;

    move-result-object v0

    invoke-virtual {v0}, LO3/e;->G()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final o()LO3/e;
    .locals 5

    invoke-static {p0}, LP3/c;->d(LO3/r;)I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x2

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, LO3/r;->f()LO3/e;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v1, v0, v3, v2, v4}, LO3/e;->F(LO3/e;IIILjava/lang/Object;)LO3/e;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, LO3/r;->w()Ljava/lang/Character;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, LO3/r;->f()LO3/e;

    move-result-object v0

    invoke-virtual {v0}, LO3/e;->C()I

    move-result v0

    if-ne v0, v2, :cond_1

    sget-object v0, LO3/e;->i:LO3/e;

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, LO3/r;->f()LO3/e;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public final p()LO3/r;
    .locals 3

    sget-object v0, LO3/r;->f:LO3/r$a;

    invoke-virtual {p0}, LO3/r;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, LO3/r$a;->b(Ljava/lang/String;Z)LO3/r;

    move-result-object v0

    return-object v0
.end method

.method public final q()LO3/r;
    .locals 7

    invoke-virtual {p0}, LO3/r;->f()LO3/e;

    move-result-object v0

    invoke-static {}, LP3/c;->b()LO3/e;

    move-result-object v1

    invoke-static {v0, v1}, Lv3/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    invoke-virtual {p0}, LO3/r;->f()LO3/e;

    move-result-object v0

    invoke-static {}, LP3/c;->e()LO3/e;

    move-result-object v2

    invoke-static {v0, v2}, Lv3/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {p0}, LO3/r;->f()LO3/e;

    move-result-object v0

    invoke-static {}, LP3/c;->a()LO3/e;

    move-result-object v2

    invoke-static {v0, v2}, Lv3/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-static {p0}, LP3/c;->g(LO3/r;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-static {p0}, LP3/c;->d(LO3/r;)I

    move-result v0

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v0, v2, :cond_2

    invoke-virtual {p0}, LO3/r;->w()Ljava/lang/Character;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {p0}, LO3/r;->f()LO3/e;

    move-result-object v0

    invoke-virtual {v0}, LO3/e;->C()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    goto/16 :goto_1

    :cond_1
    new-instance v0, LO3/r;

    invoke-virtual {p0}, LO3/r;->f()LO3/e;

    move-result-object v5

    invoke-static {v5, v3, v2, v4, v1}, LO3/e;->F(LO3/e;IIILjava/lang/Object;)LO3/e;

    move-result-object v1

    invoke-direct {v0, v1}, LO3/r;-><init>(LO3/e;)V

    :goto_0
    move-object v1, v0

    goto :goto_1

    :cond_2
    if-ne v0, v4, :cond_3

    invoke-virtual {p0}, LO3/r;->f()LO3/e;

    move-result-object v5

    invoke-static {}, LP3/c;->a()LO3/e;

    move-result-object v6

    invoke-virtual {v5, v6}, LO3/e;->D(LO3/e;)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_1

    :cond_3
    const/4 v5, -0x1

    if-ne v0, v5, :cond_5

    invoke-virtual {p0}, LO3/r;->w()Ljava/lang/Character;

    move-result-object v6

    if-eqz v6, :cond_5

    invoke-virtual {p0}, LO3/r;->f()LO3/e;

    move-result-object v0

    invoke-virtual {v0}, LO3/e;->C()I

    move-result v0

    if-ne v0, v2, :cond_4

    goto :goto_1

    :cond_4
    new-instance v0, LO3/r;

    invoke-virtual {p0}, LO3/r;->f()LO3/e;

    move-result-object v5

    invoke-static {v5, v3, v2, v4, v1}, LO3/e;->F(LO3/e;IIILjava/lang/Object;)LO3/e;

    move-result-object v1

    invoke-direct {v0, v1}, LO3/r;-><init>(LO3/e;)V

    goto :goto_0

    :cond_5
    if-ne v0, v5, :cond_6

    new-instance v1, LO3/r;

    invoke-static {}, LP3/c;->b()LO3/e;

    move-result-object v0

    invoke-direct {v1, v0}, LO3/r;-><init>(LO3/e;)V

    goto :goto_1

    :cond_6
    if-nez v0, :cond_7

    new-instance v0, LO3/r;

    invoke-virtual {p0}, LO3/r;->f()LO3/e;

    move-result-object v2

    invoke-static {v2, v3, v4, v4, v1}, LO3/e;->F(LO3/e;IIILjava/lang/Object;)LO3/e;

    move-result-object v1

    invoke-direct {v0, v1}, LO3/r;-><init>(LO3/e;)V

    goto :goto_0

    :cond_7
    new-instance v2, LO3/r;

    invoke-virtual {p0}, LO3/r;->f()LO3/e;

    move-result-object v5

    invoke-static {v5, v3, v0, v4, v1}, LO3/e;->F(LO3/e;IIILjava/lang/Object;)LO3/e;

    move-result-object v0

    invoke-direct {v2, v0}, LO3/r;-><init>(LO3/e;)V

    move-object v1, v2

    :cond_8
    :goto_1
    return-object v1
.end method

.method public final r(LO3/r;)LO3/r;
    .locals 8

    const-string v0, "other"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, LO3/r;->k()LO3/r;

    move-result-object v0

    invoke-virtual {p1}, LO3/r;->k()LO3/r;

    move-result-object v1

    invoke-static {v0, v1}, Lv3/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const-string v1, " and "

    if-eqz v0, :cond_6

    invoke-virtual {p0}, LO3/r;->l()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, LO3/r;->l()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v6, v7}, Lv3/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    if-ne v5, v3, :cond_1

    invoke-virtual {p0}, LO3/r;->f()LO3/e;

    move-result-object v3

    invoke-virtual {v3}, LO3/e;->C()I

    move-result v3

    invoke-virtual {p1}, LO3/r;->f()LO3/e;

    move-result-object v6

    invoke-virtual {v6}, LO3/e;->C()I

    move-result v6

    if-ne v3, v6, :cond_1

    sget-object p1, LO3/r;->f:LO3/r$a;

    const-string v0, "."

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {p1, v0, v4, v2, v1}, LO3/r$a;->e(LO3/r$a;Ljava/lang/String;ZILjava/lang/Object;)LO3/r;

    move-result-object p1

    goto :goto_3

    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {v2, v5, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v3

    invoke-static {}, LP3/c;->c()LO3/e;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    const/4 v6, -0x1

    if-ne v3, v6, :cond_5

    new-instance v1, LO3/b;

    invoke-direct {v1}, LO3/b;-><init>()V

    invoke-static {p1}, LP3/c;->f(LO3/r;)LO3/e;

    move-result-object p1

    if-nez p1, :cond_2

    invoke-static {p0}, LP3/c;->f(LO3/r;)LO3/e;

    move-result-object p1

    if-nez p1, :cond_2

    sget-object p1, LO3/r;->g:Ljava/lang/String;

    invoke-static {p1}, LP3/c;->i(Ljava/lang/String;)LO3/e;

    move-result-object p1

    :cond_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    move v3, v5

    :goto_1
    if-ge v3, v2, :cond_3

    invoke-static {}, LP3/c;->c()LO3/e;

    move-result-object v6

    invoke-virtual {v1, v6}, LO3/b;->M(LO3/e;)LO3/b;

    invoke-virtual {v1, p1}, LO3/b;->M(LO3/e;)LO3/b;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    :goto_2
    if-ge v5, v2, :cond_4

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LO3/e;

    invoke-virtual {v1, v3}, LO3/b;->M(LO3/e;)LO3/b;

    invoke-virtual {v1, p1}, LO3/b;->M(LO3/e;)LO3/b;

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_4
    invoke-static {v1, v4}, LP3/c;->q(LO3/b;Z)LO3/r;

    move-result-object p1

    :goto_3
    return-object p1

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Impossible relative path to resolve: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Paths of different roots cannot be relative to each other: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final s(LO3/r;Z)LO3/r;
    .locals 1

    const-string v0, "child"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1, p2}, LP3/c;->j(LO3/r;LO3/r;Z)LO3/r;

    move-result-object p1

    return-object p1
.end method

.method public final t(Ljava/lang/String;)LO3/r;
    .locals 1

    const-string v0, "child"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, LO3/b;

    invoke-direct {v0}, LO3/b;-><init>()V

    invoke-virtual {v0, p1}, LO3/b;->Q(Ljava/lang/String;)LO3/b;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, LP3/c;->q(LO3/b;Z)LO3/r;

    move-result-object p1

    invoke-static {p0, p1, v0}, LP3/c;->j(LO3/r;LO3/r;Z)LO3/r;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, LO3/r;->f()LO3/e;

    move-result-object v0

    invoke-virtual {v0}, LO3/e;->G()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final u()Ljava/io/File;
    .locals 2

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, LO3/r;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public final v()Ljava/nio/file/Path;
    .locals 2

    invoke-virtual {p0}, LO3/r;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    const-string v1, "get(toString())"

    invoke-static {v0, v1}, Lv3/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final w()Ljava/lang/Character;
    .locals 5

    invoke-virtual {p0}, LO3/r;->f()LO3/e;

    move-result-object v0

    invoke-static {}, LP3/c;->e()LO3/e;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, LO3/e;->s(LO3/e;LO3/e;IILjava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, LO3/r;->f()LO3/e;

    move-result-object v0

    invoke-virtual {v0}, LO3/e;->C()I

    move-result v0

    if-ge v0, v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, LO3/r;->f()LO3/e;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, LO3/e;->k(I)B

    move-result v0

    const/16 v1, 0x3a

    if-eq v0, v1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, LO3/r;->f()LO3/e;

    move-result-object v0

    invoke-virtual {v0, v2}, LO3/e;->k(I)B

    move-result v0

    int-to-char v0, v0

    const/16 v1, 0x61

    if-gt v1, v0, :cond_3

    const/16 v1, 0x7b

    if-ge v0, v1, :cond_3

    goto :goto_0

    :cond_3
    const/16 v1, 0x41

    if-gt v1, v0, :cond_4

    const/16 v1, 0x5b

    if-ge v0, v1, :cond_4

    :goto_0
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    :cond_4
    :goto_1
    return-object v4
.end method
