.class public final LH0/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LH0/k$a;
    }
.end annotation


# static fields
.field public static final j:LH0/k$a;

.field public static final k:LH0/k;

.field public static final l:LH0/k;

.field public static final m:LH0/k;

.field public static final n:LH0/k;


# instance fields
.field public final e:I

.field public final f:I

.field public final g:I

.field public final h:Ljava/lang/String;

.field public final i:Lh3/d;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, LH0/k$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LH0/k$a;-><init>(Lv3/g;)V

    sput-object v0, LH0/k;->j:LH0/k$a;

    new-instance v0, LH0/k;

    const/4 v1, 0x0

    const-string v2, ""

    invoke-direct {v0, v1, v1, v1, v2}, LH0/k;-><init>(IIILjava/lang/String;)V

    sput-object v0, LH0/k;->k:LH0/k;

    new-instance v0, LH0/k;

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v1, v2}, LH0/k;-><init>(IIILjava/lang/String;)V

    sput-object v0, LH0/k;->l:LH0/k;

    new-instance v0, LH0/k;

    invoke-direct {v0, v3, v1, v1, v2}, LH0/k;-><init>(IIILjava/lang/String;)V

    sput-object v0, LH0/k;->m:LH0/k;

    sput-object v0, LH0/k;->n:LH0/k;

    return-void
.end method

.method public constructor <init>(IIILjava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, LH0/k;->e:I

    .line 4
    iput p2, p0, LH0/k;->f:I

    .line 5
    iput p3, p0, LH0/k;->g:I

    .line 6
    iput-object p4, p0, LH0/k;->h:Ljava/lang/String;

    .line 7
    new-instance p1, LH0/k$b;

    invoke-direct {p1, p0}, LH0/k$b;-><init>(LH0/k;)V

    invoke-static {p1}, Lh3/e;->a(Lu3/a;)Lh3/d;

    move-result-object p1

    iput-object p1, p0, LH0/k;->i:Lh3/d;

    return-void
.end method

.method public synthetic constructor <init>(IIILjava/lang/String;Lv3/g;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, LH0/k;-><init>(IIILjava/lang/String;)V

    return-void
.end method

.method public static final synthetic b()LH0/k;
    .locals 1

    sget-object v0, LH0/k;->l:LH0/k;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, LH0/k;

    invoke-virtual {p0, p1}, LH0/k;->f(LH0/k;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, LH0/k;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget v0, p0, LH0/k;->e:I

    check-cast p1, LH0/k;

    iget v2, p1, LH0/k;->e:I

    if-ne v0, v2, :cond_1

    iget v0, p0, LH0/k;->f:I

    iget v2, p1, LH0/k;->f:I

    if-ne v0, v2, :cond_1

    iget v0, p0, LH0/k;->g:I

    iget p1, p1, LH0/k;->g:I

    if-ne v0, p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public f(LH0/k;)I
    .locals 1

    const-string v0, "other"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, LH0/k;->k()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1}, LH0/k;->k()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 2

    const/16 v0, 0x20f

    iget v1, p0, LH0/k;->e:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, LH0/k;->f:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, LH0/k;->g:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final k()Ljava/math/BigInteger;
    .locals 2

    iget-object v0, p0, LH0/k;->i:Lh3/d;

    invoke-interface {v0}, Lh3/d;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "<get-bigInteger>(...)"

    invoke-static {v0, v1}, Lv3/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/math/BigInteger;

    return-object v0
.end method

.method public final l()I
    .locals 1

    iget v0, p0, LH0/k;->e:I

    return v0
.end method

.method public final m()I
    .locals 1

    iget v0, p0, LH0/k;->f:I

    return v0
.end method

.method public final n()I
    .locals 1

    iget v0, p0, LH0/k;->g:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, LH0/k;->h:Ljava/lang/String;

    invoke-static {v0}, LC3/p;->I(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, LH0/k;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, LH0/k;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v3, p0, LH0/k;->f:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v2, p0, LH0/k;->g:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
