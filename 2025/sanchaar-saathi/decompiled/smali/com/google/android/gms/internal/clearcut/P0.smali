.class public final Lcom/google/android/gms/internal/clearcut/P0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public A:I

.field public B:I

.field public C:Ljava/lang/reflect/Field;

.field public D:Ljava/lang/Object;

.field public E:Ljava/lang/Object;

.field public F:Ljava/lang/Object;

.field public final a:Lcom/google/android/gms/internal/clearcut/Q0;

.field public final b:[Ljava/lang/Object;

.field public c:Ljava/lang/Class;

.field public final d:I

.field public final e:I

.field public final f:I

.field public final g:I

.field public final h:I

.field public final i:I

.field public final j:I

.field public final k:I

.field public final l:I

.field public final m:I

.field public final n:[I

.field public o:I

.field public p:I

.field public q:I

.field public r:I

.field public s:I

.field public t:I

.field public u:I

.field public v:I

.field public w:I

.field public x:I

.field public y:I

.field public z:I


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7fffffff

    iput v0, p0, Lcom/google/android/gms/internal/clearcut/P0;->q:I

    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/google/android/gms/internal/clearcut/P0;->r:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/clearcut/P0;->s:I

    iput v0, p0, Lcom/google/android/gms/internal/clearcut/P0;->t:I

    iput v0, p0, Lcom/google/android/gms/internal/clearcut/P0;->u:I

    iput v0, p0, Lcom/google/android/gms/internal/clearcut/P0;->v:I

    iput v0, p0, Lcom/google/android/gms/internal/clearcut/P0;->w:I

    iput-object p1, p0, Lcom/google/android/gms/internal/clearcut/P0;->c:Ljava/lang/Class;

    new-instance p1, Lcom/google/android/gms/internal/clearcut/Q0;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/clearcut/Q0;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/clearcut/P0;->a:Lcom/google/android/gms/internal/clearcut/Q0;

    iput-object p3, p0, Lcom/google/android/gms/internal/clearcut/P0;->b:[Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/clearcut/Q0;->b()I

    move-result p2

    iput p2, p0, Lcom/google/android/gms/internal/clearcut/P0;->d:I

    invoke-virtual {p1}, Lcom/google/android/gms/internal/clearcut/Q0;->b()I

    move-result p2

    iput p2, p0, Lcom/google/android/gms/internal/clearcut/P0;->e:I

    const/4 p3, 0x0

    if-nez p2, :cond_0

    iput v0, p0, Lcom/google/android/gms/internal/clearcut/P0;->f:I

    iput v0, p0, Lcom/google/android/gms/internal/clearcut/P0;->g:I

    iput v0, p0, Lcom/google/android/gms/internal/clearcut/P0;->h:I

    iput v0, p0, Lcom/google/android/gms/internal/clearcut/P0;->i:I

    iput v0, p0, Lcom/google/android/gms/internal/clearcut/P0;->j:I

    iput v0, p0, Lcom/google/android/gms/internal/clearcut/P0;->l:I

    iput v0, p0, Lcom/google/android/gms/internal/clearcut/P0;->k:I

    iput v0, p0, Lcom/google/android/gms/internal/clearcut/P0;->m:I

    iput-object p3, p0, Lcom/google/android/gms/internal/clearcut/P0;->n:[I

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/clearcut/Q0;->b()I

    move-result p2

    iput p2, p0, Lcom/google/android/gms/internal/clearcut/P0;->f:I

    invoke-virtual {p1}, Lcom/google/android/gms/internal/clearcut/Q0;->b()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/clearcut/P0;->g:I

    invoke-virtual {p1}, Lcom/google/android/gms/internal/clearcut/Q0;->b()I

    move-result v1

    iput v1, p0, Lcom/google/android/gms/internal/clearcut/P0;->h:I

    invoke-virtual {p1}, Lcom/google/android/gms/internal/clearcut/Q0;->b()I

    move-result v1

    iput v1, p0, Lcom/google/android/gms/internal/clearcut/P0;->i:I

    invoke-virtual {p1}, Lcom/google/android/gms/internal/clearcut/Q0;->b()I

    move-result v1

    iput v1, p0, Lcom/google/android/gms/internal/clearcut/P0;->l:I

    invoke-virtual {p1}, Lcom/google/android/gms/internal/clearcut/Q0;->b()I

    move-result v1

    iput v1, p0, Lcom/google/android/gms/internal/clearcut/P0;->k:I

    invoke-virtual {p1}, Lcom/google/android/gms/internal/clearcut/Q0;->b()I

    move-result v1

    iput v1, p0, Lcom/google/android/gms/internal/clearcut/P0;->j:I

    invoke-virtual {p1}, Lcom/google/android/gms/internal/clearcut/Q0;->b()I

    move-result v1

    iput v1, p0, Lcom/google/android/gms/internal/clearcut/P0;->m:I

    invoke-virtual {p1}, Lcom/google/android/gms/internal/clearcut/Q0;->b()I

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    new-array p3, p1, [I

    :goto_0
    iput-object p3, p0, Lcom/google/android/gms/internal/clearcut/P0;->n:[I

    shl-int/lit8 p1, p2, 0x1

    add-int/2addr p1, v0

    iput p1, p0, Lcom/google/android/gms/internal/clearcut/P0;->o:I

    return-void
.end method

.method public static synthetic A(Lcom/google/android/gms/internal/clearcut/P0;)I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/clearcut/P0;->k:I

    return p0
.end method

.method public static synthetic b(Lcom/google/android/gms/internal/clearcut/P0;)I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/clearcut/P0;->d:I

    return p0
.end method

.method public static c(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 5

    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x28

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Field "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " for "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " not found. Known fields are "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static synthetic d(Lcom/google/android/gms/internal/clearcut/P0;)I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/clearcut/P0;->h:I

    return p0
.end method

.method public static synthetic e(Lcom/google/android/gms/internal/clearcut/P0;)I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/clearcut/P0;->i:I

    return p0
.end method

.method public static synthetic j(Lcom/google/android/gms/internal/clearcut/P0;)I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/clearcut/P0;->e:I

    return p0
.end method

.method public static synthetic w(Lcom/google/android/gms/internal/clearcut/P0;)I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/clearcut/P0;->j:I

    return p0
.end method

.method public static synthetic x(Lcom/google/android/gms/internal/clearcut/P0;)I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/clearcut/P0;->m:I

    return p0
.end method

.method public static synthetic y(Lcom/google/android/gms/internal/clearcut/P0;)[I
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/clearcut/P0;->n:[I

    return-object p0
.end method

.method public static synthetic z(Lcom/google/android/gms/internal/clearcut/P0;)I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/clearcut/P0;->l:I

    return p0
.end method


# virtual methods
.method public final a()Z
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/P0;->a:Lcom/google/android/gms/internal/clearcut/Q0;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/clearcut/Q0;->a()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/P0;->a:Lcom/google/android/gms/internal/clearcut/Q0;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/clearcut/Q0;->b()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/clearcut/P0;->x:I

    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/P0;->a:Lcom/google/android/gms/internal/clearcut/Q0;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/clearcut/Q0;->b()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/clearcut/P0;->y:I

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lcom/google/android/gms/internal/clearcut/P0;->z:I

    iget v1, p0, Lcom/google/android/gms/internal/clearcut/P0;->x:I

    iget v2, p0, Lcom/google/android/gms/internal/clearcut/P0;->q:I

    if-ge v1, v2, :cond_1

    iput v1, p0, Lcom/google/android/gms/internal/clearcut/P0;->q:I

    :cond_1
    iget v2, p0, Lcom/google/android/gms/internal/clearcut/P0;->r:I

    if-le v1, v2, :cond_2

    iput v1, p0, Lcom/google/android/gms/internal/clearcut/P0;->r:I

    :cond_2
    sget-object v1, Lcom/google/android/gms/internal/clearcut/W;->h0:Lcom/google/android/gms/internal/clearcut/W;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/clearcut/W;->b()I

    move-result v2

    const/4 v3, 0x1

    if-ne v0, v2, :cond_3

    iget v0, p0, Lcom/google/android/gms/internal/clearcut/P0;->s:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/google/android/gms/internal/clearcut/P0;->s:I

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/google/android/gms/internal/clearcut/P0;->z:I

    sget-object v2, Lcom/google/android/gms/internal/clearcut/W;->B:Lcom/google/android/gms/internal/clearcut/W;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/clearcut/W;->b()I

    move-result v2

    if-lt v0, v2, :cond_4

    iget v0, p0, Lcom/google/android/gms/internal/clearcut/P0;->z:I

    sget-object v2, Lcom/google/android/gms/internal/clearcut/W;->g0:Lcom/google/android/gms/internal/clearcut/W;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/clearcut/W;->b()I

    move-result v2

    if-gt v0, v2, :cond_4

    iget v0, p0, Lcom/google/android/gms/internal/clearcut/P0;->t:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/google/android/gms/internal/clearcut/P0;->t:I

    :cond_4
    :goto_0
    iget v0, p0, Lcom/google/android/gms/internal/clearcut/P0;->w:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/google/android/gms/internal/clearcut/P0;->w:I

    iget v2, p0, Lcom/google/android/gms/internal/clearcut/P0;->q:I

    iget v4, p0, Lcom/google/android/gms/internal/clearcut/P0;->x:I

    invoke-static {v2, v4, v0}, Lcom/google/android/gms/internal/clearcut/T0;->s(III)Z

    move-result v0

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/google/android/gms/internal/clearcut/P0;->x:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/google/android/gms/internal/clearcut/P0;->v:I

    iget v2, p0, Lcom/google/android/gms/internal/clearcut/P0;->q:I

    sub-int/2addr v0, v2

    :goto_1
    iput v0, p0, Lcom/google/android/gms/internal/clearcut/P0;->u:I

    goto :goto_2

    :cond_5
    iget v0, p0, Lcom/google/android/gms/internal/clearcut/P0;->u:I

    add-int/2addr v0, v3

    goto :goto_1

    :goto_2
    iget v0, p0, Lcom/google/android/gms/internal/clearcut/P0;->y:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/P0;->n:[I

    iget v2, p0, Lcom/google/android/gms/internal/clearcut/P0;->p:I

    add-int/lit8 v4, v2, 0x1

    iput v4, p0, Lcom/google/android/gms/internal/clearcut/P0;->p:I

    iget v4, p0, Lcom/google/android/gms/internal/clearcut/P0;->x:I

    aput v4, v0, v2

    :cond_6
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/clearcut/P0;->D:Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/android/gms/internal/clearcut/P0;->E:Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/android/gms/internal/clearcut/P0;->F:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/clearcut/P0;->k()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/P0;->a:Lcom/google/android/gms/internal/clearcut/Q0;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/clearcut/Q0;->b()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/clearcut/P0;->A:I

    iget v0, p0, Lcom/google/android/gms/internal/clearcut/P0;->z:I

    sget-object v1, Lcom/google/android/gms/internal/clearcut/W;->s:Lcom/google/android/gms/internal/clearcut/W;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/clearcut/W;->b()I

    move-result v1

    add-int/lit8 v1, v1, 0x33

    if-eq v0, v1, :cond_8

    iget v0, p0, Lcom/google/android/gms/internal/clearcut/P0;->z:I

    sget-object v1, Lcom/google/android/gms/internal/clearcut/W;->A:Lcom/google/android/gms/internal/clearcut/W;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/clearcut/W;->b()I

    move-result v1

    add-int/lit8 v1, v1, 0x33

    if-ne v0, v1, :cond_7

    goto :goto_4

    :cond_7
    iget v0, p0, Lcom/google/android/gms/internal/clearcut/P0;->z:I

    sget-object v1, Lcom/google/android/gms/internal/clearcut/W;->v:Lcom/google/android/gms/internal/clearcut/W;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/clearcut/W;->b()I

    move-result v1

    add-int/lit8 v1, v1, 0x33

    if-ne v0, v1, :cond_10

    invoke-virtual {p0}, Lcom/google/android/gms/internal/clearcut/P0;->i()Z

    move-result v0

    if-eqz v0, :cond_10

    :goto_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/clearcut/P0;->f()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/clearcut/P0;->E:Ljava/lang/Object;

    goto/16 :goto_8

    :cond_8
    :goto_4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/clearcut/P0;->f()Ljava/lang/Object;

    move-result-object v0

    :goto_5
    iput-object v0, p0, Lcom/google/android/gms/internal/clearcut/P0;->D:Ljava/lang/Object;

    goto/16 :goto_8

    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/P0;->c:Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/clearcut/P0;->f()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/clearcut/P0;->c(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/clearcut/P0;->C:Ljava/lang/reflect/Field;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/clearcut/P0;->o()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/P0;->a:Lcom/google/android/gms/internal/clearcut/Q0;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/clearcut/Q0;->b()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/clearcut/P0;->B:I

    :cond_a
    iget v0, p0, Lcom/google/android/gms/internal/clearcut/P0;->z:I

    sget-object v2, Lcom/google/android/gms/internal/clearcut/W;->s:Lcom/google/android/gms/internal/clearcut/W;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/clearcut/W;->b()I

    move-result v2

    if-eq v0, v2, :cond_f

    iget v0, p0, Lcom/google/android/gms/internal/clearcut/P0;->z:I

    sget-object v2, Lcom/google/android/gms/internal/clearcut/W;->A:Lcom/google/android/gms/internal/clearcut/W;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/clearcut/W;->b()I

    move-result v2

    if-ne v0, v2, :cond_b

    goto :goto_7

    :cond_b
    iget v0, p0, Lcom/google/android/gms/internal/clearcut/P0;->z:I

    sget-object v2, Lcom/google/android/gms/internal/clearcut/W;->K:Lcom/google/android/gms/internal/clearcut/W;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/clearcut/W;->b()I

    move-result v2

    if-eq v0, v2, :cond_8

    iget v0, p0, Lcom/google/android/gms/internal/clearcut/P0;->z:I

    sget-object v2, Lcom/google/android/gms/internal/clearcut/W;->g0:Lcom/google/android/gms/internal/clearcut/W;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/clearcut/W;->b()I

    move-result v2

    if-ne v0, v2, :cond_c

    goto :goto_4

    :cond_c
    iget v0, p0, Lcom/google/android/gms/internal/clearcut/P0;->z:I

    sget-object v2, Lcom/google/android/gms/internal/clearcut/W;->v:Lcom/google/android/gms/internal/clearcut/W;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/clearcut/W;->b()I

    move-result v2

    if-eq v0, v2, :cond_e

    iget v0, p0, Lcom/google/android/gms/internal/clearcut/P0;->z:I

    sget-object v2, Lcom/google/android/gms/internal/clearcut/W;->N:Lcom/google/android/gms/internal/clearcut/W;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/clearcut/W;->b()I

    move-result v2

    if-eq v0, v2, :cond_e

    iget v0, p0, Lcom/google/android/gms/internal/clearcut/P0;->z:I

    sget-object v2, Lcom/google/android/gms/internal/clearcut/W;->b0:Lcom/google/android/gms/internal/clearcut/W;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/clearcut/W;->b()I

    move-result v2

    if-ne v0, v2, :cond_d

    goto :goto_6

    :cond_d
    iget v0, p0, Lcom/google/android/gms/internal/clearcut/P0;->z:I

    invoke-virtual {v1}, Lcom/google/android/gms/internal/clearcut/W;->b()I

    move-result v1

    if-ne v0, v1, :cond_10

    invoke-virtual {p0}, Lcom/google/android/gms/internal/clearcut/P0;->f()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/clearcut/P0;->F:Ljava/lang/Object;

    iget v0, p0, Lcom/google/android/gms/internal/clearcut/P0;->y:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_10

    goto/16 :goto_3

    :cond_e
    :goto_6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/clearcut/P0;->i()Z

    move-result v0

    if-eqz v0, :cond_10

    goto/16 :goto_3

    :cond_f
    :goto_7
    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/P0;->C:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    goto/16 :goto_5

    :cond_10
    :goto_8
    return v3
.end method

.method public final f()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/P0;->b:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/android/gms/internal/clearcut/P0;->o:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/clearcut/P0;->o:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public final g()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/clearcut/P0;->x:I

    return v0
.end method

.method public final h()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/clearcut/P0;->z:I

    return v0
.end method

.method public final i()Z
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/clearcut/P0;->d:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final k()Z
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/clearcut/P0;->z:I

    sget-object v1, Lcom/google/android/gms/internal/clearcut/W;->h0:Lcom/google/android/gms/internal/clearcut/W;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/clearcut/W;->b()I

    move-result v1

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final l()Ljava/lang/reflect/Field;
    .locals 3

    iget v0, p0, Lcom/google/android/gms/internal/clearcut/P0;->A:I

    shl-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/P0;->b:[Ljava/lang/Object;

    aget-object v1, v1, v0

    instance-of v2, v1, Ljava/lang/reflect/Field;

    if-eqz v2, :cond_0

    check-cast v1, Ljava/lang/reflect/Field;

    return-object v1

    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/internal/clearcut/P0;->c:Ljava/lang/Class;

    check-cast v1, Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/clearcut/P0;->c(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/clearcut/P0;->b:[Ljava/lang/Object;

    aput-object v1, v2, v0

    return-object v1
.end method

.method public final m()Ljava/lang/reflect/Field;
    .locals 3

    iget v0, p0, Lcom/google/android/gms/internal/clearcut/P0;->A:I

    shl-int/lit8 v0, v0, 0x1

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/P0;->b:[Ljava/lang/Object;

    aget-object v1, v1, v0

    instance-of v2, v1, Ljava/lang/reflect/Field;

    if-eqz v2, :cond_0

    check-cast v1, Ljava/lang/reflect/Field;

    return-object v1

    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/internal/clearcut/P0;->c:Ljava/lang/Class;

    check-cast v1, Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/clearcut/P0;->c(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/clearcut/P0;->b:[Ljava/lang/Object;

    aput-object v1, v2, v0

    return-object v1
.end method

.method public final n()Ljava/lang/reflect/Field;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/P0;->C:Ljava/lang/reflect/Field;

    return-object v0
.end method

.method public final o()Z
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/clearcut/P0;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/clearcut/P0;->z:I

    sget-object v1, Lcom/google/android/gms/internal/clearcut/W;->A:Lcom/google/android/gms/internal/clearcut/W;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/clearcut/W;->b()I

    move-result v1

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final p()Ljava/lang/reflect/Field;
    .locals 3

    iget v0, p0, Lcom/google/android/gms/internal/clearcut/P0;->f:I

    shl-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/google/android/gms/internal/clearcut/P0;->B:I

    div-int/lit8 v1, v1, 0x20

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/P0;->b:[Ljava/lang/Object;

    aget-object v1, v1, v0

    instance-of v2, v1, Ljava/lang/reflect/Field;

    if-eqz v2, :cond_0

    check-cast v1, Ljava/lang/reflect/Field;

    return-object v1

    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/internal/clearcut/P0;->c:Ljava/lang/Class;

    check-cast v1, Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/clearcut/P0;->c(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/clearcut/P0;->b:[Ljava/lang/Object;

    aput-object v1, v2, v0

    return-object v1
.end method

.method public final q()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/clearcut/P0;->B:I

    rem-int/lit8 v0, v0, 0x20

    return v0
.end method

.method public final r()Z
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/clearcut/P0;->y:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final s()Z
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/clearcut/P0;->y:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final t()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/P0;->D:Ljava/lang/Object;

    return-object v0
.end method

.method public final u()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/P0;->E:Ljava/lang/Object;

    return-object v0
.end method

.method public final v()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/P0;->F:Ljava/lang/Object;

    return-object v0
.end method
