.class public final Lcom/google/android/gms/internal/vision/x1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/vision/K1;


# static fields
.field public static final r:[I

.field public static final s:Lsun/misc/Unsafe;


# instance fields
.field public final a:[I

.field public final b:[Ljava/lang/Object;

.field public final c:I

.field public final d:I

.field public final e:Lcom/google/android/gms/internal/vision/t1;

.field public final f:Z

.field public final g:Z

.field public final h:Z

.field public final i:Z

.field public final j:[I

.field public final k:I

.field public final l:I

.field public final m:Lcom/google/android/gms/internal/vision/A1;

.field public final n:Lcom/google/android/gms/internal/vision/c1;

.field public final o:Lcom/google/android/gms/internal/vision/a2;

.field public final p:Lcom/google/android/gms/internal/vision/C0;

.field public final q:Lcom/google/android/gms/internal/vision/q1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/android/gms/internal/vision/x1;->r:[I

    invoke-static {}, Lcom/google/android/gms/internal/vision/h2;->t()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/vision/x1;->s:Lsun/misc/Unsafe;

    return-void
.end method

.method public constructor <init>([I[Ljava/lang/Object;IILcom/google/android/gms/internal/vision/t1;ZZ[IIILcom/google/android/gms/internal/vision/A1;Lcom/google/android/gms/internal/vision/c1;Lcom/google/android/gms/internal/vision/a2;Lcom/google/android/gms/internal/vision/C0;Lcom/google/android/gms/internal/vision/q1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/vision/x1;->a:[I

    iput-object p2, p0, Lcom/google/android/gms/internal/vision/x1;->b:[Ljava/lang/Object;

    iput p3, p0, Lcom/google/android/gms/internal/vision/x1;->c:I

    iput p4, p0, Lcom/google/android/gms/internal/vision/x1;->d:I

    instance-of p1, p5, Lcom/google/android/gms/internal/vision/N0;

    iput-boolean p1, p0, Lcom/google/android/gms/internal/vision/x1;->g:Z

    iput-boolean p6, p0, Lcom/google/android/gms/internal/vision/x1;->h:Z

    const/4 p1, 0x0

    if-eqz p14, :cond_0

    invoke-virtual {p14, p5}, Lcom/google/android/gms/internal/vision/C0;->d(Lcom/google/android/gms/internal/vision/t1;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    move p2, p1

    :goto_0
    iput-boolean p2, p0, Lcom/google/android/gms/internal/vision/x1;->f:Z

    iput-boolean p1, p0, Lcom/google/android/gms/internal/vision/x1;->i:Z

    iput-object p8, p0, Lcom/google/android/gms/internal/vision/x1;->j:[I

    iput p9, p0, Lcom/google/android/gms/internal/vision/x1;->k:I

    iput p10, p0, Lcom/google/android/gms/internal/vision/x1;->l:I

    iput-object p11, p0, Lcom/google/android/gms/internal/vision/x1;->m:Lcom/google/android/gms/internal/vision/A1;

    iput-object p12, p0, Lcom/google/android/gms/internal/vision/x1;->n:Lcom/google/android/gms/internal/vision/c1;

    iput-object p13, p0, Lcom/google/android/gms/internal/vision/x1;->o:Lcom/google/android/gms/internal/vision/a2;

    iput-object p14, p0, Lcom/google/android/gms/internal/vision/x1;->p:Lcom/google/android/gms/internal/vision/C0;

    iput-object p5, p0, Lcom/google/android/gms/internal/vision/x1;->e:Lcom/google/android/gms/internal/vision/t1;

    iput-object p15, p0, Lcom/google/android/gms/internal/vision/x1;->q:Lcom/google/android/gms/internal/vision/q1;

    return-void
.end method

.method public static C(Ljava/lang/Object;ILcom/google/android/gms/internal/vision/K1;)Z
    .locals 2

    const v0, 0xfffff

    and-int/2addr p1, v0

    int-to-long v0, p1

    invoke-static {p0, v0, v1}, Lcom/google/android/gms/internal/vision/h2;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p2, p0}, Lcom/google/android/gms/internal/vision/K1;->d(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static D(Ljava/lang/Object;J)D
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/vision/h2;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    return-wide p0
.end method

.method public static K(Ljava/lang/Object;J)F
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/vision/h2;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    return p0
.end method

.method public static O(Ljava/lang/Object;J)I
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/vision/h2;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public static Q(Ljava/lang/Object;J)J
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/vision/h2;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0
.end method

.method public static R(Ljava/lang/Object;)Lcom/google/android/gms/internal/vision/d2;
    .locals 2

    check-cast p0, Lcom/google/android/gms/internal/vision/N0;

    iget-object v0, p0, Lcom/google/android/gms/internal/vision/N0;->zzb:Lcom/google/android/gms/internal/vision/d2;

    invoke-static {}, Lcom/google/android/gms/internal/vision/d2;->a()Lcom/google/android/gms/internal/vision/d2;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/vision/d2;->g()Lcom/google/android/gms/internal/vision/d2;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/vision/N0;->zzb:Lcom/google/android/gms/internal/vision/d2;

    :cond_0
    return-object v0
.end method

.method public static S(Ljava/lang/Object;J)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/vision/h2;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static k(Lcom/google/android/gms/internal/vision/a2;Ljava/lang/Object;)I
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/vision/a2;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/vision/a2;->l(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public static p(Ljava/lang/Class;Lcom/google/android/gms/internal/vision/r1;Lcom/google/android/gms/internal/vision/A1;Lcom/google/android/gms/internal/vision/c1;Lcom/google/android/gms/internal/vision/a2;Lcom/google/android/gms/internal/vision/C0;Lcom/google/android/gms/internal/vision/q1;)Lcom/google/android/gms/internal/vision/x1;
    .locals 31

    move-object/from16 v0, p1

    instance-of v1, v0, Lcom/google/android/gms/internal/vision/I1;

    if-eqz v1, :cond_34

    check-cast v0, Lcom/google/android/gms/internal/vision/I1;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/I1;->a()I

    move-result v1

    sget v2, Lcom/google/android/gms/internal/vision/G1;->b:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v2, :cond_0

    move v11, v4

    goto :goto_0

    :cond_0
    move v11, v3

    :goto_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/I1;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const v6, 0xd800

    if-lt v5, v6, :cond_1

    move v5, v4

    :goto_1
    add-int/lit8 v7, v5, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-lt v5, v6, :cond_2

    move v5, v7

    goto :goto_1

    :cond_1
    move v7, v4

    :cond_2
    add-int/lit8 v5, v7, 0x1

    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v6, :cond_4

    and-int/lit16 v7, v7, 0x1fff

    const/16 v9, 0xd

    :goto_2
    add-int/lit8 v10, v5, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-lt v5, v6, :cond_3

    and-int/lit16 v5, v5, 0x1fff

    shl-int/2addr v5, v9

    or-int/2addr v7, v5

    add-int/lit8 v9, v9, 0xd

    move v5, v10

    goto :goto_2

    :cond_3
    shl-int/2addr v5, v9

    or-int/2addr v7, v5

    move v5, v10

    :cond_4
    if-nez v7, :cond_5

    sget-object v7, Lcom/google/android/gms/internal/vision/x1;->r:[I

    move v9, v3

    move v10, v9

    move v12, v10

    move v13, v12

    move v15, v13

    move-object v14, v7

    move v7, v15

    goto/16 :goto_b

    :cond_5
    add-int/lit8 v7, v5, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-lt v5, v6, :cond_7

    and-int/lit16 v5, v5, 0x1fff

    const/16 v9, 0xd

    :goto_3
    add-int/lit8 v10, v7, 0x1

    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v6, :cond_6

    and-int/lit16 v7, v7, 0x1fff

    shl-int/2addr v7, v9

    or-int/2addr v5, v7

    add-int/lit8 v9, v9, 0xd

    move v7, v10

    goto :goto_3

    :cond_6
    shl-int/2addr v7, v9

    or-int/2addr v5, v7

    move v7, v10

    :cond_7
    add-int/lit8 v9, v7, 0x1

    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v6, :cond_9

    and-int/lit16 v7, v7, 0x1fff

    const/16 v10, 0xd

    :goto_4
    add-int/lit8 v12, v9, 0x1

    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-lt v9, v6, :cond_8

    and-int/lit16 v9, v9, 0x1fff

    shl-int/2addr v9, v10

    or-int/2addr v7, v9

    add-int/lit8 v10, v10, 0xd

    move v9, v12

    goto :goto_4

    :cond_8
    shl-int/2addr v9, v10

    or-int/2addr v7, v9

    move v9, v12

    :cond_9
    add-int/lit8 v10, v9, 0x1

    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-lt v9, v6, :cond_b

    and-int/lit16 v9, v9, 0x1fff

    const/16 v12, 0xd

    :goto_5
    add-int/lit8 v13, v10, 0x1

    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-lt v10, v6, :cond_a

    and-int/lit16 v10, v10, 0x1fff

    shl-int/2addr v10, v12

    or-int/2addr v9, v10

    add-int/lit8 v12, v12, 0xd

    move v10, v13

    goto :goto_5

    :cond_a
    shl-int/2addr v10, v12

    or-int/2addr v9, v10

    move v10, v13

    :cond_b
    add-int/lit8 v12, v10, 0x1

    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-lt v10, v6, :cond_d

    and-int/lit16 v10, v10, 0x1fff

    const/16 v13, 0xd

    :goto_6
    add-int/lit8 v14, v12, 0x1

    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-lt v12, v6, :cond_c

    and-int/lit16 v12, v12, 0x1fff

    shl-int/2addr v12, v13

    or-int/2addr v10, v12

    add-int/lit8 v13, v13, 0xd

    move v12, v14

    goto :goto_6

    :cond_c
    shl-int/2addr v12, v13

    or-int/2addr v10, v12

    move v12, v14

    :cond_d
    add-int/lit8 v13, v12, 0x1

    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-lt v12, v6, :cond_f

    and-int/lit16 v12, v12, 0x1fff

    const/16 v14, 0xd

    :goto_7
    add-int/lit8 v15, v13, 0x1

    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-lt v13, v6, :cond_e

    and-int/lit16 v13, v13, 0x1fff

    shl-int/2addr v13, v14

    or-int/2addr v12, v13

    add-int/lit8 v14, v14, 0xd

    move v13, v15

    goto :goto_7

    :cond_e
    shl-int/2addr v13, v14

    or-int/2addr v12, v13

    move v13, v15

    :cond_f
    add-int/lit8 v14, v13, 0x1

    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-lt v13, v6, :cond_11

    and-int/lit16 v13, v13, 0x1fff

    const/16 v15, 0xd

    :goto_8
    add-int/lit8 v16, v14, 0x1

    invoke-virtual {v1, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-lt v14, v6, :cond_10

    and-int/lit16 v14, v14, 0x1fff

    shl-int/2addr v14, v15

    or-int/2addr v13, v14

    add-int/lit8 v15, v15, 0xd

    move/from16 v14, v16

    goto :goto_8

    :cond_10
    shl-int/2addr v14, v15

    or-int/2addr v13, v14

    move/from16 v14, v16

    :cond_11
    add-int/lit8 v15, v14, 0x1

    invoke-virtual {v1, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-lt v14, v6, :cond_13

    and-int/lit16 v14, v14, 0x1fff

    const/16 v16, 0xd

    :goto_9
    add-int/lit8 v17, v15, 0x1

    invoke-virtual {v1, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-lt v15, v6, :cond_12

    and-int/lit16 v15, v15, 0x1fff

    shl-int v15, v15, v16

    or-int/2addr v14, v15

    add-int/lit8 v16, v16, 0xd

    move/from16 v15, v17

    goto :goto_9

    :cond_12
    shl-int v15, v15, v16

    or-int/2addr v14, v15

    move/from16 v15, v17

    :cond_13
    add-int/lit8 v16, v15, 0x1

    invoke-virtual {v1, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-lt v15, v6, :cond_15

    and-int/lit16 v15, v15, 0x1fff

    move/from16 v3, v16

    const/16 v16, 0xd

    :goto_a
    add-int/lit8 v17, v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-lt v3, v6, :cond_14

    and-int/lit16 v3, v3, 0x1fff

    shl-int v3, v3, v16

    or-int/2addr v15, v3

    add-int/lit8 v16, v16, 0xd

    move/from16 v3, v17

    goto :goto_a

    :cond_14
    shl-int v3, v3, v16

    or-int/2addr v15, v3

    move/from16 v16, v17

    :cond_15
    add-int v3, v15, v13

    add-int/2addr v3, v14

    new-array v3, v3, [I

    shl-int/lit8 v14, v5, 0x1

    add-int/2addr v14, v7

    move v7, v14

    move-object v14, v3

    move v3, v5

    move/from16 v5, v16

    :goto_b
    sget-object v8, Lcom/google/android/gms/internal/vision/x1;->s:Lsun/misc/Unsafe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/I1;->e()[Ljava/lang/Object;

    move-result-object v16

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/I1;->b()Lcom/google/android/gms/internal/vision/t1;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    move/from16 v17, v5

    mul-int/lit8 v5, v12, 0x3

    new-array v5, v5, [I

    shl-int/2addr v12, v4

    new-array v12, v12, [Ljava/lang/Object;

    add-int v19, v15, v13

    move v13, v7

    move/from16 v21, v15

    move/from16 v7, v17

    move/from16 v22, v19

    const/16 v17, 0x0

    const/16 v20, 0x0

    :goto_c
    if-ge v7, v2, :cond_33

    add-int/lit8 v23, v7, 0x1

    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const v4, 0xd800

    if-lt v7, v4, :cond_17

    and-int/lit16 v7, v7, 0x1fff

    move/from16 v4, v23

    const/16 v23, 0xd

    :goto_d
    add-int/lit8 v25, v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    move/from16 v26, v2

    const v2, 0xd800

    if-lt v4, v2, :cond_16

    and-int/lit16 v2, v4, 0x1fff

    shl-int v2, v2, v23

    or-int/2addr v7, v2

    add-int/lit8 v23, v23, 0xd

    move/from16 v4, v25

    move/from16 v2, v26

    goto :goto_d

    :cond_16
    shl-int v2, v4, v23

    or-int/2addr v7, v2

    move/from16 v2, v25

    goto :goto_e

    :cond_17
    move/from16 v26, v2

    move/from16 v2, v23

    :goto_e
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    move/from16 v23, v4

    const v4, 0xd800

    if-lt v2, v4, :cond_19

    and-int/lit16 v2, v2, 0x1fff

    move/from16 v4, v23

    const/16 v23, 0xd

    :goto_f
    add-int/lit8 v25, v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    move/from16 v27, v15

    const v15, 0xd800

    if-lt v4, v15, :cond_18

    and-int/lit16 v4, v4, 0x1fff

    shl-int v4, v4, v23

    or-int/2addr v2, v4

    add-int/lit8 v23, v23, 0xd

    move/from16 v4, v25

    move/from16 v15, v27

    goto :goto_f

    :cond_18
    shl-int v4, v4, v23

    or-int/2addr v2, v4

    move/from16 v4, v25

    goto :goto_10

    :cond_19
    move/from16 v27, v15

    move/from16 v4, v23

    :goto_10
    and-int/lit16 v15, v2, 0xff

    move/from16 v23, v10

    and-int/lit16 v10, v2, 0x400

    if-eqz v10, :cond_1a

    add-int/lit8 v10, v17, 0x1

    aput v20, v14, v17

    move/from16 v17, v10

    :cond_1a
    const/16 v10, 0x33

    move/from16 v28, v9

    if-lt v15, v10, :cond_22

    add-int/lit8 v10, v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const v9, 0xd800

    if-lt v4, v9, :cond_1c

    and-int/lit16 v4, v4, 0x1fff

    const/16 v29, 0xd

    :goto_11
    add-int/lit8 v30, v10, 0x1

    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-lt v10, v9, :cond_1b

    and-int/lit16 v9, v10, 0x1fff

    shl-int v9, v9, v29

    or-int/2addr v4, v9

    add-int/lit8 v29, v29, 0xd

    move/from16 v10, v30

    const v9, 0xd800

    goto :goto_11

    :cond_1b
    shl-int v9, v10, v29

    or-int/2addr v4, v9

    move/from16 v10, v30

    :cond_1c
    add-int/lit8 v9, v15, -0x33

    move/from16 v29, v10

    const/16 v10, 0x9

    if-eq v9, v10, :cond_1f

    const/16 v10, 0x11

    if-ne v9, v10, :cond_1d

    goto :goto_12

    :cond_1d
    const/16 v10, 0xc

    if-ne v9, v10, :cond_1e

    if-nez v11, :cond_1e

    div-int/lit8 v9, v20, 0x3

    const/4 v10, 0x1

    shl-int/2addr v9, v10

    add-int/2addr v9, v10

    add-int/lit8 v10, v13, 0x1

    aget-object v13, v16, v13

    aput-object v13, v12, v9

    move v13, v10

    :cond_1e
    const/4 v10, 0x1

    goto :goto_13

    :cond_1f
    :goto_12
    div-int/lit8 v9, v20, 0x3

    const/4 v10, 0x1

    shl-int/2addr v9, v10

    add-int/2addr v9, v10

    add-int/lit8 v24, v13, 0x1

    aget-object v13, v16, v13

    aput-object v13, v12, v9

    move/from16 v13, v24

    :goto_13
    shl-int/2addr v4, v10

    aget-object v9, v16, v4

    instance-of v10, v9, Ljava/lang/reflect/Field;

    if-eqz v10, :cond_20

    check-cast v9, Ljava/lang/reflect/Field;

    goto :goto_14

    :cond_20
    check-cast v9, Ljava/lang/String;

    invoke-static {v6, v9}, Lcom/google/android/gms/internal/vision/x1;->t(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v9

    aput-object v9, v16, v4

    :goto_14
    invoke-virtual {v8, v9}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v9

    long-to-int v9, v9

    add-int/lit8 v4, v4, 0x1

    aget-object v10, v16, v4

    move/from16 v25, v9

    instance-of v9, v10, Ljava/lang/reflect/Field;

    if-eqz v9, :cond_21

    check-cast v10, Ljava/lang/reflect/Field;

    goto :goto_15

    :cond_21
    check-cast v10, Ljava/lang/String;

    invoke-static {v6, v10}, Lcom/google/android/gms/internal/vision/x1;->t(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v10

    aput-object v10, v16, v4

    :goto_15
    invoke-virtual {v8, v10}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v9

    long-to-int v4, v9

    move/from16 v18, v13

    move/from16 v9, v25

    move/from16 v25, v29

    move-object/from16 v29, v0

    move-object v13, v1

    move v0, v4

    const/4 v4, 0x0

    goto/16 :goto_22

    :cond_22
    add-int/lit8 v9, v13, 0x1

    aget-object v10, v16, v13

    check-cast v10, Ljava/lang/String;

    invoke-static {v6, v10}, Lcom/google/android/gms/internal/vision/x1;->t(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v10

    move-object/from16 v29, v0

    const/16 v0, 0x9

    if-eq v15, v0, :cond_23

    const/16 v0, 0x11

    if-ne v15, v0, :cond_24

    :cond_23
    const/16 v24, 0x1

    goto/16 :goto_1a

    :cond_24
    const/16 v0, 0x1b

    if-eq v15, v0, :cond_25

    const/16 v0, 0x31

    if-ne v15, v0, :cond_26

    :cond_25
    const/16 v24, 0x1

    goto :goto_19

    :cond_26
    const/16 v0, 0xc

    if-eq v15, v0, :cond_2a

    const/16 v0, 0x1e

    if-eq v15, v0, :cond_2a

    const/16 v0, 0x2c

    if-ne v15, v0, :cond_27

    goto :goto_17

    :cond_27
    const/16 v0, 0x32

    if-ne v15, v0, :cond_28

    add-int/lit8 v0, v21, 0x1

    aput v20, v14, v21

    div-int/lit8 v21, v20, 0x3

    const/16 v24, 0x1

    shl-int/lit8 v21, v21, 0x1

    add-int/lit8 v25, v13, 0x2

    aget-object v9, v16, v9

    aput-object v9, v12, v21

    and-int/lit16 v9, v2, 0x800

    if-eqz v9, :cond_29

    add-int/lit8 v21, v21, 0x1

    add-int/lit8 v9, v13, 0x3

    aget-object v13, v16, v25

    aput-object v13, v12, v21

    move/from16 v21, v0

    :cond_28
    :goto_16
    move v0, v9

    goto :goto_1b

    :cond_29
    move/from16 v21, v0

    move/from16 v0, v25

    goto :goto_1b

    :cond_2a
    :goto_17
    if-nez v11, :cond_2b

    div-int/lit8 v0, v20, 0x3

    const/16 v24, 0x1

    shl-int/lit8 v0, v0, 0x1

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v13, v13, 0x2

    aget-object v9, v16, v9

    aput-object v9, v12, v0

    :goto_18
    move v0, v13

    goto :goto_1b

    :cond_2b
    const/16 v24, 0x1

    goto :goto_16

    :goto_19
    div-int/lit8 v0, v20, 0x3

    shl-int/lit8 v0, v0, 0x1

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v13, v13, 0x2

    aget-object v9, v16, v9

    aput-object v9, v12, v0

    goto :goto_18

    :goto_1a
    div-int/lit8 v0, v20, 0x3

    shl-int/lit8 v0, v0, 0x1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v10}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v13

    aput-object v13, v12, v0

    goto :goto_16

    :goto_1b
    invoke-virtual {v8, v10}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v9

    long-to-int v9, v9

    and-int/lit16 v10, v2, 0x1000

    const/16 v13, 0x1000

    if-ne v10, v13, :cond_2f

    const/16 v10, 0x11

    if-gt v15, v10, :cond_2f

    add-int/lit8 v10, v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const v13, 0xd800

    if-lt v4, v13, :cond_2d

    and-int/lit16 v4, v4, 0x1fff

    const/16 v18, 0xd

    :goto_1c
    add-int/lit8 v25, v10, 0x1

    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-lt v10, v13, :cond_2c

    and-int/lit16 v10, v10, 0x1fff

    shl-int v10, v10, v18

    or-int/2addr v4, v10

    add-int/lit8 v18, v18, 0xd

    move/from16 v10, v25

    goto :goto_1c

    :cond_2c
    shl-int v10, v10, v18

    or-int/2addr v4, v10

    :goto_1d
    const/4 v10, 0x1

    goto :goto_1e

    :cond_2d
    move/from16 v25, v10

    goto :goto_1d

    :goto_1e
    shl-int/lit8 v18, v3, 0x1

    div-int/lit8 v24, v4, 0x20

    add-int v18, v18, v24

    aget-object v10, v16, v18

    instance-of v13, v10, Ljava/lang/reflect/Field;

    if-eqz v13, :cond_2e

    check-cast v10, Ljava/lang/reflect/Field;

    :goto_1f
    move/from16 v18, v0

    move-object v13, v1

    goto :goto_20

    :cond_2e
    check-cast v10, Ljava/lang/String;

    invoke-static {v6, v10}, Lcom/google/android/gms/internal/vision/x1;->t(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v10

    aput-object v10, v16, v18

    goto :goto_1f

    :goto_20
    invoke-virtual {v8, v10}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    long-to-int v0, v0

    rem-int/lit8 v4, v4, 0x20

    goto :goto_21

    :cond_2f
    move/from16 v18, v0

    move-object v13, v1

    const v0, 0xfffff

    move/from16 v25, v4

    const/4 v4, 0x0

    :goto_21
    const/16 v1, 0x12

    if-lt v15, v1, :cond_30

    const/16 v1, 0x31

    if-gt v15, v1, :cond_30

    add-int/lit8 v1, v22, 0x1

    aput v9, v14, v22

    move/from16 v22, v1

    :cond_30
    :goto_22
    add-int/lit8 v1, v20, 0x1

    aput v7, v5, v20

    add-int/lit8 v7, v20, 0x2

    and-int/lit16 v10, v2, 0x200

    if-eqz v10, :cond_31

    const/high16 v10, 0x20000000

    goto :goto_23

    :cond_31
    const/4 v10, 0x0

    :goto_23
    and-int/lit16 v2, v2, 0x100

    if-eqz v2, :cond_32

    const/high16 v2, 0x10000000

    goto :goto_24

    :cond_32
    const/4 v2, 0x0

    :goto_24
    or-int/2addr v2, v10

    shl-int/lit8 v10, v15, 0x14

    or-int/2addr v2, v10

    or-int/2addr v2, v9

    aput v2, v5, v1

    add-int/lit8 v20, v20, 0x3

    shl-int/lit8 v1, v4, 0x14

    or-int/2addr v0, v1

    aput v0, v5, v7

    move-object v1, v13

    move/from16 v13, v18

    move/from16 v10, v23

    move/from16 v7, v25

    move/from16 v2, v26

    move/from16 v15, v27

    move/from16 v9, v28

    move-object/from16 v0, v29

    const/4 v4, 0x1

    goto/16 :goto_c

    :cond_33
    move-object/from16 v29, v0

    move/from16 v28, v9

    move/from16 v23, v10

    move/from16 v27, v15

    new-instance v0, Lcom/google/android/gms/internal/vision/x1;

    invoke-virtual/range {v29 .. v29}, Lcom/google/android/gms/internal/vision/I1;->b()Lcom/google/android/gms/internal/vision/t1;

    move-result-object v10

    const/4 v1, 0x0

    move-object v2, v5

    move-object v5, v0

    move-object v6, v2

    move-object v7, v12

    move/from16 v8, v28

    move/from16 v9, v23

    move v12, v1

    move-object v13, v14

    move/from16 v14, v27

    move/from16 v15, v19

    move-object/from16 v16, p2

    move-object/from16 v17, p3

    move-object/from16 v18, p4

    move-object/from16 v19, p5

    move-object/from16 v20, p6

    invoke-direct/range {v5 .. v20}, Lcom/google/android/gms/internal/vision/x1;-><init>([I[Ljava/lang/Object;IILcom/google/android/gms/internal/vision/t1;ZZ[IIILcom/google/android/gms/internal/vision/A1;Lcom/google/android/gms/internal/vision/c1;Lcom/google/android/gms/internal/vision/a2;Lcom/google/android/gms/internal/vision/C0;Lcom/google/android/gms/internal/vision/q1;)V

    return-object v0

    :cond_34
    invoke-static/range {p1 .. p1}, Landroid/support/v4/media/session/b;->a(Ljava/lang/Object;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public static t(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
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

.method public static u(Ljava/lang/Object;J)Ljava/util/List;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/vision/h2;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public static v(ILjava/lang/Object;Lcom/google/android/gms/internal/vision/y2;)V
    .locals 1

    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/String;

    invoke-interface {p2, p0, p1}, Lcom/google/android/gms/internal/vision/y2;->w(ILjava/lang/String;)V

    return-void

    :cond_0
    check-cast p1, Lcom/google/android/gms/internal/vision/g0;

    invoke-interface {p2, p0, p1}, Lcom/google/android/gms/internal/vision/y2;->G(ILcom/google/android/gms/internal/vision/g0;)V

    return-void
.end method

.method public static w(Lcom/google/android/gms/internal/vision/a2;Ljava/lang/Object;Lcom/google/android/gms/internal/vision/y2;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/vision/a2;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/vision/a2;->d(Ljava/lang/Object;Lcom/google/android/gms/internal/vision/y2;)V

    return-void
.end method


# virtual methods
.method public final A(Ljava/lang/Object;II)Z
    .locals 2

    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/vision/x1;->P(I)I

    move-result p3

    const v0, 0xfffff

    and-int/2addr p3, v0

    int-to-long v0, p3

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/vision/h2;->b(Ljava/lang/Object;J)I

    move-result p1

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final B(Ljava/lang/Object;IIII)Z
    .locals 1

    const v0, 0xfffff

    if-ne p3, v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/vision/x1;->z(Ljava/lang/Object;I)Z

    move-result p1

    return p1

    :cond_0
    and-int p1, p4, p5

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final E(II)I
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/vision/x1;->a:[I

    array-length v0, v0

    div-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-gt p2, v0, :cond_2

    add-int v1, v0, p2

    ushr-int/lit8 v1, v1, 0x1

    mul-int/lit8 v2, v1, 0x3

    iget-object v3, p0, Lcom/google/android/gms/internal/vision/x1;->a:[I

    aget v3, v3, v2

    if-ne p1, v3, :cond_0

    return v2

    :cond_0
    if-ge p1, v3, :cond_1

    add-int/lit8 v0, v1, -0x1

    goto :goto_0

    :cond_1
    add-int/lit8 p2, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, -0x1

    return p1
.end method

.method public final F(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/vision/x1;->b:[Ljava/lang/Object;

    div-int/lit8 p1, p1, 0x3

    shl-int/lit8 p1, p1, 0x1

    aget-object p1, v0, p1

    return-object p1
.end method

.method public final G(Ljava/lang/Object;I)V
    .locals 4

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/vision/x1;->P(I)I

    move-result p2

    const v0, 0xfffff

    and-int/2addr v0, p2

    int-to-long v0, v0

    const-wide/32 v2, 0xfffff

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    ushr-int/lit8 p2, p2, 0x14

    const/4 v2, 0x1

    shl-int p2, v2, p2

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/vision/h2;->b(Ljava/lang/Object;J)I

    move-result v2

    or-int/2addr p2, v2

    invoke-static {p1, v0, v1, p2}, Lcom/google/android/gms/internal/vision/h2;->h(Ljava/lang/Object;JI)V

    return-void
.end method

.method public final H(Ljava/lang/Object;II)V
    .locals 2

    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/vision/x1;->P(I)I

    move-result p3

    const v0, 0xfffff

    and-int/2addr p3, v0

    int-to-long v0, p3

    invoke-static {p1, v0, v1, p2}, Lcom/google/android/gms/internal/vision/h2;->h(Ljava/lang/Object;JI)V

    return-void
.end method

.method public final I(Ljava/lang/Object;Lcom/google/android/gms/internal/vision/y2;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-boolean v3, v0, Lcom/google/android/gms/internal/vision/x1;->f:Z

    if-eqz v3, :cond_0

    iget-object v3, v0, Lcom/google/android/gms/internal/vision/x1;->p:Lcom/google/android/gms/internal/vision/C0;

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/vision/C0;->b(Ljava/lang/Object;)Lcom/google/android/gms/internal/vision/F0;

    move-result-object v3

    iget-object v5, v3, Lcom/google/android/gms/internal/vision/F0;->a:Lcom/google/android/gms/internal/vision/O1;

    invoke-virtual {v5}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v3}, Lcom/google/android/gms/internal/vision/F0;->j()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    const/4 v5, 0x0

    :goto_0
    iget-object v6, v0, Lcom/google/android/gms/internal/vision/x1;->a:[I

    array-length v6, v6

    sget-object v7, Lcom/google/android/gms/internal/vision/x1;->s:Lsun/misc/Unsafe;

    const/4 v10, 0x0

    const v11, 0xfffff

    const/4 v12, 0x0

    :goto_1
    if-ge v10, v6, :cond_7

    invoke-virtual {v0, v10}, Lcom/google/android/gms/internal/vision/x1;->N(I)I

    move-result v13

    iget-object v14, v0, Lcom/google/android/gms/internal/vision/x1;->a:[I

    aget v15, v14, v10

    const/high16 v16, 0xff00000

    and-int v16, v13, v16

    ushr-int/lit8 v4, v16, 0x14

    const/16 v9, 0x11

    if-gt v4, v9, :cond_2

    add-int/lit8 v9, v10, 0x2

    aget v9, v14, v9

    const v14, 0xfffff

    and-int v8, v9, v14

    if-eq v8, v11, :cond_1

    int-to-long v11, v8

    invoke-virtual {v7, v1, v11, v12}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v12

    move v11, v8

    :cond_1
    ushr-int/lit8 v8, v9, 0x14

    const/4 v9, 0x1

    shl-int v8, v9, v8

    goto :goto_2

    :cond_2
    const/4 v8, 0x0

    :goto_2
    if-eqz v5, :cond_4

    iget-object v9, v0, Lcom/google/android/gms/internal/vision/x1;->p:Lcom/google/android/gms/internal/vision/C0;

    invoke-virtual {v9, v5}, Lcom/google/android/gms/internal/vision/C0;->a(Ljava/util/Map$Entry;)I

    move-result v9

    if-gt v9, v15, :cond_4

    iget-object v9, v0, Lcom/google/android/gms/internal/vision/x1;->p:Lcom/google/android/gms/internal/vision/C0;

    invoke-virtual {v9, v2, v5}, Lcom/google/android/gms/internal/vision/C0;->c(Lcom/google/android/gms/internal/vision/y2;Ljava/util/Map$Entry;)V

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    goto :goto_2

    :cond_3
    const/4 v5, 0x0

    goto :goto_2

    :cond_4
    const v9, 0xfffff

    and-int/2addr v13, v9

    int-to-long v13, v13

    packed-switch v4, :pswitch_data_0

    :cond_5
    :goto_3
    const/4 v4, 0x0

    goto/16 :goto_5

    :pswitch_0
    invoke-virtual {v0, v1, v15, v10}, Lcom/google/android/gms/internal/vision/x1;->A(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v10}, Lcom/google/android/gms/internal/vision/x1;->q(I)Lcom/google/android/gms/internal/vision/K1;

    move-result-object v8

    invoke-interface {v2, v15, v4, v8}, Lcom/google/android/gms/internal/vision/y2;->N(ILjava/lang/Object;Lcom/google/android/gms/internal/vision/K1;)V

    goto :goto_3

    :pswitch_1
    invoke-virtual {v0, v1, v15, v10}, Lcom/google/android/gms/internal/vision/x1;->A(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {v1, v13, v14}, Lcom/google/android/gms/internal/vision/x1;->Q(Ljava/lang/Object;J)J

    move-result-wide v13

    invoke-interface {v2, v15, v13, v14}, Lcom/google/android/gms/internal/vision/y2;->M(IJ)V

    goto :goto_3

    :pswitch_2
    invoke-virtual {v0, v1, v15, v10}, Lcom/google/android/gms/internal/vision/x1;->A(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {v1, v13, v14}, Lcom/google/android/gms/internal/vision/x1;->O(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v15, v4}, Lcom/google/android/gms/internal/vision/y2;->e(II)V

    goto :goto_3

    :pswitch_3
    invoke-virtual {v0, v1, v15, v10}, Lcom/google/android/gms/internal/vision/x1;->A(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {v1, v13, v14}, Lcom/google/android/gms/internal/vision/x1;->Q(Ljava/lang/Object;J)J

    move-result-wide v13

    invoke-interface {v2, v15, v13, v14}, Lcom/google/android/gms/internal/vision/y2;->h(IJ)V

    goto :goto_3

    :pswitch_4
    invoke-virtual {v0, v1, v15, v10}, Lcom/google/android/gms/internal/vision/x1;->A(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {v1, v13, v14}, Lcom/google/android/gms/internal/vision/x1;->O(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v15, v4}, Lcom/google/android/gms/internal/vision/y2;->B(II)V

    goto :goto_3

    :pswitch_5
    invoke-virtual {v0, v1, v15, v10}, Lcom/google/android/gms/internal/vision/x1;->A(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {v1, v13, v14}, Lcom/google/android/gms/internal/vision/x1;->O(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v15, v4}, Lcom/google/android/gms/internal/vision/y2;->H(II)V

    goto :goto_3

    :pswitch_6
    invoke-virtual {v0, v1, v15, v10}, Lcom/google/android/gms/internal/vision/x1;->A(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {v1, v13, v14}, Lcom/google/android/gms/internal/vision/x1;->O(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v15, v4}, Lcom/google/android/gms/internal/vision/y2;->y(II)V

    goto :goto_3

    :pswitch_7
    invoke-virtual {v0, v1, v15, v10}, Lcom/google/android/gms/internal/vision/x1;->A(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/vision/g0;

    invoke-interface {v2, v15, v4}, Lcom/google/android/gms/internal/vision/y2;->G(ILcom/google/android/gms/internal/vision/g0;)V

    goto :goto_3

    :pswitch_8
    invoke-virtual {v0, v1, v15, v10}, Lcom/google/android/gms/internal/vision/x1;->A(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v10}, Lcom/google/android/gms/internal/vision/x1;->q(I)Lcom/google/android/gms/internal/vision/K1;

    move-result-object v8

    invoke-interface {v2, v15, v4, v8}, Lcom/google/android/gms/internal/vision/y2;->K(ILjava/lang/Object;Lcom/google/android/gms/internal/vision/K1;)V

    goto/16 :goto_3

    :pswitch_9
    invoke-virtual {v0, v1, v15, v10}, Lcom/google/android/gms/internal/vision/x1;->A(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v15, v4, v2}, Lcom/google/android/gms/internal/vision/x1;->v(ILjava/lang/Object;Lcom/google/android/gms/internal/vision/y2;)V

    goto/16 :goto_3

    :pswitch_a
    invoke-virtual {v0, v1, v15, v10}, Lcom/google/android/gms/internal/vision/x1;->A(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {v1, v13, v14}, Lcom/google/android/gms/internal/vision/x1;->S(Ljava/lang/Object;J)Z

    move-result v4

    invoke-interface {v2, v15, v4}, Lcom/google/android/gms/internal/vision/y2;->F(IZ)V

    goto/16 :goto_3

    :pswitch_b
    invoke-virtual {v0, v1, v15, v10}, Lcom/google/android/gms/internal/vision/x1;->A(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {v1, v13, v14}, Lcom/google/android/gms/internal/vision/x1;->O(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v15, v4}, Lcom/google/android/gms/internal/vision/y2;->s(II)V

    goto/16 :goto_3

    :pswitch_c
    invoke-virtual {v0, v1, v15, v10}, Lcom/google/android/gms/internal/vision/x1;->A(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {v1, v13, v14}, Lcom/google/android/gms/internal/vision/x1;->Q(Ljava/lang/Object;J)J

    move-result-wide v13

    invoke-interface {v2, v15, v13, v14}, Lcom/google/android/gms/internal/vision/y2;->L(IJ)V

    goto/16 :goto_3

    :pswitch_d
    invoke-virtual {v0, v1, v15, v10}, Lcom/google/android/gms/internal/vision/x1;->A(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {v1, v13, v14}, Lcom/google/android/gms/internal/vision/x1;->O(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v15, v4}, Lcom/google/android/gms/internal/vision/y2;->m(II)V

    goto/16 :goto_3

    :pswitch_e
    invoke-virtual {v0, v1, v15, v10}, Lcom/google/android/gms/internal/vision/x1;->A(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {v1, v13, v14}, Lcom/google/android/gms/internal/vision/x1;->Q(Ljava/lang/Object;J)J

    move-result-wide v13

    invoke-interface {v2, v15, v13, v14}, Lcom/google/android/gms/internal/vision/y2;->n(IJ)V

    goto/16 :goto_3

    :pswitch_f
    invoke-virtual {v0, v1, v15, v10}, Lcom/google/android/gms/internal/vision/x1;->A(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {v1, v13, v14}, Lcom/google/android/gms/internal/vision/x1;->Q(Ljava/lang/Object;J)J

    move-result-wide v13

    invoke-interface {v2, v15, v13, v14}, Lcom/google/android/gms/internal/vision/y2;->C(IJ)V

    goto/16 :goto_3

    :pswitch_10
    invoke-virtual {v0, v1, v15, v10}, Lcom/google/android/gms/internal/vision/x1;->A(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {v1, v13, v14}, Lcom/google/android/gms/internal/vision/x1;->K(Ljava/lang/Object;J)F

    move-result v4

    invoke-interface {v2, v15, v4}, Lcom/google/android/gms/internal/vision/y2;->E(IF)V

    goto/16 :goto_3

    :pswitch_11
    invoke-virtual {v0, v1, v15, v10}, Lcom/google/android/gms/internal/vision/x1;->A(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {v1, v13, v14}, Lcom/google/android/gms/internal/vision/x1;->D(Ljava/lang/Object;J)D

    move-result-wide v13

    invoke-interface {v2, v15, v13, v14}, Lcom/google/android/gms/internal/vision/y2;->D(ID)V

    goto/16 :goto_3

    :pswitch_12
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v2, v15, v4, v10}, Lcom/google/android/gms/internal/vision/x1;->x(Lcom/google/android/gms/internal/vision/y2;ILjava/lang/Object;I)V

    goto/16 :goto_3

    :pswitch_13
    iget-object v4, v0, Lcom/google/android/gms/internal/vision/x1;->a:[I

    aget v4, v4, v10

    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-virtual {v0, v10}, Lcom/google/android/gms/internal/vision/x1;->q(I)Lcom/google/android/gms/internal/vision/K1;

    move-result-object v13

    invoke-static {v4, v8, v2, v13}, Lcom/google/android/gms/internal/vision/L1;->x(ILjava/util/List;Lcom/google/android/gms/internal/vision/y2;Lcom/google/android/gms/internal/vision/K1;)V

    goto/16 :goto_3

    :pswitch_14
    iget-object v4, v0, Lcom/google/android/gms/internal/vision/x1;->a:[I

    aget v4, v4, v10

    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    const/4 v15, 0x1

    invoke-static {v4, v8, v2, v15}, Lcom/google/android/gms/internal/vision/L1;->K(ILjava/util/List;Lcom/google/android/gms/internal/vision/y2;Z)V

    goto/16 :goto_3

    :pswitch_15
    const/4 v15, 0x1

    iget-object v4, v0, Lcom/google/android/gms/internal/vision/x1;->a:[I

    aget v4, v4, v10

    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v4, v8, v2, v15}, Lcom/google/android/gms/internal/vision/L1;->Z(ILjava/util/List;Lcom/google/android/gms/internal/vision/y2;Z)V

    goto/16 :goto_3

    :pswitch_16
    const/4 v15, 0x1

    iget-object v4, v0, Lcom/google/android/gms/internal/vision/x1;->a:[I

    aget v4, v4, v10

    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v4, v8, v2, v15}, Lcom/google/android/gms/internal/vision/L1;->Q(ILjava/util/List;Lcom/google/android/gms/internal/vision/y2;Z)V

    goto/16 :goto_3

    :pswitch_17
    const/4 v15, 0x1

    iget-object v4, v0, Lcom/google/android/gms/internal/vision/x1;->a:[I

    aget v4, v4, v10

    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v4, v8, v2, v15}, Lcom/google/android/gms/internal/vision/L1;->b0(ILjava/util/List;Lcom/google/android/gms/internal/vision/y2;Z)V

    goto/16 :goto_3

    :pswitch_18
    const/4 v15, 0x1

    iget-object v4, v0, Lcom/google/android/gms/internal/vision/x1;->a:[I

    aget v4, v4, v10

    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v4, v8, v2, v15}, Lcom/google/android/gms/internal/vision/L1;->c0(ILjava/util/List;Lcom/google/android/gms/internal/vision/y2;Z)V

    goto/16 :goto_3

    :pswitch_19
    const/4 v15, 0x1

    iget-object v4, v0, Lcom/google/android/gms/internal/vision/x1;->a:[I

    aget v4, v4, v10

    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v4, v8, v2, v15}, Lcom/google/android/gms/internal/vision/L1;->W(ILjava/util/List;Lcom/google/android/gms/internal/vision/y2;Z)V

    goto/16 :goto_3

    :pswitch_1a
    const/4 v15, 0x1

    iget-object v4, v0, Lcom/google/android/gms/internal/vision/x1;->a:[I

    aget v4, v4, v10

    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v4, v8, v2, v15}, Lcom/google/android/gms/internal/vision/L1;->d0(ILjava/util/List;Lcom/google/android/gms/internal/vision/y2;Z)V

    goto/16 :goto_3

    :pswitch_1b
    const/4 v15, 0x1

    iget-object v4, v0, Lcom/google/android/gms/internal/vision/x1;->a:[I

    aget v4, v4, v10

    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v4, v8, v2, v15}, Lcom/google/android/gms/internal/vision/L1;->a0(ILjava/util/List;Lcom/google/android/gms/internal/vision/y2;Z)V

    goto/16 :goto_3

    :pswitch_1c
    const/4 v15, 0x1

    iget-object v4, v0, Lcom/google/android/gms/internal/vision/x1;->a:[I

    aget v4, v4, v10

    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v4, v8, v2, v15}, Lcom/google/android/gms/internal/vision/L1;->N(ILjava/util/List;Lcom/google/android/gms/internal/vision/y2;Z)V

    goto/16 :goto_3

    :pswitch_1d
    const/4 v15, 0x1

    iget-object v4, v0, Lcom/google/android/gms/internal/vision/x1;->a:[I

    aget v4, v4, v10

    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v4, v8, v2, v15}, Lcom/google/android/gms/internal/vision/L1;->T(ILjava/util/List;Lcom/google/android/gms/internal/vision/y2;Z)V

    goto/16 :goto_3

    :pswitch_1e
    const/4 v15, 0x1

    iget-object v4, v0, Lcom/google/android/gms/internal/vision/x1;->a:[I

    aget v4, v4, v10

    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v4, v8, v2, v15}, Lcom/google/android/gms/internal/vision/L1;->G(ILjava/util/List;Lcom/google/android/gms/internal/vision/y2;Z)V

    goto/16 :goto_3

    :pswitch_1f
    const/4 v15, 0x1

    iget-object v4, v0, Lcom/google/android/gms/internal/vision/x1;->a:[I

    aget v4, v4, v10

    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v4, v8, v2, v15}, Lcom/google/android/gms/internal/vision/L1;->C(ILjava/util/List;Lcom/google/android/gms/internal/vision/y2;Z)V

    goto/16 :goto_3

    :pswitch_20
    const/4 v15, 0x1

    iget-object v4, v0, Lcom/google/android/gms/internal/vision/x1;->a:[I

    aget v4, v4, v10

    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v4, v8, v2, v15}, Lcom/google/android/gms/internal/vision/L1;->y(ILjava/util/List;Lcom/google/android/gms/internal/vision/y2;Z)V

    goto/16 :goto_3

    :pswitch_21
    const/4 v15, 0x1

    iget-object v4, v0, Lcom/google/android/gms/internal/vision/x1;->a:[I

    aget v4, v4, v10

    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v4, v8, v2, v15}, Lcom/google/android/gms/internal/vision/L1;->l(ILjava/util/List;Lcom/google/android/gms/internal/vision/y2;Z)V

    goto/16 :goto_3

    :pswitch_22
    iget-object v4, v0, Lcom/google/android/gms/internal/vision/x1;->a:[I

    aget v4, v4, v10

    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    const/4 v15, 0x0

    invoke-static {v4, v8, v2, v15}, Lcom/google/android/gms/internal/vision/L1;->K(ILjava/util/List;Lcom/google/android/gms/internal/vision/y2;Z)V

    :goto_4
    move v4, v15

    goto/16 :goto_5

    :pswitch_23
    const/4 v15, 0x0

    iget-object v4, v0, Lcom/google/android/gms/internal/vision/x1;->a:[I

    aget v4, v4, v10

    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v4, v8, v2, v15}, Lcom/google/android/gms/internal/vision/L1;->Z(ILjava/util/List;Lcom/google/android/gms/internal/vision/y2;Z)V

    goto :goto_4

    :pswitch_24
    const/4 v15, 0x0

    iget-object v4, v0, Lcom/google/android/gms/internal/vision/x1;->a:[I

    aget v4, v4, v10

    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v4, v8, v2, v15}, Lcom/google/android/gms/internal/vision/L1;->Q(ILjava/util/List;Lcom/google/android/gms/internal/vision/y2;Z)V

    goto :goto_4

    :pswitch_25
    const/4 v15, 0x0

    iget-object v4, v0, Lcom/google/android/gms/internal/vision/x1;->a:[I

    aget v4, v4, v10

    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v4, v8, v2, v15}, Lcom/google/android/gms/internal/vision/L1;->b0(ILjava/util/List;Lcom/google/android/gms/internal/vision/y2;Z)V

    goto :goto_4

    :pswitch_26
    const/4 v15, 0x0

    iget-object v4, v0, Lcom/google/android/gms/internal/vision/x1;->a:[I

    aget v4, v4, v10

    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v4, v8, v2, v15}, Lcom/google/android/gms/internal/vision/L1;->c0(ILjava/util/List;Lcom/google/android/gms/internal/vision/y2;Z)V

    goto :goto_4

    :pswitch_27
    const/4 v15, 0x0

    iget-object v4, v0, Lcom/google/android/gms/internal/vision/x1;->a:[I

    aget v4, v4, v10

    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v4, v8, v2, v15}, Lcom/google/android/gms/internal/vision/L1;->W(ILjava/util/List;Lcom/google/android/gms/internal/vision/y2;Z)V

    goto :goto_4

    :pswitch_28
    iget-object v4, v0, Lcom/google/android/gms/internal/vision/x1;->a:[I

    aget v4, v4, v10

    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v4, v8, v2}, Lcom/google/android/gms/internal/vision/L1;->w(ILjava/util/List;Lcom/google/android/gms/internal/vision/y2;)V

    goto/16 :goto_3

    :pswitch_29
    iget-object v4, v0, Lcom/google/android/gms/internal/vision/x1;->a:[I

    aget v4, v4, v10

    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-virtual {v0, v10}, Lcom/google/android/gms/internal/vision/x1;->q(I)Lcom/google/android/gms/internal/vision/K1;

    move-result-object v13

    invoke-static {v4, v8, v2, v13}, Lcom/google/android/gms/internal/vision/L1;->k(ILjava/util/List;Lcom/google/android/gms/internal/vision/y2;Lcom/google/android/gms/internal/vision/K1;)V

    goto/16 :goto_3

    :pswitch_2a
    iget-object v4, v0, Lcom/google/android/gms/internal/vision/x1;->a:[I

    aget v4, v4, v10

    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v4, v8, v2}, Lcom/google/android/gms/internal/vision/L1;->j(ILjava/util/List;Lcom/google/android/gms/internal/vision/y2;)V

    goto/16 :goto_3

    :pswitch_2b
    iget-object v4, v0, Lcom/google/android/gms/internal/vision/x1;->a:[I

    aget v4, v4, v10

    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    const/4 v15, 0x0

    invoke-static {v4, v8, v2, v15}, Lcom/google/android/gms/internal/vision/L1;->d0(ILjava/util/List;Lcom/google/android/gms/internal/vision/y2;Z)V

    goto/16 :goto_4

    :pswitch_2c
    const/4 v15, 0x0

    iget-object v4, v0, Lcom/google/android/gms/internal/vision/x1;->a:[I

    aget v4, v4, v10

    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v4, v8, v2, v15}, Lcom/google/android/gms/internal/vision/L1;->a0(ILjava/util/List;Lcom/google/android/gms/internal/vision/y2;Z)V

    goto/16 :goto_4

    :pswitch_2d
    const/4 v15, 0x0

    iget-object v4, v0, Lcom/google/android/gms/internal/vision/x1;->a:[I

    aget v4, v4, v10

    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v4, v8, v2, v15}, Lcom/google/android/gms/internal/vision/L1;->N(ILjava/util/List;Lcom/google/android/gms/internal/vision/y2;Z)V

    goto/16 :goto_4

    :pswitch_2e
    const/4 v15, 0x0

    iget-object v4, v0, Lcom/google/android/gms/internal/vision/x1;->a:[I

    aget v4, v4, v10

    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v4, v8, v2, v15}, Lcom/google/android/gms/internal/vision/L1;->T(ILjava/util/List;Lcom/google/android/gms/internal/vision/y2;Z)V

    goto/16 :goto_4

    :pswitch_2f
    const/4 v15, 0x0

    iget-object v4, v0, Lcom/google/android/gms/internal/vision/x1;->a:[I

    aget v4, v4, v10

    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v4, v8, v2, v15}, Lcom/google/android/gms/internal/vision/L1;->G(ILjava/util/List;Lcom/google/android/gms/internal/vision/y2;Z)V

    goto/16 :goto_4

    :pswitch_30
    const/4 v15, 0x0

    iget-object v4, v0, Lcom/google/android/gms/internal/vision/x1;->a:[I

    aget v4, v4, v10

    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v4, v8, v2, v15}, Lcom/google/android/gms/internal/vision/L1;->C(ILjava/util/List;Lcom/google/android/gms/internal/vision/y2;Z)V

    goto/16 :goto_4

    :pswitch_31
    const/4 v15, 0x0

    iget-object v4, v0, Lcom/google/android/gms/internal/vision/x1;->a:[I

    aget v4, v4, v10

    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v4, v8, v2, v15}, Lcom/google/android/gms/internal/vision/L1;->y(ILjava/util/List;Lcom/google/android/gms/internal/vision/y2;Z)V

    goto/16 :goto_4

    :pswitch_32
    const/4 v15, 0x0

    iget-object v4, v0, Lcom/google/android/gms/internal/vision/x1;->a:[I

    aget v4, v4, v10

    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v4, v8, v2, v15}, Lcom/google/android/gms/internal/vision/L1;->l(ILjava/util/List;Lcom/google/android/gms/internal/vision/y2;Z)V

    goto/16 :goto_4

    :pswitch_33
    const/4 v4, 0x0

    and-int/2addr v8, v12

    if-eqz v8, :cond_6

    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v0, v10}, Lcom/google/android/gms/internal/vision/x1;->q(I)Lcom/google/android/gms/internal/vision/K1;

    move-result-object v13

    invoke-interface {v2, v15, v8, v13}, Lcom/google/android/gms/internal/vision/y2;->N(ILjava/lang/Object;Lcom/google/android/gms/internal/vision/K1;)V

    goto/16 :goto_5

    :pswitch_34
    const/4 v4, 0x0

    and-int/2addr v8, v12

    if-eqz v8, :cond_6

    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v13

    invoke-interface {v2, v15, v13, v14}, Lcom/google/android/gms/internal/vision/y2;->M(IJ)V

    goto/16 :goto_5

    :pswitch_35
    const/4 v4, 0x0

    and-int/2addr v8, v12

    if-eqz v8, :cond_6

    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v8

    invoke-interface {v2, v15, v8}, Lcom/google/android/gms/internal/vision/y2;->e(II)V

    goto/16 :goto_5

    :pswitch_36
    const/4 v4, 0x0

    and-int/2addr v8, v12

    if-eqz v8, :cond_6

    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v13

    invoke-interface {v2, v15, v13, v14}, Lcom/google/android/gms/internal/vision/y2;->h(IJ)V

    goto/16 :goto_5

    :pswitch_37
    const/4 v4, 0x0

    and-int/2addr v8, v12

    if-eqz v8, :cond_6

    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v8

    invoke-interface {v2, v15, v8}, Lcom/google/android/gms/internal/vision/y2;->B(II)V

    goto/16 :goto_5

    :pswitch_38
    const/4 v4, 0x0

    and-int/2addr v8, v12

    if-eqz v8, :cond_6

    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v8

    invoke-interface {v2, v15, v8}, Lcom/google/android/gms/internal/vision/y2;->H(II)V

    goto/16 :goto_5

    :pswitch_39
    const/4 v4, 0x0

    and-int/2addr v8, v12

    if-eqz v8, :cond_6

    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v8

    invoke-interface {v2, v15, v8}, Lcom/google/android/gms/internal/vision/y2;->y(II)V

    goto/16 :goto_5

    :pswitch_3a
    const/4 v4, 0x0

    and-int/2addr v8, v12

    if-eqz v8, :cond_6

    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/vision/g0;

    invoke-interface {v2, v15, v8}, Lcom/google/android/gms/internal/vision/y2;->G(ILcom/google/android/gms/internal/vision/g0;)V

    goto/16 :goto_5

    :pswitch_3b
    const/4 v4, 0x0

    and-int/2addr v8, v12

    if-eqz v8, :cond_6

    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v0, v10}, Lcom/google/android/gms/internal/vision/x1;->q(I)Lcom/google/android/gms/internal/vision/K1;

    move-result-object v13

    invoke-interface {v2, v15, v8, v13}, Lcom/google/android/gms/internal/vision/y2;->K(ILjava/lang/Object;Lcom/google/android/gms/internal/vision/K1;)V

    goto/16 :goto_5

    :pswitch_3c
    const/4 v4, 0x0

    and-int/2addr v8, v12

    if-eqz v8, :cond_6

    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v15, v8, v2}, Lcom/google/android/gms/internal/vision/x1;->v(ILjava/lang/Object;Lcom/google/android/gms/internal/vision/y2;)V

    goto :goto_5

    :pswitch_3d
    const/4 v4, 0x0

    and-int/2addr v8, v12

    if-eqz v8, :cond_6

    invoke-static {v1, v13, v14}, Lcom/google/android/gms/internal/vision/h2;->w(Ljava/lang/Object;J)Z

    move-result v8

    invoke-interface {v2, v15, v8}, Lcom/google/android/gms/internal/vision/y2;->F(IZ)V

    goto :goto_5

    :pswitch_3e
    const/4 v4, 0x0

    and-int/2addr v8, v12

    if-eqz v8, :cond_6

    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v8

    invoke-interface {v2, v15, v8}, Lcom/google/android/gms/internal/vision/y2;->s(II)V

    goto :goto_5

    :pswitch_3f
    const/4 v4, 0x0

    and-int/2addr v8, v12

    if-eqz v8, :cond_6

    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v13

    invoke-interface {v2, v15, v13, v14}, Lcom/google/android/gms/internal/vision/y2;->L(IJ)V

    goto :goto_5

    :pswitch_40
    const/4 v4, 0x0

    and-int/2addr v8, v12

    if-eqz v8, :cond_6

    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v8

    invoke-interface {v2, v15, v8}, Lcom/google/android/gms/internal/vision/y2;->m(II)V

    goto :goto_5

    :pswitch_41
    const/4 v4, 0x0

    and-int/2addr v8, v12

    if-eqz v8, :cond_6

    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v13

    invoke-interface {v2, v15, v13, v14}, Lcom/google/android/gms/internal/vision/y2;->n(IJ)V

    goto :goto_5

    :pswitch_42
    const/4 v4, 0x0

    and-int/2addr v8, v12

    if-eqz v8, :cond_6

    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v13

    invoke-interface {v2, v15, v13, v14}, Lcom/google/android/gms/internal/vision/y2;->C(IJ)V

    goto :goto_5

    :pswitch_43
    const/4 v4, 0x0

    and-int/2addr v8, v12

    if-eqz v8, :cond_6

    invoke-static {v1, v13, v14}, Lcom/google/android/gms/internal/vision/h2;->x(Ljava/lang/Object;J)F

    move-result v8

    invoke-interface {v2, v15, v8}, Lcom/google/android/gms/internal/vision/y2;->E(IF)V

    goto :goto_5

    :pswitch_44
    const/4 v4, 0x0

    and-int/2addr v8, v12

    if-eqz v8, :cond_6

    invoke-static {v1, v13, v14}, Lcom/google/android/gms/internal/vision/h2;->C(Ljava/lang/Object;J)D

    move-result-wide v13

    invoke-interface {v2, v15, v13, v14}, Lcom/google/android/gms/internal/vision/y2;->D(ID)V

    :cond_6
    :goto_5
    add-int/lit8 v10, v10, 0x3

    goto/16 :goto_1

    :cond_7
    :goto_6
    if-eqz v5, :cond_9

    iget-object v4, v0, Lcom/google/android/gms/internal/vision/x1;->p:Lcom/google/android/gms/internal/vision/C0;

    invoke-virtual {v4, v2, v5}, Lcom/google/android/gms/internal/vision/C0;->c(Lcom/google/android/gms/internal/vision/y2;Ljava/util/Map$Entry;)V

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    move-object v5, v4

    goto :goto_6

    :cond_8
    const/4 v5, 0x0

    goto :goto_6

    :cond_9
    iget-object v3, v0, Lcom/google/android/gms/internal/vision/x1;->o:Lcom/google/android/gms/internal/vision/a2;

    invoke-static {v3, v1, v2}, Lcom/google/android/gms/internal/vision/x1;->w(Lcom/google/android/gms/internal/vision/a2;Ljava/lang/Object;Lcom/google/android/gms/internal/vision/y2;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final J(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 4

    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/vision/x1;->N(I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/vision/x1;->a:[I

    aget v1, v1, p3

    const v2, 0xfffff

    and-int/2addr v0, v2

    int-to-long v2, v0

    invoke-virtual {p0, p2, v1, p3}, Lcom/google/android/gms/internal/vision/x1;->A(Ljava/lang/Object;II)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1, v1, p3}, Lcom/google/android/gms/internal/vision/x1;->A(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1, v2, v3}, Lcom/google/android/gms/internal/vision/h2;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/vision/h2;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p2

    if-eqz v0, :cond_2

    if-eqz p2, :cond_2

    invoke-static {v0, p2}, Lcom/google/android/gms/internal/vision/R0;->e(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, v2, v3, p2}, Lcom/google/android/gms/internal/vision/h2;->j(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {p0, p1, v1, p3}, Lcom/google/android/gms/internal/vision/x1;->H(Ljava/lang/Object;II)V

    return-void

    :cond_2
    if-eqz p2, :cond_3

    invoke-static {p1, v2, v3, p2}, Lcom/google/android/gms/internal/vision/h2;->j(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {p0, p1, v1, p3}, Lcom/google/android/gms/internal/vision/x1;->H(Ljava/lang/Object;II)V

    :cond_3
    return-void
.end method

.method public final L(I)Lcom/google/android/gms/internal/vision/S0;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/vision/x1;->b:[Ljava/lang/Object;

    div-int/lit8 p1, p1, 0x3

    shl-int/lit8 p1, p1, 0x1

    add-int/lit8 p1, p1, 0x1

    aget-object p1, v0, p1

    check-cast p1, Lcom/google/android/gms/internal/vision/S0;

    return-object p1
.end method

.method public final M(Ljava/lang/Object;Ljava/lang/Object;I)Z
    .locals 0

    invoke-virtual {p0, p1, p3}, Lcom/google/android/gms/internal/vision/x1;->z(Ljava/lang/Object;I)Z

    move-result p1

    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/vision/x1;->z(Ljava/lang/Object;I)Z

    move-result p2

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final N(I)I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/vision/x1;->a:[I

    add-int/lit8 p1, p1, 0x1

    aget p1, v0, p1

    return p1
.end method

.method public final P(I)I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/vision/x1;->a:[I

    add-int/lit8 p1, p1, 0x2

    aget p1, v0, p1

    return p1
.end method

.method public final T(I)I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/vision/x1;->c:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/vision/x1;->d:I

    if-gt p1, v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/vision/x1;->E(II)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public final a()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/vision/x1;->m:Lcom/google/android/gms/internal/vision/A1;

    iget-object v1, p0, Lcom/google/android/gms/internal/vision/x1;->e:Lcom/google/android/gms/internal/vision/t1;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/vision/A1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final b(Ljava/lang/Object;)I
    .locals 8

    iget-object v0, p0, Lcom/google/android/gms/internal/vision/x1;->a:[I

    array-length v0, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/vision/x1;->N(I)I

    move-result v3

    iget-object v4, p0, Lcom/google/android/gms/internal/vision/x1;->a:[I

    aget v4, v4, v1

    const v5, 0xfffff

    and-int/2addr v5, v3

    int-to-long v5, v5

    const/high16 v7, 0xff00000

    and-int/2addr v3, v7

    ushr-int/lit8 v3, v3, 0x14

    const/16 v7, 0x25

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_3

    :pswitch_0
    invoke-virtual {p0, p1, v4, v1}, Lcom/google/android/gms/internal/vision/x1;->A(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/vision/h2;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    mul-int/lit8 v2, v2, 0x35

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v2, v3

    goto/16 :goto_3

    :pswitch_1
    invoke-virtual {p0, p1, v4, v1}, Lcom/google/android/gms/internal/vision/x1;->A(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/vision/x1;->Q(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/vision/R0;->b(J)I

    move-result v3

    goto :goto_1

    :pswitch_2
    invoke-virtual {p0, p1, v4, v1}, Lcom/google/android/gms/internal/vision/x1;->A(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/vision/x1;->O(Ljava/lang/Object;J)I

    move-result v3

    goto :goto_1

    :pswitch_3
    invoke-virtual {p0, p1, v4, v1}, Lcom/google/android/gms/internal/vision/x1;->A(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/vision/x1;->Q(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/vision/R0;->b(J)I

    move-result v3

    goto :goto_1

    :pswitch_4
    invoke-virtual {p0, p1, v4, v1}, Lcom/google/android/gms/internal/vision/x1;->A(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/vision/x1;->O(Ljava/lang/Object;J)I

    move-result v3

    goto :goto_1

    :pswitch_5
    invoke-virtual {p0, p1, v4, v1}, Lcom/google/android/gms/internal/vision/x1;->A(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/vision/x1;->O(Ljava/lang/Object;J)I

    move-result v3

    goto :goto_1

    :pswitch_6
    invoke-virtual {p0, p1, v4, v1}, Lcom/google/android/gms/internal/vision/x1;->A(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/vision/x1;->O(Ljava/lang/Object;J)I

    move-result v3

    goto :goto_1

    :pswitch_7
    invoke-virtual {p0, p1, v4, v1}, Lcom/google/android/gms/internal/vision/x1;->A(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/vision/h2;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto :goto_1

    :pswitch_8
    invoke-virtual {p0, p1, v4, v1}, Lcom/google/android/gms/internal/vision/x1;->A(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/vision/h2;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    mul-int/lit8 v2, v2, 0x35

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto :goto_1

    :pswitch_9
    invoke-virtual {p0, p1, v4, v1}, Lcom/google/android/gms/internal/vision/x1;->A(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/vision/h2;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto/16 :goto_1

    :pswitch_a
    invoke-virtual {p0, p1, v4, v1}, Lcom/google/android/gms/internal/vision/x1;->A(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/vision/x1;->S(Ljava/lang/Object;J)Z

    move-result v3

    invoke-static {v3}, Lcom/google/android/gms/internal/vision/R0;->c(Z)I

    move-result v3

    goto/16 :goto_1

    :pswitch_b
    invoke-virtual {p0, p1, v4, v1}, Lcom/google/android/gms/internal/vision/x1;->A(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/vision/x1;->O(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_1

    :pswitch_c
    invoke-virtual {p0, p1, v4, v1}, Lcom/google/android/gms/internal/vision/x1;->A(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/vision/x1;->Q(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/vision/R0;->b(J)I

    move-result v3

    goto/16 :goto_1

    :pswitch_d
    invoke-virtual {p0, p1, v4, v1}, Lcom/google/android/gms/internal/vision/x1;->A(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/vision/x1;->O(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_1

    :pswitch_e
    invoke-virtual {p0, p1, v4, v1}, Lcom/google/android/gms/internal/vision/x1;->A(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/vision/x1;->Q(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/vision/R0;->b(J)I

    move-result v3

    goto/16 :goto_1

    :pswitch_f
    invoke-virtual {p0, p1, v4, v1}, Lcom/google/android/gms/internal/vision/x1;->A(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/vision/x1;->Q(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/vision/R0;->b(J)I

    move-result v3

    goto/16 :goto_1

    :pswitch_10
    invoke-virtual {p0, p1, v4, v1}, Lcom/google/android/gms/internal/vision/x1;->A(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/vision/x1;->K(Ljava/lang/Object;J)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    goto/16 :goto_1

    :pswitch_11
    invoke-virtual {p0, p1, v4, v1}, Lcom/google/android/gms/internal/vision/x1;->A(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/vision/x1;->D(Ljava/lang/Object;J)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/vision/R0;->b(J)I

    move-result v3

    goto/16 :goto_1

    :pswitch_12
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/vision/h2;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto/16 :goto_1

    :pswitch_13
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/vision/h2;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto/16 :goto_1

    :pswitch_14
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/vision/h2;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v7

    :cond_0
    :goto_2
    mul-int/lit8 v2, v2, 0x35

    add-int/2addr v2, v7

    goto/16 :goto_3

    :pswitch_15
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/vision/h2;->o(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/vision/R0;->b(J)I

    move-result v3

    goto/16 :goto_1

    :pswitch_16
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/vision/h2;->b(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_1

    :pswitch_17
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/vision/h2;->o(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/vision/R0;->b(J)I

    move-result v3

    goto/16 :goto_1

    :pswitch_18
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/vision/h2;->b(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_1

    :pswitch_19
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/vision/h2;->b(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_1

    :pswitch_1a
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/vision/h2;->b(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_1

    :pswitch_1b
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/vision/h2;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto/16 :goto_1

    :pswitch_1c
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/vision/h2;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v7

    goto :goto_2

    :pswitch_1d
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/vision/h2;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto/16 :goto_1

    :pswitch_1e
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/vision/h2;->w(Ljava/lang/Object;J)Z

    move-result v3

    invoke-static {v3}, Lcom/google/android/gms/internal/vision/R0;->c(Z)I

    move-result v3

    goto/16 :goto_1

    :pswitch_1f
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/vision/h2;->b(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_1

    :pswitch_20
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/vision/h2;->o(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/vision/R0;->b(J)I

    move-result v3

    goto/16 :goto_1

    :pswitch_21
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/vision/h2;->b(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_1

    :pswitch_22
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/vision/h2;->o(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/vision/R0;->b(J)I

    move-result v3

    goto/16 :goto_1

    :pswitch_23
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/vision/h2;->o(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/vision/R0;->b(J)I

    move-result v3

    goto/16 :goto_1

    :pswitch_24
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/vision/h2;->x(Ljava/lang/Object;J)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    goto/16 :goto_1

    :pswitch_25
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/vision/h2;->C(Ljava/lang/Object;J)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/vision/R0;->b(J)I

    move-result v3

    goto/16 :goto_1

    :cond_1
    :goto_3
    add-int/lit8 v1, v1, 0x3

    goto/16 :goto_0

    :cond_2
    mul-int/lit8 v2, v2, 0x35

    iget-object v0, p0, Lcom/google/android/gms/internal/vision/x1;->o:Lcom/google/android/gms/internal/vision/a2;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/vision/a2;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v2, v0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/vision/x1;->f:Z

    if-eqz v0, :cond_3

    mul-int/lit8 v2, v2, 0x35

    iget-object v0, p0, Lcom/google/android/gms/internal/vision/x1;->p:Lcom/google/android/gms/internal/vision/C0;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/vision/C0;->b(Ljava/lang/Object;)Lcom/google/android/gms/internal/vision/F0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/F0;->hashCode()I

    move-result p1

    add-int/2addr v2, p1

    :cond_3
    return v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final c(Ljava/lang/Object;)V
    .locals 5

    iget v0, p0, Lcom/google/android/gms/internal/vision/x1;->k:I

    :goto_0
    iget v1, p0, Lcom/google/android/gms/internal/vision/x1;->l:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/vision/x1;->j:[I

    aget v1, v1, v0

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/vision/x1;->N(I)I

    move-result v1

    const v2, 0xfffff

    and-int/2addr v1, v2

    int-to-long v1, v1

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/vision/h2;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v4, p0, Lcom/google/android/gms/internal/vision/x1;->q:Lcom/google/android/gms/internal/vision/q1;

    invoke-interface {v4, v3}, Lcom/google/android/gms/internal/vision/q1;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/internal/vision/h2;->j(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/x1;->j:[I

    array-length v0, v0

    :goto_1
    if-ge v1, v0, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/internal/vision/x1;->n:Lcom/google/android/gms/internal/vision/c1;

    iget-object v3, p0, Lcom/google/android/gms/internal/vision/x1;->j:[I

    aget v3, v3, v1

    int-to-long v3, v3

    invoke-virtual {v2, p1, v3, v4}, Lcom/google/android/gms/internal/vision/c1;->d(Ljava/lang/Object;J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/x1;->o:Lcom/google/android/gms/internal/vision/a2;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/vision/a2;->j(Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/vision/x1;->f:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/vision/x1;->p:Lcom/google/android/gms/internal/vision/C0;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/vision/C0;->f(Ljava/lang/Object;)V

    :cond_3
    return-void
.end method

.method public final d(Ljava/lang/Object;)Z
    .locals 17

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    const v8, 0xfffff

    const/4 v9, 0x0

    move v0, v8

    move v1, v9

    move v10, v1

    :goto_0
    iget v2, v6, Lcom/google/android/gms/internal/vision/x1;->k:I

    const/4 v3, 0x1

    if-ge v10, v2, :cond_a

    iget-object v2, v6, Lcom/google/android/gms/internal/vision/x1;->j:[I

    aget v11, v2, v10

    iget-object v2, v6, Lcom/google/android/gms/internal/vision/x1;->a:[I

    aget v12, v2, v11

    invoke-virtual {v6, v11}, Lcom/google/android/gms/internal/vision/x1;->N(I)I

    move-result v13

    iget-object v2, v6, Lcom/google/android/gms/internal/vision/x1;->a:[I

    add-int/lit8 v4, v11, 0x2

    aget v2, v2, v4

    and-int v4, v2, v8

    ushr-int/lit8 v2, v2, 0x14

    shl-int v14, v3, v2

    if-eq v4, v0, :cond_1

    if-eq v4, v8, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/vision/x1;->s:Lsun/misc/Unsafe;

    int-to-long v1, v4

    invoke-virtual {v0, v7, v1, v2}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v1

    :cond_0
    move/from16 v16, v1

    move v15, v4

    goto :goto_1

    :cond_1
    move v15, v0

    move/from16 v16, v1

    :goto_1
    const/high16 v0, 0x10000000

    and-int/2addr v0, v13

    if-eqz v0, :cond_2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v15

    move/from16 v4, v16

    move v5, v14

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/vision/x1;->B(Ljava/lang/Object;IIII)Z

    move-result v0

    if-nez v0, :cond_2

    return v9

    :cond_2
    const/high16 v0, 0xff00000

    and-int/2addr v0, v13

    ushr-int/lit8 v0, v0, 0x14

    const/16 v1, 0x9

    if-eq v0, v1, :cond_8

    const/16 v1, 0x11

    if-eq v0, v1, :cond_8

    const/16 v1, 0x1b

    if-eq v0, v1, :cond_6

    const/16 v1, 0x3c

    if-eq v0, v1, :cond_5

    const/16 v1, 0x44

    if-eq v0, v1, :cond_5

    const/16 v1, 0x31

    if-eq v0, v1, :cond_6

    const/16 v1, 0x32

    if-eq v0, v1, :cond_3

    goto/16 :goto_3

    :cond_3
    iget-object v0, v6, Lcom/google/android/gms/internal/vision/x1;->q:Lcom/google/android/gms/internal/vision/q1;

    and-int v1, v13, v8

    int-to-long v1, v1

    invoke-static {v7, v1, v2}, Lcom/google/android/gms/internal/vision/h2;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/vision/q1;->c(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {v6, v11}, Lcom/google/android/gms/internal/vision/x1;->F(I)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, v6, Lcom/google/android/gms/internal/vision/x1;->q:Lcom/google/android/gms/internal/vision/q1;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/vision/q1;->g(Ljava/lang/Object;)Lcom/google/android/gms/internal/vision/o1;

    const/4 v0, 0x0

    throw v0

    :cond_5
    invoke-virtual {v6, v7, v12, v11}, Lcom/google/android/gms/internal/vision/x1;->A(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {v6, v11}, Lcom/google/android/gms/internal/vision/x1;->q(I)Lcom/google/android/gms/internal/vision/K1;

    move-result-object v0

    invoke-static {v7, v13, v0}, Lcom/google/android/gms/internal/vision/x1;->C(Ljava/lang/Object;ILcom/google/android/gms/internal/vision/K1;)Z

    move-result v0

    if-nez v0, :cond_9

    return v9

    :cond_6
    and-int v0, v13, v8

    int-to-long v0, v0

    invoke-static {v7, v0, v1}, Lcom/google/android/gms/internal/vision/h2;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_9

    invoke-virtual {v6, v11}, Lcom/google/android/gms/internal/vision/x1;->q(I)Lcom/google/android/gms/internal/vision/K1;

    move-result-object v1

    move v2, v9

    :goto_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_9

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/google/android/gms/internal/vision/K1;->d(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    return v9

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_8
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v15

    move/from16 v4, v16

    move v5, v14

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/vision/x1;->B(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {v6, v11}, Lcom/google/android/gms/internal/vision/x1;->q(I)Lcom/google/android/gms/internal/vision/K1;

    move-result-object v0

    invoke-static {v7, v13, v0}, Lcom/google/android/gms/internal/vision/x1;->C(Ljava/lang/Object;ILcom/google/android/gms/internal/vision/K1;)Z

    move-result v0

    if-nez v0, :cond_9

    return v9

    :cond_9
    :goto_3
    add-int/lit8 v10, v10, 0x1

    move v0, v15

    move/from16 v1, v16

    goto/16 :goto_0

    :cond_a
    iget-boolean v0, v6, Lcom/google/android/gms/internal/vision/x1;->f:Z

    if-eqz v0, :cond_b

    iget-object v0, v6, Lcom/google/android/gms/internal/vision/x1;->p:Lcom/google/android/gms/internal/vision/C0;

    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/vision/C0;->b(Ljava/lang/Object;)Lcom/google/android/gms/internal/vision/F0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/F0;->m()Z

    move-result v0

    if-nez v0, :cond_b

    return v9

    :cond_b
    return v3
.end method

.method public final e(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 9

    iget-object v0, p0, Lcom/google/android/gms/internal/vision/x1;->a:[I

    array-length v0, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v0, :cond_3

    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/vision/x1;->N(I)I

    move-result v4

    const v5, 0xfffff

    and-int v6, v4, v5

    int-to-long v6, v6

    const/high16 v8, 0xff00000

    and-int/2addr v4, v8

    ushr-int/lit8 v4, v4, 0x14

    packed-switch v4, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/vision/x1;->P(I)I

    move-result v4

    and-int/2addr v4, v5

    int-to-long v4, v4

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/vision/h2;->b(Ljava/lang/Object;J)I

    move-result v8

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/vision/h2;->b(Ljava/lang/Object;J)I

    move-result v4

    if-ne v8, v4, :cond_0

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/vision/h2;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/vision/h2;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/vision/L1;->q(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    :goto_1
    move v3, v1

    goto/16 :goto_2

    :pswitch_1
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/vision/h2;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/vision/h2;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/vision/L1;->q(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    goto/16 :goto_2

    :pswitch_2
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/vision/h2;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/vision/h2;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/vision/L1;->q(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    goto/16 :goto_2

    :pswitch_3
    invoke-virtual {p0, p1, p2, v2}, Lcom/google/android/gms/internal/vision/x1;->M(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/vision/h2;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/vision/h2;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/vision/L1;->q(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_1

    :pswitch_4
    invoke-virtual {p0, p1, p2, v2}, Lcom/google/android/gms/internal/vision/x1;->M(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/vision/h2;->o(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/vision/h2;->o(Ljava/lang/Object;J)J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-eqz v4, :cond_1

    goto :goto_1

    :pswitch_5
    invoke-virtual {p0, p1, p2, v2}, Lcom/google/android/gms/internal/vision/x1;->M(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/vision/h2;->b(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/vision/h2;->b(Ljava/lang/Object;J)I

    move-result v5

    if-eq v4, v5, :cond_1

    goto :goto_1

    :pswitch_6
    invoke-virtual {p0, p1, p2, v2}, Lcom/google/android/gms/internal/vision/x1;->M(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/vision/h2;->o(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/vision/h2;->o(Ljava/lang/Object;J)J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-eqz v4, :cond_1

    goto :goto_1

    :pswitch_7
    invoke-virtual {p0, p1, p2, v2}, Lcom/google/android/gms/internal/vision/x1;->M(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/vision/h2;->b(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/vision/h2;->b(Ljava/lang/Object;J)I

    move-result v5

    if-eq v4, v5, :cond_1

    goto :goto_1

    :pswitch_8
    invoke-virtual {p0, p1, p2, v2}, Lcom/google/android/gms/internal/vision/x1;->M(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/vision/h2;->b(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/vision/h2;->b(Ljava/lang/Object;J)I

    move-result v5

    if-eq v4, v5, :cond_1

    goto/16 :goto_1

    :pswitch_9
    invoke-virtual {p0, p1, p2, v2}, Lcom/google/android/gms/internal/vision/x1;->M(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/vision/h2;->b(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/vision/h2;->b(Ljava/lang/Object;J)I

    move-result v5

    if-eq v4, v5, :cond_1

    goto/16 :goto_1

    :pswitch_a
    invoke-virtual {p0, p1, p2, v2}, Lcom/google/android/gms/internal/vision/x1;->M(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/vision/h2;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/vision/h2;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/vision/L1;->q(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto/16 :goto_1

    :pswitch_b
    invoke-virtual {p0, p1, p2, v2}, Lcom/google/android/gms/internal/vision/x1;->M(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/vision/h2;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/vision/h2;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/vision/L1;->q(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto/16 :goto_1

    :pswitch_c
    invoke-virtual {p0, p1, p2, v2}, Lcom/google/android/gms/internal/vision/x1;->M(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/vision/h2;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/vision/h2;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/vision/L1;->q(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto/16 :goto_1

    :pswitch_d
    invoke-virtual {p0, p1, p2, v2}, Lcom/google/android/gms/internal/vision/x1;->M(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/vision/h2;->w(Ljava/lang/Object;J)Z

    move-result v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/vision/h2;->w(Ljava/lang/Object;J)Z

    move-result v5

    if-eq v4, v5, :cond_1

    goto/16 :goto_1

    :pswitch_e
    invoke-virtual {p0, p1, p2, v2}, Lcom/google/android/gms/internal/vision/x1;->M(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/vision/h2;->b(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/vision/h2;->b(Ljava/lang/Object;J)I

    move-result v5

    if-eq v4, v5, :cond_1

    goto/16 :goto_1

    :pswitch_f
    invoke-virtual {p0, p1, p2, v2}, Lcom/google/android/gms/internal/vision/x1;->M(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/vision/h2;->o(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/vision/h2;->o(Ljava/lang/Object;J)J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-eqz v4, :cond_1

    goto/16 :goto_1

    :pswitch_10
    invoke-virtual {p0, p1, p2, v2}, Lcom/google/android/gms/internal/vision/x1;->M(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/vision/h2;->b(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/vision/h2;->b(Ljava/lang/Object;J)I

    move-result v5

    if-eq v4, v5, :cond_1

    goto/16 :goto_1

    :pswitch_11
    invoke-virtual {p0, p1, p2, v2}, Lcom/google/android/gms/internal/vision/x1;->M(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/vision/h2;->o(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/vision/h2;->o(Ljava/lang/Object;J)J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-eqz v4, :cond_1

    goto/16 :goto_1

    :pswitch_12
    invoke-virtual {p0, p1, p2, v2}, Lcom/google/android/gms/internal/vision/x1;->M(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/vision/h2;->o(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/vision/h2;->o(Ljava/lang/Object;J)J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-eqz v4, :cond_1

    goto/16 :goto_1

    :pswitch_13
    invoke-virtual {p0, p1, p2, v2}, Lcom/google/android/gms/internal/vision/x1;->M(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/vision/h2;->x(Ljava/lang/Object;J)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/vision/h2;->x(Ljava/lang/Object;J)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v5

    if-eq v4, v5, :cond_1

    goto/16 :goto_1

    :pswitch_14
    invoke-virtual {p0, p1, p2, v2}, Lcom/google/android/gms/internal/vision/x1;->M(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/vision/h2;->C(Ljava/lang/Object;J)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/vision/h2;->C(Ljava/lang/Object;J)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-eqz v4, :cond_1

    goto/16 :goto_1

    :cond_1
    :goto_2
    if-nez v3, :cond_2

    return v1

    :cond_2
    add-int/lit8 v2, v2, 0x3

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/x1;->o:Lcom/google/android/gms/internal/vision/a2;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/vision/a2;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/vision/x1;->o:Lcom/google/android/gms/internal/vision/a2;

    invoke-virtual {v2, p2}, Lcom/google/android/gms/internal/vision/a2;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    return v1

    :cond_4
    iget-boolean v0, p0, Lcom/google/android/gms/internal/vision/x1;->f:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/internal/vision/x1;->p:Lcom/google/android/gms/internal/vision/C0;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/vision/C0;->b(Ljava/lang/Object;)Lcom/google/android/gms/internal/vision/F0;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/vision/x1;->p:Lcom/google/android/gms/internal/vision/C0;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/vision/C0;->b(Ljava/lang/Object;)Lcom/google/android/gms/internal/vision/F0;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/vision/F0;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_5
    return v3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final f(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/x1;->a:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/vision/x1;->N(I)I

    move-result v1

    const v2, 0xfffff

    and-int/2addr v2, v1

    int-to-long v2, v2

    iget-object v4, p0, Lcom/google/android/gms/internal/vision/x1;->a:[I

    aget v4, v4, v0

    const/high16 v5, 0xff00000

    and-int/2addr v1, v5

    ushr-int/lit8 v1, v1, 0x14

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/gms/internal/vision/x1;->J(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_1

    :pswitch_1
    invoke-virtual {p0, p2, v4, v0}, Lcom/google/android/gms/internal/vision/x1;->A(Ljava/lang/Object;II)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/vision/h2;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/vision/h2;->j(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {p0, p1, v4, v0}, Lcom/google/android/gms/internal/vision/x1;->H(Ljava/lang/Object;II)V

    goto/16 :goto_1

    :pswitch_2
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/gms/internal/vision/x1;->J(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_1

    :pswitch_3
    invoke-virtual {p0, p2, v4, v0}, Lcom/google/android/gms/internal/vision/x1;->A(Ljava/lang/Object;II)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/vision/h2;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/vision/h2;->j(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {p0, p1, v4, v0}, Lcom/google/android/gms/internal/vision/x1;->H(Ljava/lang/Object;II)V

    goto/16 :goto_1

    :pswitch_4
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/x1;->q:Lcom/google/android/gms/internal/vision/q1;

    invoke-static {v1, p1, p2, v2, v3}, Lcom/google/android/gms/internal/vision/L1;->n(Lcom/google/android/gms/internal/vision/q1;Ljava/lang/Object;Ljava/lang/Object;J)V

    goto/16 :goto_1

    :pswitch_5
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/x1;->n:Lcom/google/android/gms/internal/vision/c1;

    invoke-virtual {v1, p1, p2, v2, v3}, Lcom/google/android/gms/internal/vision/c1;->b(Ljava/lang/Object;Ljava/lang/Object;J)V

    goto/16 :goto_1

    :pswitch_6
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/gms/internal/vision/x1;->y(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_1

    :pswitch_7
    invoke-virtual {p0, p2, v0}, Lcom/google/android/gms/internal/vision/x1;->z(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/vision/h2;->o(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p1, v2, v3, v4, v5}, Lcom/google/android/gms/internal/vision/h2;->i(Ljava/lang/Object;JJ)V

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/vision/x1;->G(Ljava/lang/Object;I)V

    goto/16 :goto_1

    :pswitch_8
    invoke-virtual {p0, p2, v0}, Lcom/google/android/gms/internal/vision/x1;->z(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/vision/h2;->b(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/vision/h2;->h(Ljava/lang/Object;JI)V

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/vision/x1;->G(Ljava/lang/Object;I)V

    goto/16 :goto_1

    :pswitch_9
    invoke-virtual {p0, p2, v0}, Lcom/google/android/gms/internal/vision/x1;->z(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/vision/h2;->o(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p1, v2, v3, v4, v5}, Lcom/google/android/gms/internal/vision/h2;->i(Ljava/lang/Object;JJ)V

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/vision/x1;->G(Ljava/lang/Object;I)V

    goto/16 :goto_1

    :pswitch_a
    invoke-virtual {p0, p2, v0}, Lcom/google/android/gms/internal/vision/x1;->z(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/vision/h2;->b(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/vision/h2;->h(Ljava/lang/Object;JI)V

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/vision/x1;->G(Ljava/lang/Object;I)V

    goto/16 :goto_1

    :pswitch_b
    invoke-virtual {p0, p2, v0}, Lcom/google/android/gms/internal/vision/x1;->z(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/vision/h2;->b(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/vision/h2;->h(Ljava/lang/Object;JI)V

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/vision/x1;->G(Ljava/lang/Object;I)V

    goto/16 :goto_1

    :pswitch_c
    invoke-virtual {p0, p2, v0}, Lcom/google/android/gms/internal/vision/x1;->z(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/vision/h2;->b(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/vision/h2;->h(Ljava/lang/Object;JI)V

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/vision/x1;->G(Ljava/lang/Object;I)V

    goto/16 :goto_1

    :pswitch_d
    invoke-virtual {p0, p2, v0}, Lcom/google/android/gms/internal/vision/x1;->z(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/vision/h2;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/vision/h2;->j(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/vision/x1;->G(Ljava/lang/Object;I)V

    goto/16 :goto_1

    :pswitch_e
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/gms/internal/vision/x1;->y(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_1

    :pswitch_f
    invoke-virtual {p0, p2, v0}, Lcom/google/android/gms/internal/vision/x1;->z(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/vision/h2;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/vision/h2;->j(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/vision/x1;->G(Ljava/lang/Object;I)V

    goto/16 :goto_1

    :pswitch_10
    invoke-virtual {p0, p2, v0}, Lcom/google/android/gms/internal/vision/x1;->z(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/vision/h2;->w(Ljava/lang/Object;J)Z

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/vision/h2;->k(Ljava/lang/Object;JZ)V

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/vision/x1;->G(Ljava/lang/Object;I)V

    goto/16 :goto_1

    :pswitch_11
    invoke-virtual {p0, p2, v0}, Lcom/google/android/gms/internal/vision/x1;->z(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/vision/h2;->b(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/vision/h2;->h(Ljava/lang/Object;JI)V

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/vision/x1;->G(Ljava/lang/Object;I)V

    goto :goto_1

    :pswitch_12
    invoke-virtual {p0, p2, v0}, Lcom/google/android/gms/internal/vision/x1;->z(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/vision/h2;->o(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p1, v2, v3, v4, v5}, Lcom/google/android/gms/internal/vision/h2;->i(Ljava/lang/Object;JJ)V

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/vision/x1;->G(Ljava/lang/Object;I)V

    goto :goto_1

    :pswitch_13
    invoke-virtual {p0, p2, v0}, Lcom/google/android/gms/internal/vision/x1;->z(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/vision/h2;->b(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/vision/h2;->h(Ljava/lang/Object;JI)V

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/vision/x1;->G(Ljava/lang/Object;I)V

    goto :goto_1

    :pswitch_14
    invoke-virtual {p0, p2, v0}, Lcom/google/android/gms/internal/vision/x1;->z(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/vision/h2;->o(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p1, v2, v3, v4, v5}, Lcom/google/android/gms/internal/vision/h2;->i(Ljava/lang/Object;JJ)V

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/vision/x1;->G(Ljava/lang/Object;I)V

    goto :goto_1

    :pswitch_15
    invoke-virtual {p0, p2, v0}, Lcom/google/android/gms/internal/vision/x1;->z(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/vision/h2;->o(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p1, v2, v3, v4, v5}, Lcom/google/android/gms/internal/vision/h2;->i(Ljava/lang/Object;JJ)V

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/vision/x1;->G(Ljava/lang/Object;I)V

    goto :goto_1

    :pswitch_16
    invoke-virtual {p0, p2, v0}, Lcom/google/android/gms/internal/vision/x1;->z(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/vision/h2;->x(Ljava/lang/Object;J)F

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/vision/h2;->g(Ljava/lang/Object;JF)V

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/vision/x1;->G(Ljava/lang/Object;I)V

    goto :goto_1

    :pswitch_17
    invoke-virtual {p0, p2, v0}, Lcom/google/android/gms/internal/vision/x1;->z(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/vision/h2;->C(Ljava/lang/Object;J)D

    move-result-wide v4

    invoke-static {p1, v2, v3, v4, v5}, Lcom/google/android/gms/internal/vision/h2;->f(Ljava/lang/Object;JD)V

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/vision/x1;->G(Ljava/lang/Object;I)V

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x3

    goto/16 :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/x1;->o:Lcom/google/android/gms/internal/vision/a2;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/vision/L1;->o(Lcom/google/android/gms/internal/vision/a2;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/vision/x1;->f:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/vision/x1;->p:Lcom/google/android/gms/internal/vision/C0;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/vision/L1;->m(Lcom/google/android/gms/internal/vision/C0;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final g(Ljava/lang/Object;)I
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-boolean v2, v0, Lcom/google/android/gms/internal/vision/x1;->h:Z

    const/high16 v3, 0xff00000

    const/4 v6, 0x0

    const v7, 0xfffff

    const/4 v8, 0x1

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    if-eqz v2, :cond_5

    sget-object v2, Lcom/google/android/gms/internal/vision/x1;->s:Lsun/misc/Unsafe;

    move v12, v11

    move v13, v12

    :goto_0
    iget-object v14, v0, Lcom/google/android/gms/internal/vision/x1;->a:[I

    array-length v14, v14

    if-ge v12, v14, :cond_4

    invoke-virtual {v0, v12}, Lcom/google/android/gms/internal/vision/x1;->N(I)I

    move-result v14

    and-int v15, v14, v3

    ushr-int/lit8 v15, v15, 0x14

    iget-object v3, v0, Lcom/google/android/gms/internal/vision/x1;->a:[I

    aget v3, v3, v12

    and-int/2addr v14, v7

    int-to-long v4, v14

    sget-object v14, Lcom/google/android/gms/internal/vision/G0;->S:Lcom/google/android/gms/internal/vision/G0;

    invoke-virtual {v14}, Lcom/google/android/gms/internal/vision/G0;->a()I

    move-result v14

    if-lt v15, v14, :cond_0

    sget-object v14, Lcom/google/android/gms/internal/vision/G0;->f0:Lcom/google/android/gms/internal/vision/G0;

    invoke-virtual {v14}, Lcom/google/android/gms/internal/vision/G0;->a()I

    move-result v14

    if-gt v15, v14, :cond_0

    iget-object v14, v0, Lcom/google/android/gms/internal/vision/x1;->a:[I

    add-int/lit8 v17, v12, 0x2

    aget v14, v14, v17

    :cond_0
    packed-switch v15, :pswitch_data_0

    goto/16 :goto_3

    :pswitch_0
    invoke-virtual {v0, v1, v3, v12}, Lcom/google/android/gms/internal/vision/x1;->A(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-static {v1, v4, v5}, Lcom/google/android/gms/internal/vision/h2;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/vision/t1;

    invoke-virtual {v0, v12}, Lcom/google/android/gms/internal/vision/x1;->q(I)Lcom/google/android/gms/internal/vision/K1;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/google/android/gms/internal/vision/v0;->Q(ILcom/google/android/gms/internal/vision/t1;Lcom/google/android/gms/internal/vision/K1;)I

    move-result v3

    :goto_1
    add-int/2addr v13, v3

    goto/16 :goto_3

    :pswitch_1
    invoke-virtual {v0, v1, v3, v12}, Lcom/google/android/gms/internal/vision/x1;->A(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-static {v1, v4, v5}, Lcom/google/android/gms/internal/vision/x1;->Q(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/google/android/gms/internal/vision/v0;->i0(IJ)I

    move-result v3

    goto :goto_1

    :pswitch_2
    invoke-virtual {v0, v1, v3, v12}, Lcom/google/android/gms/internal/vision/x1;->A(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-static {v1, v4, v5}, Lcom/google/android/gms/internal/vision/x1;->O(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/vision/v0;->p0(II)I

    move-result v3

    goto :goto_1

    :pswitch_3
    invoke-virtual {v0, v1, v3, v12}, Lcom/google/android/gms/internal/vision/x1;->A(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {v3, v9, v10}, Lcom/google/android/gms/internal/vision/v0;->q0(IJ)I

    move-result v3

    goto :goto_1

    :pswitch_4
    invoke-virtual {v0, v1, v3, v12}, Lcom/google/android/gms/internal/vision/x1;->A(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {v3, v11}, Lcom/google/android/gms/internal/vision/v0;->w0(II)I

    move-result v3

    goto :goto_1

    :pswitch_5
    invoke-virtual {v0, v1, v3, v12}, Lcom/google/android/gms/internal/vision/x1;->A(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-static {v1, v4, v5}, Lcom/google/android/gms/internal/vision/x1;->O(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/vision/v0;->y0(II)I

    move-result v3

    goto :goto_1

    :pswitch_6
    invoke-virtual {v0, v1, v3, v12}, Lcom/google/android/gms/internal/vision/x1;->A(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-static {v1, v4, v5}, Lcom/google/android/gms/internal/vision/x1;->O(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/vision/v0;->l0(II)I

    move-result v3

    goto :goto_1

    :pswitch_7
    invoke-virtual {v0, v1, v3, v12}, Lcom/google/android/gms/internal/vision/x1;->A(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-static {v1, v4, v5}, Lcom/google/android/gms/internal/vision/h2;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/vision/g0;

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/vision/v0;->P(ILcom/google/android/gms/internal/vision/g0;)I

    move-result v3

    goto :goto_1

    :pswitch_8
    invoke-virtual {v0, v1, v3, v12}, Lcom/google/android/gms/internal/vision/x1;->A(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-static {v1, v4, v5}, Lcom/google/android/gms/internal/vision/h2;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v12}, Lcom/google/android/gms/internal/vision/x1;->q(I)Lcom/google/android/gms/internal/vision/K1;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/google/android/gms/internal/vision/L1;->a(ILjava/lang/Object;Lcom/google/android/gms/internal/vision/K1;)I

    move-result v3

    goto :goto_1

    :pswitch_9
    invoke-virtual {v0, v1, v3, v12}, Lcom/google/android/gms/internal/vision/x1;->A(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-static {v1, v4, v5}, Lcom/google/android/gms/internal/vision/h2;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Lcom/google/android/gms/internal/vision/g0;

    if-eqz v5, :cond_1

    check-cast v4, Lcom/google/android/gms/internal/vision/g0;

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/vision/v0;->P(ILcom/google/android/gms/internal/vision/g0;)I

    move-result v3

    goto/16 :goto_1

    :cond_1
    check-cast v4, Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/vision/v0;->C(ILjava/lang/String;)I

    move-result v3

    goto/16 :goto_1

    :pswitch_a
    invoke-virtual {v0, v1, v3, v12}, Lcom/google/android/gms/internal/vision/x1;->A(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {v3, v8}, Lcom/google/android/gms/internal/vision/v0;->D(IZ)I

    move-result v3

    goto/16 :goto_1

    :pswitch_b
    invoke-virtual {v0, v1, v3, v12}, Lcom/google/android/gms/internal/vision/x1;->A(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {v3, v11}, Lcom/google/android/gms/internal/vision/v0;->t0(II)I

    move-result v3

    goto/16 :goto_1

    :pswitch_c
    invoke-virtual {v0, v1, v3, v12}, Lcom/google/android/gms/internal/vision/x1;->A(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {v3, v9, v10}, Lcom/google/android/gms/internal/vision/v0;->m0(IJ)I

    move-result v3

    goto/16 :goto_1

    :pswitch_d
    invoke-virtual {v0, v1, v3, v12}, Lcom/google/android/gms/internal/vision/x1;->A(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-static {v1, v4, v5}, Lcom/google/android/gms/internal/vision/x1;->O(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/vision/v0;->h0(II)I

    move-result v3

    goto/16 :goto_1

    :pswitch_e
    invoke-virtual {v0, v1, v3, v12}, Lcom/google/android/gms/internal/vision/x1;->A(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-static {v1, v4, v5}, Lcom/google/android/gms/internal/vision/x1;->Q(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/google/android/gms/internal/vision/v0;->d0(IJ)I

    move-result v3

    goto/16 :goto_1

    :pswitch_f
    invoke-virtual {v0, v1, v3, v12}, Lcom/google/android/gms/internal/vision/x1;->A(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-static {v1, v4, v5}, Lcom/google/android/gms/internal/vision/x1;->Q(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/google/android/gms/internal/vision/v0;->X(IJ)I

    move-result v3

    goto/16 :goto_1

    :pswitch_10
    invoke-virtual {v0, v1, v3, v12}, Lcom/google/android/gms/internal/vision/x1;->A(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {v3, v6}, Lcom/google/android/gms/internal/vision/v0;->A(IF)I

    move-result v3

    goto/16 :goto_1

    :pswitch_11
    invoke-virtual {v0, v1, v3, v12}, Lcom/google/android/gms/internal/vision/x1;->A(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_3

    const-wide/16 v4, 0x0

    invoke-static {v3, v4, v5}, Lcom/google/android/gms/internal/vision/v0;->z(ID)I

    move-result v3

    goto/16 :goto_1

    :pswitch_12
    iget-object v14, v0, Lcom/google/android/gms/internal/vision/x1;->q:Lcom/google/android/gms/internal/vision/q1;

    invoke-static {v1, v4, v5}, Lcom/google/android/gms/internal/vision/h2;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v12}, Lcom/google/android/gms/internal/vision/x1;->F(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v14, v3, v4, v5}, Lcom/google/android/gms/internal/vision/q1;->j(ILjava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    goto/16 :goto_1

    :pswitch_13
    invoke-static {v1, v4, v5}, Lcom/google/android/gms/internal/vision/x1;->u(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v0, v12}, Lcom/google/android/gms/internal/vision/x1;->q(I)Lcom/google/android/gms/internal/vision/K1;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/google/android/gms/internal/vision/L1;->s(ILjava/util/List;Lcom/google/android/gms/internal/vision/K1;)I

    move-result v3

    goto/16 :goto_1

    :pswitch_14
    invoke-virtual {v2, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Lcom/google/android/gms/internal/vision/L1;->A(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_3

    invoke-static {v3}, Lcom/google/android/gms/internal/vision/v0;->c0(I)I

    move-result v3

    invoke-static {v4}, Lcom/google/android/gms/internal/vision/v0;->k0(I)I

    move-result v5

    :goto_2
    add-int/2addr v3, v5

    add-int/2addr v3, v4

    goto/16 :goto_1

    :pswitch_15
    invoke-virtual {v2, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Lcom/google/android/gms/internal/vision/L1;->P(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_3

    invoke-static {v3}, Lcom/google/android/gms/internal/vision/v0;->c0(I)I

    move-result v3

    invoke-static {v4}, Lcom/google/android/gms/internal/vision/v0;->k0(I)I

    move-result v5

    goto :goto_2

    :pswitch_16
    invoke-virtual {v2, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Lcom/google/android/gms/internal/vision/L1;->V(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_3

    invoke-static {v3}, Lcom/google/android/gms/internal/vision/v0;->c0(I)I

    move-result v3

    invoke-static {v4}, Lcom/google/android/gms/internal/vision/v0;->k0(I)I

    move-result v5

    goto :goto_2

    :pswitch_17
    invoke-virtual {v2, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Lcom/google/android/gms/internal/vision/L1;->S(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_3

    invoke-static {v3}, Lcom/google/android/gms/internal/vision/v0;->c0(I)I

    move-result v3

    invoke-static {v4}, Lcom/google/android/gms/internal/vision/v0;->k0(I)I

    move-result v5

    goto :goto_2

    :pswitch_18
    invoke-virtual {v2, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Lcom/google/android/gms/internal/vision/L1;->E(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_3

    invoke-static {v3}, Lcom/google/android/gms/internal/vision/v0;->c0(I)I

    move-result v3

    invoke-static {v4}, Lcom/google/android/gms/internal/vision/v0;->k0(I)I

    move-result v5

    goto :goto_2

    :pswitch_19
    invoke-virtual {v2, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Lcom/google/android/gms/internal/vision/L1;->M(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_3

    invoke-static {v3}, Lcom/google/android/gms/internal/vision/v0;->c0(I)I

    move-result v3

    invoke-static {v4}, Lcom/google/android/gms/internal/vision/v0;->k0(I)I

    move-result v5

    goto :goto_2

    :pswitch_1a
    invoke-virtual {v2, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Lcom/google/android/gms/internal/vision/L1;->Y(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_3

    invoke-static {v3}, Lcom/google/android/gms/internal/vision/v0;->c0(I)I

    move-result v3

    invoke-static {v4}, Lcom/google/android/gms/internal/vision/v0;->k0(I)I

    move-result v5

    goto/16 :goto_2

    :pswitch_1b
    invoke-virtual {v2, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Lcom/google/android/gms/internal/vision/L1;->S(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_3

    invoke-static {v3}, Lcom/google/android/gms/internal/vision/v0;->c0(I)I

    move-result v3

    invoke-static {v4}, Lcom/google/android/gms/internal/vision/v0;->k0(I)I

    move-result v5

    goto/16 :goto_2

    :pswitch_1c
    invoke-virtual {v2, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Lcom/google/android/gms/internal/vision/L1;->V(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_3

    invoke-static {v3}, Lcom/google/android/gms/internal/vision/v0;->c0(I)I

    move-result v3

    invoke-static {v4}, Lcom/google/android/gms/internal/vision/v0;->k0(I)I

    move-result v5

    goto/16 :goto_2

    :pswitch_1d
    invoke-virtual {v2, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Lcom/google/android/gms/internal/vision/L1;->I(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_3

    invoke-static {v3}, Lcom/google/android/gms/internal/vision/v0;->c0(I)I

    move-result v3

    invoke-static {v4}, Lcom/google/android/gms/internal/vision/v0;->k0(I)I

    move-result v5

    goto/16 :goto_2

    :pswitch_1e
    invoke-virtual {v2, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Lcom/google/android/gms/internal/vision/L1;->u(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_3

    invoke-static {v3}, Lcom/google/android/gms/internal/vision/v0;->c0(I)I

    move-result v3

    invoke-static {v4}, Lcom/google/android/gms/internal/vision/v0;->k0(I)I

    move-result v5

    goto/16 :goto_2

    :pswitch_1f
    invoke-virtual {v2, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Lcom/google/android/gms/internal/vision/L1;->e(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_3

    invoke-static {v3}, Lcom/google/android/gms/internal/vision/v0;->c0(I)I

    move-result v3

    invoke-static {v4}, Lcom/google/android/gms/internal/vision/v0;->k0(I)I

    move-result v5

    goto/16 :goto_2

    :pswitch_20
    invoke-virtual {v2, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Lcom/google/android/gms/internal/vision/L1;->S(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_3

    invoke-static {v3}, Lcom/google/android/gms/internal/vision/v0;->c0(I)I

    move-result v3

    invoke-static {v4}, Lcom/google/android/gms/internal/vision/v0;->k0(I)I

    move-result v5

    goto/16 :goto_2

    :pswitch_21
    invoke-virtual {v2, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Lcom/google/android/gms/internal/vision/L1;->V(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_3

    invoke-static {v3}, Lcom/google/android/gms/internal/vision/v0;->c0(I)I

    move-result v3

    invoke-static {v4}, Lcom/google/android/gms/internal/vision/v0;->k0(I)I

    move-result v5

    goto/16 :goto_2

    :pswitch_22
    invoke-static {v1, v4, v5}, Lcom/google/android/gms/internal/vision/x1;->u(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/vision/L1;->z(ILjava/util/List;Z)I

    move-result v3

    goto/16 :goto_1

    :pswitch_23
    invoke-static {v1, v4, v5}, Lcom/google/android/gms/internal/vision/x1;->u(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/vision/L1;->O(ILjava/util/List;Z)I

    move-result v3

    goto/16 :goto_1

    :pswitch_24
    invoke-static {v1, v4, v5}, Lcom/google/android/gms/internal/vision/x1;->u(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/vision/L1;->U(ILjava/util/List;Z)I

    move-result v3

    goto/16 :goto_1

    :pswitch_25
    invoke-static {v1, v4, v5}, Lcom/google/android/gms/internal/vision/x1;->u(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/vision/L1;->R(ILjava/util/List;Z)I

    move-result v3

    goto/16 :goto_1

    :pswitch_26
    invoke-static {v1, v4, v5}, Lcom/google/android/gms/internal/vision/x1;->u(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/vision/L1;->D(ILjava/util/List;Z)I

    move-result v3

    goto/16 :goto_1

    :pswitch_27
    invoke-static {v1, v4, v5}, Lcom/google/android/gms/internal/vision/x1;->u(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/vision/L1;->L(ILjava/util/List;Z)I

    move-result v3

    goto/16 :goto_1

    :pswitch_28
    invoke-static {v1, v4, v5}, Lcom/google/android/gms/internal/vision/x1;->u(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/vision/L1;->r(ILjava/util/List;)I

    move-result v3

    goto/16 :goto_1

    :pswitch_29
    invoke-static {v1, v4, v5}, Lcom/google/android/gms/internal/vision/x1;->u(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v0, v12}, Lcom/google/android/gms/internal/vision/x1;->q(I)Lcom/google/android/gms/internal/vision/K1;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/google/android/gms/internal/vision/L1;->c(ILjava/util/List;Lcom/google/android/gms/internal/vision/K1;)I

    move-result v3

    goto/16 :goto_1

    :pswitch_2a
    invoke-static {v1, v4, v5}, Lcom/google/android/gms/internal/vision/x1;->u(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/vision/L1;->b(ILjava/util/List;)I

    move-result v3

    goto/16 :goto_1

    :pswitch_2b
    invoke-static {v1, v4, v5}, Lcom/google/android/gms/internal/vision/x1;->u(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/vision/L1;->X(ILjava/util/List;Z)I

    move-result v3

    goto/16 :goto_1

    :pswitch_2c
    invoke-static {v1, v4, v5}, Lcom/google/android/gms/internal/vision/x1;->u(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/vision/L1;->R(ILjava/util/List;Z)I

    move-result v3

    goto/16 :goto_1

    :pswitch_2d
    invoke-static {v1, v4, v5}, Lcom/google/android/gms/internal/vision/x1;->u(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/vision/L1;->U(ILjava/util/List;Z)I

    move-result v3

    goto/16 :goto_1

    :pswitch_2e
    invoke-static {v1, v4, v5}, Lcom/google/android/gms/internal/vision/x1;->u(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/vision/L1;->H(ILjava/util/List;Z)I

    move-result v3

    goto/16 :goto_1

    :pswitch_2f
    invoke-static {v1, v4, v5}, Lcom/google/android/gms/internal/vision/x1;->u(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/vision/L1;->t(ILjava/util/List;Z)I

    move-result v3

    goto/16 :goto_1

    :pswitch_30
    invoke-static {v1, v4, v5}, Lcom/google/android/gms/internal/vision/x1;->u(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/vision/L1;->d(ILjava/util/List;Z)I

    move-result v3

    goto/16 :goto_1

    :pswitch_31
    invoke-static {v1, v4, v5}, Lcom/google/android/gms/internal/vision/x1;->u(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/vision/L1;->R(ILjava/util/List;Z)I

    move-result v3

    goto/16 :goto_1

    :pswitch_32
    invoke-static {v1, v4, v5}, Lcom/google/android/gms/internal/vision/x1;->u(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/vision/L1;->U(ILjava/util/List;Z)I

    move-result v3

    goto/16 :goto_1

    :pswitch_33
    invoke-virtual {v0, v1, v12}, Lcom/google/android/gms/internal/vision/x1;->z(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-static {v1, v4, v5}, Lcom/google/android/gms/internal/vision/h2;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/vision/t1;

    invoke-virtual {v0, v12}, Lcom/google/android/gms/internal/vision/x1;->q(I)Lcom/google/android/gms/internal/vision/K1;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/google/android/gms/internal/vision/v0;->Q(ILcom/google/android/gms/internal/vision/t1;Lcom/google/android/gms/internal/vision/K1;)I

    move-result v3

    goto/16 :goto_1

    :pswitch_34
    invoke-virtual {v0, v1, v12}, Lcom/google/android/gms/internal/vision/x1;->z(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-static {v1, v4, v5}, Lcom/google/android/gms/internal/vision/h2;->o(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/google/android/gms/internal/vision/v0;->i0(IJ)I

    move-result v3

    goto/16 :goto_1

    :pswitch_35
    invoke-virtual {v0, v1, v12}, Lcom/google/android/gms/internal/vision/x1;->z(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-static {v1, v4, v5}, Lcom/google/android/gms/internal/vision/h2;->b(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/vision/v0;->p0(II)I

    move-result v3

    goto/16 :goto_1

    :pswitch_36
    invoke-virtual {v0, v1, v12}, Lcom/google/android/gms/internal/vision/x1;->z(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {v3, v9, v10}, Lcom/google/android/gms/internal/vision/v0;->q0(IJ)I

    move-result v3

    goto/16 :goto_1

    :pswitch_37
    invoke-virtual {v0, v1, v12}, Lcom/google/android/gms/internal/vision/x1;->z(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {v3, v11}, Lcom/google/android/gms/internal/vision/v0;->w0(II)I

    move-result v3

    goto/16 :goto_1

    :pswitch_38
    invoke-virtual {v0, v1, v12}, Lcom/google/android/gms/internal/vision/x1;->z(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-static {v1, v4, v5}, Lcom/google/android/gms/internal/vision/h2;->b(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/vision/v0;->y0(II)I

    move-result v3

    goto/16 :goto_1

    :pswitch_39
    invoke-virtual {v0, v1, v12}, Lcom/google/android/gms/internal/vision/x1;->z(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-static {v1, v4, v5}, Lcom/google/android/gms/internal/vision/h2;->b(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/vision/v0;->l0(II)I

    move-result v3

    goto/16 :goto_1

    :pswitch_3a
    invoke-virtual {v0, v1, v12}, Lcom/google/android/gms/internal/vision/x1;->z(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-static {v1, v4, v5}, Lcom/google/android/gms/internal/vision/h2;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/vision/g0;

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/vision/v0;->P(ILcom/google/android/gms/internal/vision/g0;)I

    move-result v3

    goto/16 :goto_1

    :pswitch_3b
    invoke-virtual {v0, v1, v12}, Lcom/google/android/gms/internal/vision/x1;->z(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-static {v1, v4, v5}, Lcom/google/android/gms/internal/vision/h2;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v12}, Lcom/google/android/gms/internal/vision/x1;->q(I)Lcom/google/android/gms/internal/vision/K1;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/google/android/gms/internal/vision/L1;->a(ILjava/lang/Object;Lcom/google/android/gms/internal/vision/K1;)I

    move-result v3

    goto/16 :goto_1

    :pswitch_3c
    invoke-virtual {v0, v1, v12}, Lcom/google/android/gms/internal/vision/x1;->z(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-static {v1, v4, v5}, Lcom/google/android/gms/internal/vision/h2;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Lcom/google/android/gms/internal/vision/g0;

    if-eqz v5, :cond_2

    check-cast v4, Lcom/google/android/gms/internal/vision/g0;

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/vision/v0;->P(ILcom/google/android/gms/internal/vision/g0;)I

    move-result v3

    goto/16 :goto_1

    :cond_2
    check-cast v4, Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/vision/v0;->C(ILjava/lang/String;)I

    move-result v3

    goto/16 :goto_1

    :pswitch_3d
    invoke-virtual {v0, v1, v12}, Lcom/google/android/gms/internal/vision/x1;->z(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {v3, v8}, Lcom/google/android/gms/internal/vision/v0;->D(IZ)I

    move-result v3

    goto/16 :goto_1

    :pswitch_3e
    invoke-virtual {v0, v1, v12}, Lcom/google/android/gms/internal/vision/x1;->z(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {v3, v11}, Lcom/google/android/gms/internal/vision/v0;->t0(II)I

    move-result v3

    goto/16 :goto_1

    :pswitch_3f
    invoke-virtual {v0, v1, v12}, Lcom/google/android/gms/internal/vision/x1;->z(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {v3, v9, v10}, Lcom/google/android/gms/internal/vision/v0;->m0(IJ)I

    move-result v3

    goto/16 :goto_1

    :pswitch_40
    invoke-virtual {v0, v1, v12}, Lcom/google/android/gms/internal/vision/x1;->z(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-static {v1, v4, v5}, Lcom/google/android/gms/internal/vision/h2;->b(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/vision/v0;->h0(II)I

    move-result v3

    goto/16 :goto_1

    :pswitch_41
    invoke-virtual {v0, v1, v12}, Lcom/google/android/gms/internal/vision/x1;->z(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-static {v1, v4, v5}, Lcom/google/android/gms/internal/vision/h2;->o(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/google/android/gms/internal/vision/v0;->d0(IJ)I

    move-result v3

    goto/16 :goto_1

    :pswitch_42
    invoke-virtual {v0, v1, v12}, Lcom/google/android/gms/internal/vision/x1;->z(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-static {v1, v4, v5}, Lcom/google/android/gms/internal/vision/h2;->o(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/google/android/gms/internal/vision/v0;->X(IJ)I

    move-result v3

    goto/16 :goto_1

    :pswitch_43
    invoke-virtual {v0, v1, v12}, Lcom/google/android/gms/internal/vision/x1;->z(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {v3, v6}, Lcom/google/android/gms/internal/vision/v0;->A(IF)I

    move-result v3

    goto/16 :goto_1

    :pswitch_44
    invoke-virtual {v0, v1, v12}, Lcom/google/android/gms/internal/vision/x1;->z(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_3

    const-wide/16 v4, 0x0

    invoke-static {v3, v4, v5}, Lcom/google/android/gms/internal/vision/v0;->z(ID)I

    move-result v3

    goto/16 :goto_1

    :cond_3
    :goto_3
    add-int/lit8 v12, v12, 0x3

    const/high16 v3, 0xff00000

    goto/16 :goto_0

    :cond_4
    iget-object v2, v0, Lcom/google/android/gms/internal/vision/x1;->o:Lcom/google/android/gms/internal/vision/a2;

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/vision/x1;->k(Lcom/google/android/gms/internal/vision/a2;Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v13, v1

    return v13

    :cond_5
    sget-object v2, Lcom/google/android/gms/internal/vision/x1;->s:Lsun/misc/Unsafe;

    move v5, v7

    move v3, v11

    move v4, v3

    move v12, v4

    :goto_4
    iget-object v13, v0, Lcom/google/android/gms/internal/vision/x1;->a:[I

    array-length v13, v13

    if-ge v3, v13, :cond_f

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/vision/x1;->N(I)I

    move-result v13

    iget-object v14, v0, Lcom/google/android/gms/internal/vision/x1;->a:[I

    aget v15, v14, v3

    const/high16 v16, 0xff00000

    and-int v17, v13, v16

    ushr-int/lit8 v6, v17, 0x14

    const/16 v11, 0x11

    if-gt v6, v11, :cond_6

    add-int/lit8 v11, v3, 0x2

    aget v11, v14, v11

    and-int v14, v11, v7

    ushr-int/lit8 v11, v11, 0x14

    shl-int v11, v8, v11

    if-eq v14, v5, :cond_7

    int-to-long v8, v14

    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v12

    move v5, v14

    goto :goto_5

    :cond_6
    const/4 v11, 0x0

    :cond_7
    :goto_5
    and-int v8, v13, v7

    int-to-long v8, v8

    packed-switch v6, :pswitch_data_1

    goto :goto_7

    :pswitch_45
    invoke-virtual {v0, v1, v15, v3}, Lcom/google/android/gms/internal/vision/x1;->A(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/vision/t1;

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/vision/x1;->q(I)Lcom/google/android/gms/internal/vision/K1;

    move-result-object v8

    invoke-static {v15, v6, v8}, Lcom/google/android/gms/internal/vision/v0;->Q(ILcom/google/android/gms/internal/vision/t1;Lcom/google/android/gms/internal/vision/K1;)I

    move-result v6

    :goto_6
    add-int/2addr v4, v6

    :cond_8
    :goto_7
    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    :goto_8
    const-wide/16 v13, 0x0

    goto/16 :goto_f

    :pswitch_46
    invoke-virtual {v0, v1, v15, v3}, Lcom/google/android/gms/internal/vision/x1;->A(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-static {v1, v8, v9}, Lcom/google/android/gms/internal/vision/x1;->Q(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-static {v15, v8, v9}, Lcom/google/android/gms/internal/vision/v0;->i0(IJ)I

    move-result v6

    goto :goto_6

    :pswitch_47
    invoke-virtual {v0, v1, v15, v3}, Lcom/google/android/gms/internal/vision/x1;->A(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-static {v1, v8, v9}, Lcom/google/android/gms/internal/vision/x1;->O(Ljava/lang/Object;J)I

    move-result v6

    invoke-static {v15, v6}, Lcom/google/android/gms/internal/vision/v0;->p0(II)I

    move-result v6

    goto :goto_6

    :pswitch_48
    invoke-virtual {v0, v1, v15, v3}, Lcom/google/android/gms/internal/vision/x1;->A(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_8

    const-wide/16 v8, 0x0

    invoke-static {v15, v8, v9}, Lcom/google/android/gms/internal/vision/v0;->q0(IJ)I

    move-result v6

    goto :goto_6

    :pswitch_49
    invoke-virtual {v0, v1, v15, v3}, Lcom/google/android/gms/internal/vision/x1;->A(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_8

    const/4 v6, 0x0

    invoke-static {v15, v6}, Lcom/google/android/gms/internal/vision/v0;->w0(II)I

    move-result v8

    :goto_9
    add-int/2addr v4, v8

    goto :goto_7

    :pswitch_4a
    invoke-virtual {v0, v1, v15, v3}, Lcom/google/android/gms/internal/vision/x1;->A(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-static {v1, v8, v9}, Lcom/google/android/gms/internal/vision/x1;->O(Ljava/lang/Object;J)I

    move-result v6

    invoke-static {v15, v6}, Lcom/google/android/gms/internal/vision/v0;->y0(II)I

    move-result v6

    goto :goto_6

    :pswitch_4b
    invoke-virtual {v0, v1, v15, v3}, Lcom/google/android/gms/internal/vision/x1;->A(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-static {v1, v8, v9}, Lcom/google/android/gms/internal/vision/x1;->O(Ljava/lang/Object;J)I

    move-result v6

    invoke-static {v15, v6}, Lcom/google/android/gms/internal/vision/v0;->l0(II)I

    move-result v6

    goto :goto_6

    :pswitch_4c
    invoke-virtual {v0, v1, v15, v3}, Lcom/google/android/gms/internal/vision/x1;->A(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/vision/g0;

    invoke-static {v15, v6}, Lcom/google/android/gms/internal/vision/v0;->P(ILcom/google/android/gms/internal/vision/g0;)I

    move-result v6

    goto :goto_6

    :pswitch_4d
    invoke-virtual {v0, v1, v15, v3}, Lcom/google/android/gms/internal/vision/x1;->A(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/vision/x1;->q(I)Lcom/google/android/gms/internal/vision/K1;

    move-result-object v8

    invoke-static {v15, v6, v8}, Lcom/google/android/gms/internal/vision/L1;->a(ILjava/lang/Object;Lcom/google/android/gms/internal/vision/K1;)I

    move-result v6

    goto/16 :goto_6

    :pswitch_4e
    invoke-virtual {v0, v1, v15, v3}, Lcom/google/android/gms/internal/vision/x1;->A(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    instance-of v8, v6, Lcom/google/android/gms/internal/vision/g0;

    if-eqz v8, :cond_9

    check-cast v6, Lcom/google/android/gms/internal/vision/g0;

    invoke-static {v15, v6}, Lcom/google/android/gms/internal/vision/v0;->P(ILcom/google/android/gms/internal/vision/g0;)I

    move-result v6

    goto/16 :goto_6

    :cond_9
    check-cast v6, Ljava/lang/String;

    invoke-static {v15, v6}, Lcom/google/android/gms/internal/vision/v0;->C(ILjava/lang/String;)I

    move-result v6

    goto/16 :goto_6

    :pswitch_4f
    invoke-virtual {v0, v1, v15, v3}, Lcom/google/android/gms/internal/vision/x1;->A(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_8

    const/4 v6, 0x1

    invoke-static {v15, v6}, Lcom/google/android/gms/internal/vision/v0;->D(IZ)I

    move-result v8

    goto :goto_9

    :pswitch_50
    invoke-virtual {v0, v1, v15, v3}, Lcom/google/android/gms/internal/vision/x1;->A(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_8

    const/4 v6, 0x0

    invoke-static {v15, v6}, Lcom/google/android/gms/internal/vision/v0;->t0(II)I

    move-result v8

    goto :goto_9

    :pswitch_51
    invoke-virtual {v0, v1, v15, v3}, Lcom/google/android/gms/internal/vision/x1;->A(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_8

    const-wide/16 v8, 0x0

    invoke-static {v15, v8, v9}, Lcom/google/android/gms/internal/vision/v0;->m0(IJ)I

    move-result v6

    goto/16 :goto_6

    :pswitch_52
    invoke-virtual {v0, v1, v15, v3}, Lcom/google/android/gms/internal/vision/x1;->A(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-static {v1, v8, v9}, Lcom/google/android/gms/internal/vision/x1;->O(Ljava/lang/Object;J)I

    move-result v6

    invoke-static {v15, v6}, Lcom/google/android/gms/internal/vision/v0;->h0(II)I

    move-result v6

    goto/16 :goto_6

    :pswitch_53
    invoke-virtual {v0, v1, v15, v3}, Lcom/google/android/gms/internal/vision/x1;->A(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-static {v1, v8, v9}, Lcom/google/android/gms/internal/vision/x1;->Q(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-static {v15, v8, v9}, Lcom/google/android/gms/internal/vision/v0;->d0(IJ)I

    move-result v6

    goto/16 :goto_6

    :pswitch_54
    invoke-virtual {v0, v1, v15, v3}, Lcom/google/android/gms/internal/vision/x1;->A(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-static {v1, v8, v9}, Lcom/google/android/gms/internal/vision/x1;->Q(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-static {v15, v8, v9}, Lcom/google/android/gms/internal/vision/v0;->X(IJ)I

    move-result v6

    goto/16 :goto_6

    :pswitch_55
    invoke-virtual {v0, v1, v15, v3}, Lcom/google/android/gms/internal/vision/x1;->A(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_8

    const/4 v6, 0x0

    invoke-static {v15, v6}, Lcom/google/android/gms/internal/vision/v0;->A(IF)I

    move-result v8

    goto/16 :goto_9

    :pswitch_56
    invoke-virtual {v0, v1, v15, v3}, Lcom/google/android/gms/internal/vision/x1;->A(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_8

    const-wide/16 v8, 0x0

    invoke-static {v15, v8, v9}, Lcom/google/android/gms/internal/vision/v0;->z(ID)I

    move-result v6

    goto/16 :goto_6

    :pswitch_57
    iget-object v6, v0, Lcom/google/android/gms/internal/vision/x1;->q:Lcom/google/android/gms/internal/vision/q1;

    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/vision/x1;->F(I)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v6, v15, v8, v9}, Lcom/google/android/gms/internal/vision/q1;->j(ILjava/lang/Object;Ljava/lang/Object;)I

    move-result v6

    goto/16 :goto_6

    :pswitch_58
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/vision/x1;->q(I)Lcom/google/android/gms/internal/vision/K1;

    move-result-object v8

    invoke-static {v15, v6, v8}, Lcom/google/android/gms/internal/vision/L1;->s(ILjava/util/List;Lcom/google/android/gms/internal/vision/K1;)I

    move-result v6

    goto/16 :goto_6

    :pswitch_59
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v6}, Lcom/google/android/gms/internal/vision/L1;->A(Ljava/util/List;)I

    move-result v6

    if-lez v6, :cond_8

    invoke-static {v15}, Lcom/google/android/gms/internal/vision/v0;->c0(I)I

    move-result v8

    invoke-static {v6}, Lcom/google/android/gms/internal/vision/v0;->k0(I)I

    move-result v9

    :goto_a
    add-int/2addr v8, v9

    add-int/2addr v8, v6

    goto/16 :goto_9

    :pswitch_5a
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v6}, Lcom/google/android/gms/internal/vision/L1;->P(Ljava/util/List;)I

    move-result v6

    if-lez v6, :cond_8

    invoke-static {v15}, Lcom/google/android/gms/internal/vision/v0;->c0(I)I

    move-result v8

    invoke-static {v6}, Lcom/google/android/gms/internal/vision/v0;->k0(I)I

    move-result v9

    goto :goto_a

    :pswitch_5b
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v6}, Lcom/google/android/gms/internal/vision/L1;->V(Ljava/util/List;)I

    move-result v6

    if-lez v6, :cond_8

    invoke-static {v15}, Lcom/google/android/gms/internal/vision/v0;->c0(I)I

    move-result v8

    invoke-static {v6}, Lcom/google/android/gms/internal/vision/v0;->k0(I)I

    move-result v9

    goto :goto_a

    :pswitch_5c
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v6}, Lcom/google/android/gms/internal/vision/L1;->S(Ljava/util/List;)I

    move-result v6

    if-lez v6, :cond_8

    invoke-static {v15}, Lcom/google/android/gms/internal/vision/v0;->c0(I)I

    move-result v8

    invoke-static {v6}, Lcom/google/android/gms/internal/vision/v0;->k0(I)I

    move-result v9

    goto :goto_a

    :pswitch_5d
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v6}, Lcom/google/android/gms/internal/vision/L1;->E(Ljava/util/List;)I

    move-result v6

    if-lez v6, :cond_8

    invoke-static {v15}, Lcom/google/android/gms/internal/vision/v0;->c0(I)I

    move-result v8

    invoke-static {v6}, Lcom/google/android/gms/internal/vision/v0;->k0(I)I

    move-result v9

    goto :goto_a

    :pswitch_5e
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v6}, Lcom/google/android/gms/internal/vision/L1;->M(Ljava/util/List;)I

    move-result v6

    if-lez v6, :cond_8

    invoke-static {v15}, Lcom/google/android/gms/internal/vision/v0;->c0(I)I

    move-result v8

    invoke-static {v6}, Lcom/google/android/gms/internal/vision/v0;->k0(I)I

    move-result v9

    goto :goto_a

    :pswitch_5f
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v6}, Lcom/google/android/gms/internal/vision/L1;->Y(Ljava/util/List;)I

    move-result v6

    if-lez v6, :cond_8

    invoke-static {v15}, Lcom/google/android/gms/internal/vision/v0;->c0(I)I

    move-result v8

    invoke-static {v6}, Lcom/google/android/gms/internal/vision/v0;->k0(I)I

    move-result v9

    goto/16 :goto_a

    :pswitch_60
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v6}, Lcom/google/android/gms/internal/vision/L1;->S(Ljava/util/List;)I

    move-result v6

    if-lez v6, :cond_8

    invoke-static {v15}, Lcom/google/android/gms/internal/vision/v0;->c0(I)I

    move-result v8

    invoke-static {v6}, Lcom/google/android/gms/internal/vision/v0;->k0(I)I

    move-result v9

    goto/16 :goto_a

    :pswitch_61
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v6}, Lcom/google/android/gms/internal/vision/L1;->V(Ljava/util/List;)I

    move-result v6

    if-lez v6, :cond_8

    invoke-static {v15}, Lcom/google/android/gms/internal/vision/v0;->c0(I)I

    move-result v8

    invoke-static {v6}, Lcom/google/android/gms/internal/vision/v0;->k0(I)I

    move-result v9

    goto/16 :goto_a

    :pswitch_62
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v6}, Lcom/google/android/gms/internal/vision/L1;->I(Ljava/util/List;)I

    move-result v6

    if-lez v6, :cond_8

    invoke-static {v15}, Lcom/google/android/gms/internal/vision/v0;->c0(I)I

    move-result v8

    invoke-static {v6}, Lcom/google/android/gms/internal/vision/v0;->k0(I)I

    move-result v9

    goto/16 :goto_a

    :pswitch_63
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v6}, Lcom/google/android/gms/internal/vision/L1;->u(Ljava/util/List;)I

    move-result v6

    if-lez v6, :cond_8

    invoke-static {v15}, Lcom/google/android/gms/internal/vision/v0;->c0(I)I

    move-result v8

    invoke-static {v6}, Lcom/google/android/gms/internal/vision/v0;->k0(I)I

    move-result v9

    goto/16 :goto_a

    :pswitch_64
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v6}, Lcom/google/android/gms/internal/vision/L1;->e(Ljava/util/List;)I

    move-result v6

    if-lez v6, :cond_8

    invoke-static {v15}, Lcom/google/android/gms/internal/vision/v0;->c0(I)I

    move-result v8

    invoke-static {v6}, Lcom/google/android/gms/internal/vision/v0;->k0(I)I

    move-result v9

    goto/16 :goto_a

    :pswitch_65
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v6}, Lcom/google/android/gms/internal/vision/L1;->S(Ljava/util/List;)I

    move-result v6

    if-lez v6, :cond_8

    invoke-static {v15}, Lcom/google/android/gms/internal/vision/v0;->c0(I)I

    move-result v8

    invoke-static {v6}, Lcom/google/android/gms/internal/vision/v0;->k0(I)I

    move-result v9

    goto/16 :goto_a

    :pswitch_66
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v6}, Lcom/google/android/gms/internal/vision/L1;->V(Ljava/util/List;)I

    move-result v6

    if-lez v6, :cond_8

    invoke-static {v15}, Lcom/google/android/gms/internal/vision/v0;->c0(I)I

    move-result v8

    invoke-static {v6}, Lcom/google/android/gms/internal/vision/v0;->k0(I)I

    move-result v9

    goto/16 :goto_a

    :pswitch_67
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    const/4 v10, 0x0

    invoke-static {v15, v6, v10}, Lcom/google/android/gms/internal/vision/L1;->z(ILjava/util/List;Z)I

    move-result v6

    :goto_b
    add-int/2addr v4, v6

    :cond_a
    :goto_c
    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    goto/16 :goto_8

    :pswitch_68
    const/4 v10, 0x0

    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v15, v6, v10}, Lcom/google/android/gms/internal/vision/L1;->O(ILjava/util/List;Z)I

    move-result v6

    goto :goto_b

    :pswitch_69
    const/4 v10, 0x0

    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v15, v6, v10}, Lcom/google/android/gms/internal/vision/L1;->U(ILjava/util/List;Z)I

    move-result v6

    goto :goto_b

    :pswitch_6a
    const/4 v10, 0x0

    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v15, v6, v10}, Lcom/google/android/gms/internal/vision/L1;->R(ILjava/util/List;Z)I

    move-result v6

    goto :goto_b

    :pswitch_6b
    const/4 v10, 0x0

    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v15, v6, v10}, Lcom/google/android/gms/internal/vision/L1;->D(ILjava/util/List;Z)I

    move-result v6

    goto :goto_b

    :pswitch_6c
    const/4 v10, 0x0

    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v15, v6, v10}, Lcom/google/android/gms/internal/vision/L1;->L(ILjava/util/List;Z)I

    move-result v6

    goto/16 :goto_6

    :pswitch_6d
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v15, v6}, Lcom/google/android/gms/internal/vision/L1;->r(ILjava/util/List;)I

    move-result v6

    goto/16 :goto_6

    :pswitch_6e
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/vision/x1;->q(I)Lcom/google/android/gms/internal/vision/K1;

    move-result-object v8

    invoke-static {v15, v6, v8}, Lcom/google/android/gms/internal/vision/L1;->c(ILjava/util/List;Lcom/google/android/gms/internal/vision/K1;)I

    move-result v6

    goto/16 :goto_6

    :pswitch_6f
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v15, v6}, Lcom/google/android/gms/internal/vision/L1;->b(ILjava/util/List;)I

    move-result v6

    goto/16 :goto_6

    :pswitch_70
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    const/4 v10, 0x0

    invoke-static {v15, v6, v10}, Lcom/google/android/gms/internal/vision/L1;->X(ILjava/util/List;Z)I

    move-result v6

    goto :goto_b

    :pswitch_71
    const/4 v10, 0x0

    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v15, v6, v10}, Lcom/google/android/gms/internal/vision/L1;->R(ILjava/util/List;Z)I

    move-result v6

    goto/16 :goto_b

    :pswitch_72
    const/4 v10, 0x0

    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v15, v6, v10}, Lcom/google/android/gms/internal/vision/L1;->U(ILjava/util/List;Z)I

    move-result v6

    goto/16 :goto_b

    :pswitch_73
    const/4 v10, 0x0

    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v15, v6, v10}, Lcom/google/android/gms/internal/vision/L1;->H(ILjava/util/List;Z)I

    move-result v6

    goto/16 :goto_b

    :pswitch_74
    const/4 v10, 0x0

    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v15, v6, v10}, Lcom/google/android/gms/internal/vision/L1;->t(ILjava/util/List;Z)I

    move-result v6

    goto/16 :goto_b

    :pswitch_75
    const/4 v10, 0x0

    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v15, v6, v10}, Lcom/google/android/gms/internal/vision/L1;->d(ILjava/util/List;Z)I

    move-result v6

    goto/16 :goto_b

    :pswitch_76
    const/4 v10, 0x0

    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v15, v6, v10}, Lcom/google/android/gms/internal/vision/L1;->R(ILjava/util/List;Z)I

    move-result v6

    goto/16 :goto_b

    :pswitch_77
    const/4 v10, 0x0

    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v15, v6, v10}, Lcom/google/android/gms/internal/vision/L1;->U(ILjava/util/List;Z)I

    move-result v6

    goto/16 :goto_6

    :pswitch_78
    and-int v6, v12, v11

    if-eqz v6, :cond_8

    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/vision/t1;

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/vision/x1;->q(I)Lcom/google/android/gms/internal/vision/K1;

    move-result-object v8

    invoke-static {v15, v6, v8}, Lcom/google/android/gms/internal/vision/v0;->Q(ILcom/google/android/gms/internal/vision/t1;Lcom/google/android/gms/internal/vision/K1;)I

    move-result v6

    goto/16 :goto_6

    :pswitch_79
    and-int v6, v12, v11

    if-eqz v6, :cond_8

    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-static {v15, v8, v9}, Lcom/google/android/gms/internal/vision/v0;->i0(IJ)I

    move-result v6

    goto/16 :goto_6

    :pswitch_7a
    and-int v6, v12, v11

    if-eqz v6, :cond_8

    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v6

    invoke-static {v15, v6}, Lcom/google/android/gms/internal/vision/v0;->p0(II)I

    move-result v6

    goto/16 :goto_6

    :pswitch_7b
    and-int v6, v12, v11

    if-eqz v6, :cond_8

    const-wide/16 v8, 0x0

    invoke-static {v15, v8, v9}, Lcom/google/android/gms/internal/vision/v0;->q0(IJ)I

    move-result v6

    goto/16 :goto_6

    :pswitch_7c
    and-int v6, v12, v11

    if-eqz v6, :cond_8

    const/4 v6, 0x0

    invoke-static {v15, v6}, Lcom/google/android/gms/internal/vision/v0;->w0(II)I

    move-result v8

    goto/16 :goto_9

    :pswitch_7d
    and-int v6, v12, v11

    if-eqz v6, :cond_8

    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v6

    invoke-static {v15, v6}, Lcom/google/android/gms/internal/vision/v0;->y0(II)I

    move-result v6

    goto/16 :goto_6

    :pswitch_7e
    and-int v6, v12, v11

    if-eqz v6, :cond_8

    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v6

    invoke-static {v15, v6}, Lcom/google/android/gms/internal/vision/v0;->l0(II)I

    move-result v6

    goto/16 :goto_6

    :pswitch_7f
    and-int v6, v12, v11

    if-eqz v6, :cond_8

    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/vision/g0;

    invoke-static {v15, v6}, Lcom/google/android/gms/internal/vision/v0;->P(ILcom/google/android/gms/internal/vision/g0;)I

    move-result v6

    goto/16 :goto_6

    :pswitch_80
    and-int v6, v12, v11

    if-eqz v6, :cond_8

    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/vision/x1;->q(I)Lcom/google/android/gms/internal/vision/K1;

    move-result-object v8

    invoke-static {v15, v6, v8}, Lcom/google/android/gms/internal/vision/L1;->a(ILjava/lang/Object;Lcom/google/android/gms/internal/vision/K1;)I

    move-result v6

    goto/16 :goto_6

    :pswitch_81
    and-int v6, v12, v11

    if-eqz v6, :cond_8

    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    instance-of v8, v6, Lcom/google/android/gms/internal/vision/g0;

    if-eqz v8, :cond_b

    check-cast v6, Lcom/google/android/gms/internal/vision/g0;

    invoke-static {v15, v6}, Lcom/google/android/gms/internal/vision/v0;->P(ILcom/google/android/gms/internal/vision/g0;)I

    move-result v6

    goto/16 :goto_6

    :cond_b
    check-cast v6, Ljava/lang/String;

    invoke-static {v15, v6}, Lcom/google/android/gms/internal/vision/v0;->C(ILjava/lang/String;)I

    move-result v6

    goto/16 :goto_6

    :pswitch_82
    and-int v6, v12, v11

    if-eqz v6, :cond_8

    const/4 v6, 0x1

    invoke-static {v15, v6}, Lcom/google/android/gms/internal/vision/v0;->D(IZ)I

    move-result v8

    goto/16 :goto_9

    :pswitch_83
    const/4 v6, 0x1

    and-int v8, v12, v11

    const/4 v10, 0x0

    if-eqz v8, :cond_a

    invoke-static {v15, v10}, Lcom/google/android/gms/internal/vision/v0;->t0(II)I

    move-result v8

    add-int/2addr v4, v8

    goto/16 :goto_c

    :pswitch_84
    const/4 v6, 0x1

    const/4 v10, 0x0

    and-int v8, v12, v11

    const-wide/16 v13, 0x0

    if-eqz v8, :cond_c

    invoke-static {v15, v13, v14}, Lcom/google/android/gms/internal/vision/v0;->m0(IJ)I

    move-result v8

    :goto_d
    add-int/2addr v4, v8

    :cond_c
    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    goto :goto_f

    :pswitch_85
    const/4 v6, 0x1

    const/4 v10, 0x0

    const-wide/16 v13, 0x0

    and-int/2addr v11, v12

    if-eqz v11, :cond_c

    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v8

    invoke-static {v15, v8}, Lcom/google/android/gms/internal/vision/v0;->h0(II)I

    move-result v8

    goto :goto_d

    :pswitch_86
    const/4 v6, 0x1

    const/4 v10, 0x0

    const-wide/16 v13, 0x0

    and-int/2addr v11, v12

    if-eqz v11, :cond_c

    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-static {v15, v8, v9}, Lcom/google/android/gms/internal/vision/v0;->d0(IJ)I

    move-result v8

    goto :goto_d

    :pswitch_87
    const/4 v6, 0x1

    const/4 v10, 0x0

    const-wide/16 v13, 0x0

    and-int/2addr v11, v12

    if-eqz v11, :cond_c

    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-static {v15, v8, v9}, Lcom/google/android/gms/internal/vision/v0;->X(IJ)I

    move-result v8

    goto :goto_d

    :pswitch_88
    const/4 v6, 0x1

    const/4 v10, 0x0

    const-wide/16 v13, 0x0

    and-int v8, v12, v11

    if-eqz v8, :cond_d

    const/4 v8, 0x0

    invoke-static {v15, v8}, Lcom/google/android/gms/internal/vision/v0;->A(IF)I

    move-result v9

    add-int/2addr v4, v9

    :goto_e
    const-wide/16 v6, 0x0

    goto :goto_f

    :cond_d
    const/4 v8, 0x0

    goto :goto_e

    :pswitch_89
    const/4 v6, 0x1

    const/4 v8, 0x0

    const/4 v10, 0x0

    const-wide/16 v13, 0x0

    and-int v9, v12, v11

    const-wide/16 v6, 0x0

    if-eqz v9, :cond_e

    invoke-static {v15, v6, v7}, Lcom/google/android/gms/internal/vision/v0;->z(ID)I

    move-result v11

    add-int/2addr v4, v11

    :cond_e
    :goto_f
    add-int/lit8 v3, v3, 0x3

    move v6, v8

    move v11, v10

    move-wide v9, v13

    const v7, 0xfffff

    const/4 v8, 0x1

    goto/16 :goto_4

    :cond_f
    move v10, v11

    iget-object v2, v0, Lcom/google/android/gms/internal/vision/x1;->o:Lcom/google/android/gms/internal/vision/a2;

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/vision/x1;->k(Lcom/google/android/gms/internal/vision/a2;Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v4, v2

    iget-boolean v2, v0, Lcom/google/android/gms/internal/vision/x1;->f:Z

    if-eqz v2, :cond_12

    iget-object v2, v0, Lcom/google/android/gms/internal/vision/x1;->p:Lcom/google/android/gms/internal/vision/C0;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/vision/C0;->b(Ljava/lang/Object;)Lcom/google/android/gms/internal/vision/F0;

    move-result-object v1

    move v11, v10

    :goto_10
    iget-object v2, v1, Lcom/google/android/gms/internal/vision/F0;->a:Lcom/google/android/gms/internal/vision/O1;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/vision/O1;->j()I

    move-result v2

    const/4 v3, 0x0

    if-ge v11, v2, :cond_10

    iget-object v2, v1, Lcom/google/android/gms/internal/vision/F0;->a:Lcom/google/android/gms/internal/vision/O1;

    invoke-virtual {v2, v11}, Lcom/google/android/gms/internal/vision/O1;->h(I)Ljava/util/Map$Entry;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Landroid/support/v4/media/session/b;->a(Ljava/lang/Object;)V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/vision/F0;->h(Lcom/google/android/gms/internal/vision/H0;Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v10, v2

    add-int/lit8 v11, v11, 0x1

    goto :goto_10

    :cond_10
    iget-object v1, v1, Lcom/google/android/gms/internal/vision/F0;->a:Lcom/google/android/gms/internal/vision/O1;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/vision/O1;->m()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Landroid/support/v4/media/session/b;->a(Ljava/lang/Object;)V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/vision/F0;->h(Lcom/google/android/gms/internal/vision/H0;Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v10, v2

    goto :goto_11

    :cond_11
    add-int/2addr v4, v10

    :cond_12
    return v4

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_89
        :pswitch_88
        :pswitch_87
        :pswitch_86
        :pswitch_85
        :pswitch_84
        :pswitch_83
        :pswitch_82
        :pswitch_81
        :pswitch_80
        :pswitch_7f
        :pswitch_7e
        :pswitch_7d
        :pswitch_7c
        :pswitch_7b
        :pswitch_7a
        :pswitch_79
        :pswitch_78
        :pswitch_77
        :pswitch_76
        :pswitch_75
        :pswitch_74
        :pswitch_73
        :pswitch_72
        :pswitch_71
        :pswitch_70
        :pswitch_6f
        :pswitch_6e
        :pswitch_6d
        :pswitch_6c
        :pswitch_6b
        :pswitch_6a
        :pswitch_69
        :pswitch_68
        :pswitch_67
        :pswitch_66
        :pswitch_65
        :pswitch_64
        :pswitch_63
        :pswitch_62
        :pswitch_61
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
    .end packed-switch
.end method

.method public final h(Ljava/lang/Object;Lcom/google/android/gms/internal/vision/y2;)V
    .locals 13

    invoke-interface {p2}, Lcom/google/android/gms/internal/vision/y2;->a()I

    move-result v0

    sget v1, Lcom/google/android/gms/internal/vision/x2;->b:I

    const/high16 v2, 0xff00000

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const v6, 0xfffff

    if-ne v0, v1, :cond_7

    iget-object v0, p0, Lcom/google/android/gms/internal/vision/x1;->o:Lcom/google/android/gms/internal/vision/a2;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/vision/x1;->w(Lcom/google/android/gms/internal/vision/a2;Ljava/lang/Object;Lcom/google/android/gms/internal/vision/y2;)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/vision/x1;->f:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/vision/x1;->p:Lcom/google/android/gms/internal/vision/C0;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/vision/C0;->b(Ljava/lang/Object;)Lcom/google/android/gms/internal/vision/F0;

    move-result-object v0

    iget-object v1, v0, Lcom/google/android/gms/internal/vision/F0;->a:Lcom/google/android/gms/internal/vision/O1;

    invoke-virtual {v1}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/F0;->l()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    goto :goto_0

    :cond_0
    move-object v0, v3

    move-object v1, v0

    :goto_0
    iget-object v7, p0, Lcom/google/android/gms/internal/vision/x1;->a:[I

    array-length v7, v7

    add-int/lit8 v7, v7, -0x3

    :goto_1
    if-ltz v7, :cond_4

    invoke-virtual {p0, v7}, Lcom/google/android/gms/internal/vision/x1;->N(I)I

    move-result v8

    iget-object v9, p0, Lcom/google/android/gms/internal/vision/x1;->a:[I

    aget v9, v9, v7

    :goto_2
    if-eqz v1, :cond_2

    iget-object v10, p0, Lcom/google/android/gms/internal/vision/x1;->p:Lcom/google/android/gms/internal/vision/C0;

    invoke-virtual {v10, v1}, Lcom/google/android/gms/internal/vision/C0;->a(Ljava/util/Map$Entry;)I

    move-result v10

    if-le v10, v9, :cond_2

    iget-object v10, p0, Lcom/google/android/gms/internal/vision/x1;->p:Lcom/google/android/gms/internal/vision/C0;

    invoke-virtual {v10, p2, v1}, Lcom/google/android/gms/internal/vision/C0;->c(Lcom/google/android/gms/internal/vision/y2;Ljava/util/Map$Entry;)V

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    goto :goto_2

    :cond_1
    move-object v1, v3

    goto :goto_2

    :cond_2
    and-int v10, v8, v2

    ushr-int/lit8 v10, v10, 0x14

    packed-switch v10, :pswitch_data_0

    goto/16 :goto_3

    :pswitch_0
    invoke-virtual {p0, p1, v9, v7}, Lcom/google/android/gms/internal/vision/x1;->A(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/h2;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {p0, v7}, Lcom/google/android/gms/internal/vision/x1;->q(I)Lcom/google/android/gms/internal/vision/K1;

    move-result-object v10

    invoke-interface {p2, v9, v8, v10}, Lcom/google/android/gms/internal/vision/y2;->N(ILjava/lang/Object;Lcom/google/android/gms/internal/vision/K1;)V

    goto/16 :goto_3

    :pswitch_1
    invoke-virtual {p0, p1, v9, v7}, Lcom/google/android/gms/internal/vision/x1;->A(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/x1;->Q(Ljava/lang/Object;J)J

    move-result-wide v10

    invoke-interface {p2, v9, v10, v11}, Lcom/google/android/gms/internal/vision/y2;->M(IJ)V

    goto/16 :goto_3

    :pswitch_2
    invoke-virtual {p0, p1, v9, v7}, Lcom/google/android/gms/internal/vision/x1;->A(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/x1;->O(Ljava/lang/Object;J)I

    move-result v8

    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/vision/y2;->e(II)V

    goto/16 :goto_3

    :pswitch_3
    invoke-virtual {p0, p1, v9, v7}, Lcom/google/android/gms/internal/vision/x1;->A(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/x1;->Q(Ljava/lang/Object;J)J

    move-result-wide v10

    invoke-interface {p2, v9, v10, v11}, Lcom/google/android/gms/internal/vision/y2;->h(IJ)V

    goto/16 :goto_3

    :pswitch_4
    invoke-virtual {p0, p1, v9, v7}, Lcom/google/android/gms/internal/vision/x1;->A(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/x1;->O(Ljava/lang/Object;J)I

    move-result v8

    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/vision/y2;->B(II)V

    goto/16 :goto_3

    :pswitch_5
    invoke-virtual {p0, p1, v9, v7}, Lcom/google/android/gms/internal/vision/x1;->A(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/x1;->O(Ljava/lang/Object;J)I

    move-result v8

    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/vision/y2;->H(II)V

    goto/16 :goto_3

    :pswitch_6
    invoke-virtual {p0, p1, v9, v7}, Lcom/google/android/gms/internal/vision/x1;->A(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/x1;->O(Ljava/lang/Object;J)I

    move-result v8

    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/vision/y2;->y(II)V

    goto/16 :goto_3

    :pswitch_7
    invoke-virtual {p0, p1, v9, v7}, Lcom/google/android/gms/internal/vision/x1;->A(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/h2;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/vision/g0;

    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/vision/y2;->G(ILcom/google/android/gms/internal/vision/g0;)V

    goto/16 :goto_3

    :pswitch_8
    invoke-virtual {p0, p1, v9, v7}, Lcom/google/android/gms/internal/vision/x1;->A(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/h2;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {p0, v7}, Lcom/google/android/gms/internal/vision/x1;->q(I)Lcom/google/android/gms/internal/vision/K1;

    move-result-object v10

    invoke-interface {p2, v9, v8, v10}, Lcom/google/android/gms/internal/vision/y2;->K(ILjava/lang/Object;Lcom/google/android/gms/internal/vision/K1;)V

    goto/16 :goto_3

    :pswitch_9
    invoke-virtual {p0, p1, v9, v7}, Lcom/google/android/gms/internal/vision/x1;->A(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/h2;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v9, v8, p2}, Lcom/google/android/gms/internal/vision/x1;->v(ILjava/lang/Object;Lcom/google/android/gms/internal/vision/y2;)V

    goto/16 :goto_3

    :pswitch_a
    invoke-virtual {p0, p1, v9, v7}, Lcom/google/android/gms/internal/vision/x1;->A(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/x1;->S(Ljava/lang/Object;J)Z

    move-result v8

    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/vision/y2;->F(IZ)V

    goto/16 :goto_3

    :pswitch_b
    invoke-virtual {p0, p1, v9, v7}, Lcom/google/android/gms/internal/vision/x1;->A(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/x1;->O(Ljava/lang/Object;J)I

    move-result v8

    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/vision/y2;->s(II)V

    goto/16 :goto_3

    :pswitch_c
    invoke-virtual {p0, p1, v9, v7}, Lcom/google/android/gms/internal/vision/x1;->A(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/x1;->Q(Ljava/lang/Object;J)J

    move-result-wide v10

    invoke-interface {p2, v9, v10, v11}, Lcom/google/android/gms/internal/vision/y2;->L(IJ)V

    goto/16 :goto_3

    :pswitch_d
    invoke-virtual {p0, p1, v9, v7}, Lcom/google/android/gms/internal/vision/x1;->A(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/x1;->O(Ljava/lang/Object;J)I

    move-result v8

    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/vision/y2;->m(II)V

    goto/16 :goto_3

    :pswitch_e
    invoke-virtual {p0, p1, v9, v7}, Lcom/google/android/gms/internal/vision/x1;->A(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/x1;->Q(Ljava/lang/Object;J)J

    move-result-wide v10

    invoke-interface {p2, v9, v10, v11}, Lcom/google/android/gms/internal/vision/y2;->n(IJ)V

    goto/16 :goto_3

    :pswitch_f
    invoke-virtual {p0, p1, v9, v7}, Lcom/google/android/gms/internal/vision/x1;->A(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/x1;->Q(Ljava/lang/Object;J)J

    move-result-wide v10

    invoke-interface {p2, v9, v10, v11}, Lcom/google/android/gms/internal/vision/y2;->C(IJ)V

    goto/16 :goto_3

    :pswitch_10
    invoke-virtual {p0, p1, v9, v7}, Lcom/google/android/gms/internal/vision/x1;->A(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/x1;->K(Ljava/lang/Object;J)F

    move-result v8

    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/vision/y2;->E(IF)V

    goto/16 :goto_3

    :pswitch_11
    invoke-virtual {p0, p1, v9, v7}, Lcom/google/android/gms/internal/vision/x1;->A(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/x1;->D(Ljava/lang/Object;J)D

    move-result-wide v10

    invoke-interface {p2, v9, v10, v11}, Lcom/google/android/gms/internal/vision/y2;->D(ID)V

    goto/16 :goto_3

    :pswitch_12
    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/h2;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {p0, p2, v9, v8, v7}, Lcom/google/android/gms/internal/vision/x1;->x(Lcom/google/android/gms/internal/vision/y2;ILjava/lang/Object;I)V

    goto/16 :goto_3

    :pswitch_13
    iget-object v9, p0, Lcom/google/android/gms/internal/vision/x1;->a:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/h2;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-virtual {p0, v7}, Lcom/google/android/gms/internal/vision/x1;->q(I)Lcom/google/android/gms/internal/vision/K1;

    move-result-object v10

    invoke-static {v9, v8, p2, v10}, Lcom/google/android/gms/internal/vision/L1;->x(ILjava/util/List;Lcom/google/android/gms/internal/vision/y2;Lcom/google/android/gms/internal/vision/K1;)V

    goto/16 :goto_3

    :pswitch_14
    iget-object v9, p0, Lcom/google/android/gms/internal/vision/x1;->a:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/h2;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, p2, v4}, Lcom/google/android/gms/internal/vision/L1;->K(ILjava/util/List;Lcom/google/android/gms/internal/vision/y2;Z)V

    goto/16 :goto_3

    :pswitch_15
    iget-object v9, p0, Lcom/google/android/gms/internal/vision/x1;->a:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/h2;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, p2, v4}, Lcom/google/android/gms/internal/vision/L1;->Z(ILjava/util/List;Lcom/google/android/gms/internal/vision/y2;Z)V

    goto/16 :goto_3

    :pswitch_16
    iget-object v9, p0, Lcom/google/android/gms/internal/vision/x1;->a:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/h2;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, p2, v4}, Lcom/google/android/gms/internal/vision/L1;->Q(ILjava/util/List;Lcom/google/android/gms/internal/vision/y2;Z)V

    goto/16 :goto_3

    :pswitch_17
    iget-object v9, p0, Lcom/google/android/gms/internal/vision/x1;->a:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/h2;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, p2, v4}, Lcom/google/android/gms/internal/vision/L1;->b0(ILjava/util/List;Lcom/google/android/gms/internal/vision/y2;Z)V

    goto/16 :goto_3

    :pswitch_18
    iget-object v9, p0, Lcom/google/android/gms/internal/vision/x1;->a:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/h2;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, p2, v4}, Lcom/google/android/gms/internal/vision/L1;->c0(ILjava/util/List;Lcom/google/android/gms/internal/vision/y2;Z)V

    goto/16 :goto_3

    :pswitch_19
    iget-object v9, p0, Lcom/google/android/gms/internal/vision/x1;->a:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/h2;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, p2, v4}, Lcom/google/android/gms/internal/vision/L1;->W(ILjava/util/List;Lcom/google/android/gms/internal/vision/y2;Z)V

    goto/16 :goto_3

    :pswitch_1a
    iget-object v9, p0, Lcom/google/android/gms/internal/vision/x1;->a:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/h2;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, p2, v4}, Lcom/google/android/gms/internal/vision/L1;->d0(ILjava/util/List;Lcom/google/android/gms/internal/vision/y2;Z)V

    goto/16 :goto_3

    :pswitch_1b
    iget-object v9, p0, Lcom/google/android/gms/internal/vision/x1;->a:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/h2;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, p2, v4}, Lcom/google/android/gms/internal/vision/L1;->a0(ILjava/util/List;Lcom/google/android/gms/internal/vision/y2;Z)V

    goto/16 :goto_3

    :pswitch_1c
    iget-object v9, p0, Lcom/google/android/gms/internal/vision/x1;->a:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/h2;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, p2, v4}, Lcom/google/android/gms/internal/vision/L1;->N(ILjava/util/List;Lcom/google/android/gms/internal/vision/y2;Z)V

    goto/16 :goto_3

    :pswitch_1d
    iget-object v9, p0, Lcom/google/android/gms/internal/vision/x1;->a:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/h2;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, p2, v4}, Lcom/google/android/gms/internal/vision/L1;->T(ILjava/util/List;Lcom/google/android/gms/internal/vision/y2;Z)V

    goto/16 :goto_3

    :pswitch_1e
    iget-object v9, p0, Lcom/google/android/gms/internal/vision/x1;->a:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/h2;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, p2, v4}, Lcom/google/android/gms/internal/vision/L1;->G(ILjava/util/List;Lcom/google/android/gms/internal/vision/y2;Z)V

    goto/16 :goto_3

    :pswitch_1f
    iget-object v9, p0, Lcom/google/android/gms/internal/vision/x1;->a:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/h2;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, p2, v4}, Lcom/google/android/gms/internal/vision/L1;->C(ILjava/util/List;Lcom/google/android/gms/internal/vision/y2;Z)V

    goto/16 :goto_3

    :pswitch_20
    iget-object v9, p0, Lcom/google/android/gms/internal/vision/x1;->a:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/h2;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, p2, v4}, Lcom/google/android/gms/internal/vision/L1;->y(ILjava/util/List;Lcom/google/android/gms/internal/vision/y2;Z)V

    goto/16 :goto_3

    :pswitch_21
    iget-object v9, p0, Lcom/google/android/gms/internal/vision/x1;->a:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/h2;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, p2, v4}, Lcom/google/android/gms/internal/vision/L1;->l(ILjava/util/List;Lcom/google/android/gms/internal/vision/y2;Z)V

    goto/16 :goto_3

    :pswitch_22
    iget-object v9, p0, Lcom/google/android/gms/internal/vision/x1;->a:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/h2;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, p2, v5}, Lcom/google/android/gms/internal/vision/L1;->K(ILjava/util/List;Lcom/google/android/gms/internal/vision/y2;Z)V

    goto/16 :goto_3

    :pswitch_23
    iget-object v9, p0, Lcom/google/android/gms/internal/vision/x1;->a:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/h2;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, p2, v5}, Lcom/google/android/gms/internal/vision/L1;->Z(ILjava/util/List;Lcom/google/android/gms/internal/vision/y2;Z)V

    goto/16 :goto_3

    :pswitch_24
    iget-object v9, p0, Lcom/google/android/gms/internal/vision/x1;->a:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/h2;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, p2, v5}, Lcom/google/android/gms/internal/vision/L1;->Q(ILjava/util/List;Lcom/google/android/gms/internal/vision/y2;Z)V

    goto/16 :goto_3

    :pswitch_25
    iget-object v9, p0, Lcom/google/android/gms/internal/vision/x1;->a:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/h2;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, p2, v5}, Lcom/google/android/gms/internal/vision/L1;->b0(ILjava/util/List;Lcom/google/android/gms/internal/vision/y2;Z)V

    goto/16 :goto_3

    :pswitch_26
    iget-object v9, p0, Lcom/google/android/gms/internal/vision/x1;->a:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/h2;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, p2, v5}, Lcom/google/android/gms/internal/vision/L1;->c0(ILjava/util/List;Lcom/google/android/gms/internal/vision/y2;Z)V

    goto/16 :goto_3

    :pswitch_27
    iget-object v9, p0, Lcom/google/android/gms/internal/vision/x1;->a:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/h2;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, p2, v5}, Lcom/google/android/gms/internal/vision/L1;->W(ILjava/util/List;Lcom/google/android/gms/internal/vision/y2;Z)V

    goto/16 :goto_3

    :pswitch_28
    iget-object v9, p0, Lcom/google/android/gms/internal/vision/x1;->a:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/h2;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, p2}, Lcom/google/android/gms/internal/vision/L1;->w(ILjava/util/List;Lcom/google/android/gms/internal/vision/y2;)V

    goto/16 :goto_3

    :pswitch_29
    iget-object v9, p0, Lcom/google/android/gms/internal/vision/x1;->a:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/h2;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-virtual {p0, v7}, Lcom/google/android/gms/internal/vision/x1;->q(I)Lcom/google/android/gms/internal/vision/K1;

    move-result-object v10

    invoke-static {v9, v8, p2, v10}, Lcom/google/android/gms/internal/vision/L1;->k(ILjava/util/List;Lcom/google/android/gms/internal/vision/y2;Lcom/google/android/gms/internal/vision/K1;)V

    goto/16 :goto_3

    :pswitch_2a
    iget-object v9, p0, Lcom/google/android/gms/internal/vision/x1;->a:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/h2;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, p2}, Lcom/google/android/gms/internal/vision/L1;->j(ILjava/util/List;Lcom/google/android/gms/internal/vision/y2;)V

    goto/16 :goto_3

    :pswitch_2b
    iget-object v9, p0, Lcom/google/android/gms/internal/vision/x1;->a:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/h2;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, p2, v5}, Lcom/google/android/gms/internal/vision/L1;->d0(ILjava/util/List;Lcom/google/android/gms/internal/vision/y2;Z)V

    goto/16 :goto_3

    :pswitch_2c
    iget-object v9, p0, Lcom/google/android/gms/internal/vision/x1;->a:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/h2;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, p2, v5}, Lcom/google/android/gms/internal/vision/L1;->a0(ILjava/util/List;Lcom/google/android/gms/internal/vision/y2;Z)V

    goto/16 :goto_3

    :pswitch_2d
    iget-object v9, p0, Lcom/google/android/gms/internal/vision/x1;->a:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/h2;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, p2, v5}, Lcom/google/android/gms/internal/vision/L1;->N(ILjava/util/List;Lcom/google/android/gms/internal/vision/y2;Z)V

    goto/16 :goto_3

    :pswitch_2e
    iget-object v9, p0, Lcom/google/android/gms/internal/vision/x1;->a:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/h2;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, p2, v5}, Lcom/google/android/gms/internal/vision/L1;->T(ILjava/util/List;Lcom/google/android/gms/internal/vision/y2;Z)V

    goto/16 :goto_3

    :pswitch_2f
    iget-object v9, p0, Lcom/google/android/gms/internal/vision/x1;->a:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/h2;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, p2, v5}, Lcom/google/android/gms/internal/vision/L1;->G(ILjava/util/List;Lcom/google/android/gms/internal/vision/y2;Z)V

    goto/16 :goto_3

    :pswitch_30
    iget-object v9, p0, Lcom/google/android/gms/internal/vision/x1;->a:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/h2;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, p2, v5}, Lcom/google/android/gms/internal/vision/L1;->C(ILjava/util/List;Lcom/google/android/gms/internal/vision/y2;Z)V

    goto/16 :goto_3

    :pswitch_31
    iget-object v9, p0, Lcom/google/android/gms/internal/vision/x1;->a:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/h2;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, p2, v5}, Lcom/google/android/gms/internal/vision/L1;->y(ILjava/util/List;Lcom/google/android/gms/internal/vision/y2;Z)V

    goto/16 :goto_3

    :pswitch_32
    iget-object v9, p0, Lcom/google/android/gms/internal/vision/x1;->a:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/h2;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, p2, v5}, Lcom/google/android/gms/internal/vision/L1;->l(ILjava/util/List;Lcom/google/android/gms/internal/vision/y2;Z)V

    goto/16 :goto_3

    :pswitch_33
    invoke-virtual {p0, p1, v7}, Lcom/google/android/gms/internal/vision/x1;->z(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/h2;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {p0, v7}, Lcom/google/android/gms/internal/vision/x1;->q(I)Lcom/google/android/gms/internal/vision/K1;

    move-result-object v10

    invoke-interface {p2, v9, v8, v10}, Lcom/google/android/gms/internal/vision/y2;->N(ILjava/lang/Object;Lcom/google/android/gms/internal/vision/K1;)V

    goto/16 :goto_3

    :pswitch_34
    invoke-virtual {p0, p1, v7}, Lcom/google/android/gms/internal/vision/x1;->z(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/h2;->o(Ljava/lang/Object;J)J

    move-result-wide v10

    invoke-interface {p2, v9, v10, v11}, Lcom/google/android/gms/internal/vision/y2;->M(IJ)V

    goto/16 :goto_3

    :pswitch_35
    invoke-virtual {p0, p1, v7}, Lcom/google/android/gms/internal/vision/x1;->z(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/h2;->b(Ljava/lang/Object;J)I

    move-result v8

    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/vision/y2;->e(II)V

    goto/16 :goto_3

    :pswitch_36
    invoke-virtual {p0, p1, v7}, Lcom/google/android/gms/internal/vision/x1;->z(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/h2;->o(Ljava/lang/Object;J)J

    move-result-wide v10

    invoke-interface {p2, v9, v10, v11}, Lcom/google/android/gms/internal/vision/y2;->h(IJ)V

    goto/16 :goto_3

    :pswitch_37
    invoke-virtual {p0, p1, v7}, Lcom/google/android/gms/internal/vision/x1;->z(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/h2;->b(Ljava/lang/Object;J)I

    move-result v8

    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/vision/y2;->B(II)V

    goto/16 :goto_3

    :pswitch_38
    invoke-virtual {p0, p1, v7}, Lcom/google/android/gms/internal/vision/x1;->z(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/h2;->b(Ljava/lang/Object;J)I

    move-result v8

    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/vision/y2;->H(II)V

    goto/16 :goto_3

    :pswitch_39
    invoke-virtual {p0, p1, v7}, Lcom/google/android/gms/internal/vision/x1;->z(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/h2;->b(Ljava/lang/Object;J)I

    move-result v8

    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/vision/y2;->y(II)V

    goto/16 :goto_3

    :pswitch_3a
    invoke-virtual {p0, p1, v7}, Lcom/google/android/gms/internal/vision/x1;->z(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/h2;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/vision/g0;

    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/vision/y2;->G(ILcom/google/android/gms/internal/vision/g0;)V

    goto/16 :goto_3

    :pswitch_3b
    invoke-virtual {p0, p1, v7}, Lcom/google/android/gms/internal/vision/x1;->z(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/h2;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {p0, v7}, Lcom/google/android/gms/internal/vision/x1;->q(I)Lcom/google/android/gms/internal/vision/K1;

    move-result-object v10

    invoke-interface {p2, v9, v8, v10}, Lcom/google/android/gms/internal/vision/y2;->K(ILjava/lang/Object;Lcom/google/android/gms/internal/vision/K1;)V

    goto/16 :goto_3

    :pswitch_3c
    invoke-virtual {p0, p1, v7}, Lcom/google/android/gms/internal/vision/x1;->z(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/h2;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v9, v8, p2}, Lcom/google/android/gms/internal/vision/x1;->v(ILjava/lang/Object;Lcom/google/android/gms/internal/vision/y2;)V

    goto/16 :goto_3

    :pswitch_3d
    invoke-virtual {p0, p1, v7}, Lcom/google/android/gms/internal/vision/x1;->z(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/h2;->w(Ljava/lang/Object;J)Z

    move-result v8

    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/vision/y2;->F(IZ)V

    goto/16 :goto_3

    :pswitch_3e
    invoke-virtual {p0, p1, v7}, Lcom/google/android/gms/internal/vision/x1;->z(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/h2;->b(Ljava/lang/Object;J)I

    move-result v8

    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/vision/y2;->s(II)V

    goto :goto_3

    :pswitch_3f
    invoke-virtual {p0, p1, v7}, Lcom/google/android/gms/internal/vision/x1;->z(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/h2;->o(Ljava/lang/Object;J)J

    move-result-wide v10

    invoke-interface {p2, v9, v10, v11}, Lcom/google/android/gms/internal/vision/y2;->L(IJ)V

    goto :goto_3

    :pswitch_40
    invoke-virtual {p0, p1, v7}, Lcom/google/android/gms/internal/vision/x1;->z(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/h2;->b(Ljava/lang/Object;J)I

    move-result v8

    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/vision/y2;->m(II)V

    goto :goto_3

    :pswitch_41
    invoke-virtual {p0, p1, v7}, Lcom/google/android/gms/internal/vision/x1;->z(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/h2;->o(Ljava/lang/Object;J)J

    move-result-wide v10

    invoke-interface {p2, v9, v10, v11}, Lcom/google/android/gms/internal/vision/y2;->n(IJ)V

    goto :goto_3

    :pswitch_42
    invoke-virtual {p0, p1, v7}, Lcom/google/android/gms/internal/vision/x1;->z(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/h2;->o(Ljava/lang/Object;J)J

    move-result-wide v10

    invoke-interface {p2, v9, v10, v11}, Lcom/google/android/gms/internal/vision/y2;->C(IJ)V

    goto :goto_3

    :pswitch_43
    invoke-virtual {p0, p1, v7}, Lcom/google/android/gms/internal/vision/x1;->z(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/h2;->x(Ljava/lang/Object;J)F

    move-result v8

    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/vision/y2;->E(IF)V

    goto :goto_3

    :pswitch_44
    invoke-virtual {p0, p1, v7}, Lcom/google/android/gms/internal/vision/x1;->z(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/vision/h2;->C(Ljava/lang/Object;J)D

    move-result-wide v10

    invoke-interface {p2, v9, v10, v11}, Lcom/google/android/gms/internal/vision/y2;->D(ID)V

    :cond_3
    :goto_3
    add-int/lit8 v7, v7, -0x3

    goto/16 :goto_1

    :cond_4
    :goto_4
    if-eqz v1, :cond_6

    iget-object p1, p0, Lcom/google/android/gms/internal/vision/x1;->p:Lcom/google/android/gms/internal/vision/C0;

    invoke-virtual {p1, p2, v1}, Lcom/google/android/gms/internal/vision/C0;->c(Lcom/google/android/gms/internal/vision/y2;Ljava/util/Map$Entry;)V

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    move-object v1, p1

    goto :goto_4

    :cond_5
    move-object v1, v3

    goto :goto_4

    :cond_6
    return-void

    :cond_7
    iget-boolean v0, p0, Lcom/google/android/gms/internal/vision/x1;->h:Z

    if-eqz v0, :cond_f

    iget-boolean v0, p0, Lcom/google/android/gms/internal/vision/x1;->f:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/google/android/gms/internal/vision/x1;->p:Lcom/google/android/gms/internal/vision/C0;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/vision/C0;->b(Ljava/lang/Object;)Lcom/google/android/gms/internal/vision/F0;

    move-result-object v0

    iget-object v1, v0, Lcom/google/android/gms/internal/vision/F0;->a:Lcom/google/android/gms/internal/vision/O1;

    invoke-virtual {v1}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_8

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/F0;->j()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    goto :goto_5

    :cond_8
    move-object v0, v3

    move-object v1, v0

    :goto_5
    iget-object v7, p0, Lcom/google/android/gms/internal/vision/x1;->a:[I

    array-length v7, v7

    move v8, v5

    :goto_6
    if-ge v8, v7, :cond_c

    invoke-virtual {p0, v8}, Lcom/google/android/gms/internal/vision/x1;->N(I)I

    move-result v9

    iget-object v10, p0, Lcom/google/android/gms/internal/vision/x1;->a:[I

    aget v10, v10, v8

    :goto_7
    if-eqz v1, :cond_a

    iget-object v11, p0, Lcom/google/android/gms/internal/vision/x1;->p:Lcom/google/android/gms/internal/vision/C0;

    invoke-virtual {v11, v1}, Lcom/google/android/gms/internal/vision/C0;->a(Ljava/util/Map$Entry;)I

    move-result v11

    if-gt v11, v10, :cond_a

    iget-object v11, p0, Lcom/google/android/gms/internal/vision/x1;->p:Lcom/google/android/gms/internal/vision/C0;

    invoke-virtual {v11, p2, v1}, Lcom/google/android/gms/internal/vision/C0;->c(Lcom/google/android/gms/internal/vision/y2;Ljava/util/Map$Entry;)V

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    goto :goto_7

    :cond_9
    move-object v1, v3

    goto :goto_7

    :cond_a
    and-int v11, v9, v2

    ushr-int/lit8 v11, v11, 0x14

    packed-switch v11, :pswitch_data_1

    goto/16 :goto_8

    :pswitch_45
    invoke-virtual {p0, p1, v10, v8}, Lcom/google/android/gms/internal/vision/x1;->A(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/h2;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {p0, v8}, Lcom/google/android/gms/internal/vision/x1;->q(I)Lcom/google/android/gms/internal/vision/K1;

    move-result-object v11

    invoke-interface {p2, v10, v9, v11}, Lcom/google/android/gms/internal/vision/y2;->N(ILjava/lang/Object;Lcom/google/android/gms/internal/vision/K1;)V

    goto/16 :goto_8

    :pswitch_46
    invoke-virtual {p0, p1, v10, v8}, Lcom/google/android/gms/internal/vision/x1;->A(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/x1;->Q(Ljava/lang/Object;J)J

    move-result-wide v11

    invoke-interface {p2, v10, v11, v12}, Lcom/google/android/gms/internal/vision/y2;->M(IJ)V

    goto/16 :goto_8

    :pswitch_47
    invoke-virtual {p0, p1, v10, v8}, Lcom/google/android/gms/internal/vision/x1;->A(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/x1;->O(Ljava/lang/Object;J)I

    move-result v9

    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/vision/y2;->e(II)V

    goto/16 :goto_8

    :pswitch_48
    invoke-virtual {p0, p1, v10, v8}, Lcom/google/android/gms/internal/vision/x1;->A(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/x1;->Q(Ljava/lang/Object;J)J

    move-result-wide v11

    invoke-interface {p2, v10, v11, v12}, Lcom/google/android/gms/internal/vision/y2;->h(IJ)V

    goto/16 :goto_8

    :pswitch_49
    invoke-virtual {p0, p1, v10, v8}, Lcom/google/android/gms/internal/vision/x1;->A(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/x1;->O(Ljava/lang/Object;J)I

    move-result v9

    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/vision/y2;->B(II)V

    goto/16 :goto_8

    :pswitch_4a
    invoke-virtual {p0, p1, v10, v8}, Lcom/google/android/gms/internal/vision/x1;->A(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/x1;->O(Ljava/lang/Object;J)I

    move-result v9

    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/vision/y2;->H(II)V

    goto/16 :goto_8

    :pswitch_4b
    invoke-virtual {p0, p1, v10, v8}, Lcom/google/android/gms/internal/vision/x1;->A(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/x1;->O(Ljava/lang/Object;J)I

    move-result v9

    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/vision/y2;->y(II)V

    goto/16 :goto_8

    :pswitch_4c
    invoke-virtual {p0, p1, v10, v8}, Lcom/google/android/gms/internal/vision/x1;->A(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/h2;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/vision/g0;

    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/vision/y2;->G(ILcom/google/android/gms/internal/vision/g0;)V

    goto/16 :goto_8

    :pswitch_4d
    invoke-virtual {p0, p1, v10, v8}, Lcom/google/android/gms/internal/vision/x1;->A(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/h2;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {p0, v8}, Lcom/google/android/gms/internal/vision/x1;->q(I)Lcom/google/android/gms/internal/vision/K1;

    move-result-object v11

    invoke-interface {p2, v10, v9, v11}, Lcom/google/android/gms/internal/vision/y2;->K(ILjava/lang/Object;Lcom/google/android/gms/internal/vision/K1;)V

    goto/16 :goto_8

    :pswitch_4e
    invoke-virtual {p0, p1, v10, v8}, Lcom/google/android/gms/internal/vision/x1;->A(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/h2;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v10, v9, p2}, Lcom/google/android/gms/internal/vision/x1;->v(ILjava/lang/Object;Lcom/google/android/gms/internal/vision/y2;)V

    goto/16 :goto_8

    :pswitch_4f
    invoke-virtual {p0, p1, v10, v8}, Lcom/google/android/gms/internal/vision/x1;->A(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/x1;->S(Ljava/lang/Object;J)Z

    move-result v9

    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/vision/y2;->F(IZ)V

    goto/16 :goto_8

    :pswitch_50
    invoke-virtual {p0, p1, v10, v8}, Lcom/google/android/gms/internal/vision/x1;->A(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/x1;->O(Ljava/lang/Object;J)I

    move-result v9

    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/vision/y2;->s(II)V

    goto/16 :goto_8

    :pswitch_51
    invoke-virtual {p0, p1, v10, v8}, Lcom/google/android/gms/internal/vision/x1;->A(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/x1;->Q(Ljava/lang/Object;J)J

    move-result-wide v11

    invoke-interface {p2, v10, v11, v12}, Lcom/google/android/gms/internal/vision/y2;->L(IJ)V

    goto/16 :goto_8

    :pswitch_52
    invoke-virtual {p0, p1, v10, v8}, Lcom/google/android/gms/internal/vision/x1;->A(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/x1;->O(Ljava/lang/Object;J)I

    move-result v9

    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/vision/y2;->m(II)V

    goto/16 :goto_8

    :pswitch_53
    invoke-virtual {p0, p1, v10, v8}, Lcom/google/android/gms/internal/vision/x1;->A(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/x1;->Q(Ljava/lang/Object;J)J

    move-result-wide v11

    invoke-interface {p2, v10, v11, v12}, Lcom/google/android/gms/internal/vision/y2;->n(IJ)V

    goto/16 :goto_8

    :pswitch_54
    invoke-virtual {p0, p1, v10, v8}, Lcom/google/android/gms/internal/vision/x1;->A(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/x1;->Q(Ljava/lang/Object;J)J

    move-result-wide v11

    invoke-interface {p2, v10, v11, v12}, Lcom/google/android/gms/internal/vision/y2;->C(IJ)V

    goto/16 :goto_8

    :pswitch_55
    invoke-virtual {p0, p1, v10, v8}, Lcom/google/android/gms/internal/vision/x1;->A(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/x1;->K(Ljava/lang/Object;J)F

    move-result v9

    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/vision/y2;->E(IF)V

    goto/16 :goto_8

    :pswitch_56
    invoke-virtual {p0, p1, v10, v8}, Lcom/google/android/gms/internal/vision/x1;->A(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/x1;->D(Ljava/lang/Object;J)D

    move-result-wide v11

    invoke-interface {p2, v10, v11, v12}, Lcom/google/android/gms/internal/vision/y2;->D(ID)V

    goto/16 :goto_8

    :pswitch_57
    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/h2;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {p0, p2, v10, v9, v8}, Lcom/google/android/gms/internal/vision/x1;->x(Lcom/google/android/gms/internal/vision/y2;ILjava/lang/Object;I)V

    goto/16 :goto_8

    :pswitch_58
    iget-object v10, p0, Lcom/google/android/gms/internal/vision/x1;->a:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/h2;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-virtual {p0, v8}, Lcom/google/android/gms/internal/vision/x1;->q(I)Lcom/google/android/gms/internal/vision/K1;

    move-result-object v11

    invoke-static {v10, v9, p2, v11}, Lcom/google/android/gms/internal/vision/L1;->x(ILjava/util/List;Lcom/google/android/gms/internal/vision/y2;Lcom/google/android/gms/internal/vision/K1;)V

    goto/16 :goto_8

    :pswitch_59
    iget-object v10, p0, Lcom/google/android/gms/internal/vision/x1;->a:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/h2;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v4}, Lcom/google/android/gms/internal/vision/L1;->K(ILjava/util/List;Lcom/google/android/gms/internal/vision/y2;Z)V

    goto/16 :goto_8

    :pswitch_5a
    iget-object v10, p0, Lcom/google/android/gms/internal/vision/x1;->a:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/h2;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v4}, Lcom/google/android/gms/internal/vision/L1;->Z(ILjava/util/List;Lcom/google/android/gms/internal/vision/y2;Z)V

    goto/16 :goto_8

    :pswitch_5b
    iget-object v10, p0, Lcom/google/android/gms/internal/vision/x1;->a:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/h2;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v4}, Lcom/google/android/gms/internal/vision/L1;->Q(ILjava/util/List;Lcom/google/android/gms/internal/vision/y2;Z)V

    goto/16 :goto_8

    :pswitch_5c
    iget-object v10, p0, Lcom/google/android/gms/internal/vision/x1;->a:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/h2;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v4}, Lcom/google/android/gms/internal/vision/L1;->b0(ILjava/util/List;Lcom/google/android/gms/internal/vision/y2;Z)V

    goto/16 :goto_8

    :pswitch_5d
    iget-object v10, p0, Lcom/google/android/gms/internal/vision/x1;->a:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/h2;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v4}, Lcom/google/android/gms/internal/vision/L1;->c0(ILjava/util/List;Lcom/google/android/gms/internal/vision/y2;Z)V

    goto/16 :goto_8

    :pswitch_5e
    iget-object v10, p0, Lcom/google/android/gms/internal/vision/x1;->a:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/h2;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v4}, Lcom/google/android/gms/internal/vision/L1;->W(ILjava/util/List;Lcom/google/android/gms/internal/vision/y2;Z)V

    goto/16 :goto_8

    :pswitch_5f
    iget-object v10, p0, Lcom/google/android/gms/internal/vision/x1;->a:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/h2;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v4}, Lcom/google/android/gms/internal/vision/L1;->d0(ILjava/util/List;Lcom/google/android/gms/internal/vision/y2;Z)V

    goto/16 :goto_8

    :pswitch_60
    iget-object v10, p0, Lcom/google/android/gms/internal/vision/x1;->a:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/h2;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v4}, Lcom/google/android/gms/internal/vision/L1;->a0(ILjava/util/List;Lcom/google/android/gms/internal/vision/y2;Z)V

    goto/16 :goto_8

    :pswitch_61
    iget-object v10, p0, Lcom/google/android/gms/internal/vision/x1;->a:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/h2;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v4}, Lcom/google/android/gms/internal/vision/L1;->N(ILjava/util/List;Lcom/google/android/gms/internal/vision/y2;Z)V

    goto/16 :goto_8

    :pswitch_62
    iget-object v10, p0, Lcom/google/android/gms/internal/vision/x1;->a:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/h2;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v4}, Lcom/google/android/gms/internal/vision/L1;->T(ILjava/util/List;Lcom/google/android/gms/internal/vision/y2;Z)V

    goto/16 :goto_8

    :pswitch_63
    iget-object v10, p0, Lcom/google/android/gms/internal/vision/x1;->a:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/h2;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v4}, Lcom/google/android/gms/internal/vision/L1;->G(ILjava/util/List;Lcom/google/android/gms/internal/vision/y2;Z)V

    goto/16 :goto_8

    :pswitch_64
    iget-object v10, p0, Lcom/google/android/gms/internal/vision/x1;->a:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/h2;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v4}, Lcom/google/android/gms/internal/vision/L1;->C(ILjava/util/List;Lcom/google/android/gms/internal/vision/y2;Z)V

    goto/16 :goto_8

    :pswitch_65
    iget-object v10, p0, Lcom/google/android/gms/internal/vision/x1;->a:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/h2;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v4}, Lcom/google/android/gms/internal/vision/L1;->y(ILjava/util/List;Lcom/google/android/gms/internal/vision/y2;Z)V

    goto/16 :goto_8

    :pswitch_66
    iget-object v10, p0, Lcom/google/android/gms/internal/vision/x1;->a:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/h2;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v4}, Lcom/google/android/gms/internal/vision/L1;->l(ILjava/util/List;Lcom/google/android/gms/internal/vision/y2;Z)V

    goto/16 :goto_8

    :pswitch_67
    iget-object v10, p0, Lcom/google/android/gms/internal/vision/x1;->a:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/h2;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v5}, Lcom/google/android/gms/internal/vision/L1;->K(ILjava/util/List;Lcom/google/android/gms/internal/vision/y2;Z)V

    goto/16 :goto_8

    :pswitch_68
    iget-object v10, p0, Lcom/google/android/gms/internal/vision/x1;->a:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/h2;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v5}, Lcom/google/android/gms/internal/vision/L1;->Z(ILjava/util/List;Lcom/google/android/gms/internal/vision/y2;Z)V

    goto/16 :goto_8

    :pswitch_69
    iget-object v10, p0, Lcom/google/android/gms/internal/vision/x1;->a:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/h2;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v5}, Lcom/google/android/gms/internal/vision/L1;->Q(ILjava/util/List;Lcom/google/android/gms/internal/vision/y2;Z)V

    goto/16 :goto_8

    :pswitch_6a
    iget-object v10, p0, Lcom/google/android/gms/internal/vision/x1;->a:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/h2;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v5}, Lcom/google/android/gms/internal/vision/L1;->b0(ILjava/util/List;Lcom/google/android/gms/internal/vision/y2;Z)V

    goto/16 :goto_8

    :pswitch_6b
    iget-object v10, p0, Lcom/google/android/gms/internal/vision/x1;->a:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/h2;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v5}, Lcom/google/android/gms/internal/vision/L1;->c0(ILjava/util/List;Lcom/google/android/gms/internal/vision/y2;Z)V

    goto/16 :goto_8

    :pswitch_6c
    iget-object v10, p0, Lcom/google/android/gms/internal/vision/x1;->a:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/h2;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v5}, Lcom/google/android/gms/internal/vision/L1;->W(ILjava/util/List;Lcom/google/android/gms/internal/vision/y2;Z)V

    goto/16 :goto_8

    :pswitch_6d
    iget-object v10, p0, Lcom/google/android/gms/internal/vision/x1;->a:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/h2;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2}, Lcom/google/android/gms/internal/vision/L1;->w(ILjava/util/List;Lcom/google/android/gms/internal/vision/y2;)V

    goto/16 :goto_8

    :pswitch_6e
    iget-object v10, p0, Lcom/google/android/gms/internal/vision/x1;->a:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/h2;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-virtual {p0, v8}, Lcom/google/android/gms/internal/vision/x1;->q(I)Lcom/google/android/gms/internal/vision/K1;

    move-result-object v11

    invoke-static {v10, v9, p2, v11}, Lcom/google/android/gms/internal/vision/L1;->k(ILjava/util/List;Lcom/google/android/gms/internal/vision/y2;Lcom/google/android/gms/internal/vision/K1;)V

    goto/16 :goto_8

    :pswitch_6f
    iget-object v10, p0, Lcom/google/android/gms/internal/vision/x1;->a:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/h2;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2}, Lcom/google/android/gms/internal/vision/L1;->j(ILjava/util/List;Lcom/google/android/gms/internal/vision/y2;)V

    goto/16 :goto_8

    :pswitch_70
    iget-object v10, p0, Lcom/google/android/gms/internal/vision/x1;->a:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/h2;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v5}, Lcom/google/android/gms/internal/vision/L1;->d0(ILjava/util/List;Lcom/google/android/gms/internal/vision/y2;Z)V

    goto/16 :goto_8

    :pswitch_71
    iget-object v10, p0, Lcom/google/android/gms/internal/vision/x1;->a:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/h2;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v5}, Lcom/google/android/gms/internal/vision/L1;->a0(ILjava/util/List;Lcom/google/android/gms/internal/vision/y2;Z)V

    goto/16 :goto_8

    :pswitch_72
    iget-object v10, p0, Lcom/google/android/gms/internal/vision/x1;->a:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/h2;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v5}, Lcom/google/android/gms/internal/vision/L1;->N(ILjava/util/List;Lcom/google/android/gms/internal/vision/y2;Z)V

    goto/16 :goto_8

    :pswitch_73
    iget-object v10, p0, Lcom/google/android/gms/internal/vision/x1;->a:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/h2;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v5}, Lcom/google/android/gms/internal/vision/L1;->T(ILjava/util/List;Lcom/google/android/gms/internal/vision/y2;Z)V

    goto/16 :goto_8

    :pswitch_74
    iget-object v10, p0, Lcom/google/android/gms/internal/vision/x1;->a:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/h2;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v5}, Lcom/google/android/gms/internal/vision/L1;->G(ILjava/util/List;Lcom/google/android/gms/internal/vision/y2;Z)V

    goto/16 :goto_8

    :pswitch_75
    iget-object v10, p0, Lcom/google/android/gms/internal/vision/x1;->a:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/h2;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v5}, Lcom/google/android/gms/internal/vision/L1;->C(ILjava/util/List;Lcom/google/android/gms/internal/vision/y2;Z)V

    goto/16 :goto_8

    :pswitch_76
    iget-object v10, p0, Lcom/google/android/gms/internal/vision/x1;->a:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/h2;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v5}, Lcom/google/android/gms/internal/vision/L1;->y(ILjava/util/List;Lcom/google/android/gms/internal/vision/y2;Z)V

    goto/16 :goto_8

    :pswitch_77
    iget-object v10, p0, Lcom/google/android/gms/internal/vision/x1;->a:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/h2;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v5}, Lcom/google/android/gms/internal/vision/L1;->l(ILjava/util/List;Lcom/google/android/gms/internal/vision/y2;Z)V

    goto/16 :goto_8

    :pswitch_78
    invoke-virtual {p0, p1, v8}, Lcom/google/android/gms/internal/vision/x1;->z(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/h2;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {p0, v8}, Lcom/google/android/gms/internal/vision/x1;->q(I)Lcom/google/android/gms/internal/vision/K1;

    move-result-object v11

    invoke-interface {p2, v10, v9, v11}, Lcom/google/android/gms/internal/vision/y2;->N(ILjava/lang/Object;Lcom/google/android/gms/internal/vision/K1;)V

    goto/16 :goto_8

    :pswitch_79
    invoke-virtual {p0, p1, v8}, Lcom/google/android/gms/internal/vision/x1;->z(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/h2;->o(Ljava/lang/Object;J)J

    move-result-wide v11

    invoke-interface {p2, v10, v11, v12}, Lcom/google/android/gms/internal/vision/y2;->M(IJ)V

    goto/16 :goto_8

    :pswitch_7a
    invoke-virtual {p0, p1, v8}, Lcom/google/android/gms/internal/vision/x1;->z(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/h2;->b(Ljava/lang/Object;J)I

    move-result v9

    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/vision/y2;->e(II)V

    goto/16 :goto_8

    :pswitch_7b
    invoke-virtual {p0, p1, v8}, Lcom/google/android/gms/internal/vision/x1;->z(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/h2;->o(Ljava/lang/Object;J)J

    move-result-wide v11

    invoke-interface {p2, v10, v11, v12}, Lcom/google/android/gms/internal/vision/y2;->h(IJ)V

    goto/16 :goto_8

    :pswitch_7c
    invoke-virtual {p0, p1, v8}, Lcom/google/android/gms/internal/vision/x1;->z(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/h2;->b(Ljava/lang/Object;J)I

    move-result v9

    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/vision/y2;->B(II)V

    goto/16 :goto_8

    :pswitch_7d
    invoke-virtual {p0, p1, v8}, Lcom/google/android/gms/internal/vision/x1;->z(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/h2;->b(Ljava/lang/Object;J)I

    move-result v9

    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/vision/y2;->H(II)V

    goto/16 :goto_8

    :pswitch_7e
    invoke-virtual {p0, p1, v8}, Lcom/google/android/gms/internal/vision/x1;->z(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/h2;->b(Ljava/lang/Object;J)I

    move-result v9

    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/vision/y2;->y(II)V

    goto/16 :goto_8

    :pswitch_7f
    invoke-virtual {p0, p1, v8}, Lcom/google/android/gms/internal/vision/x1;->z(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/h2;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/vision/g0;

    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/vision/y2;->G(ILcom/google/android/gms/internal/vision/g0;)V

    goto/16 :goto_8

    :pswitch_80
    invoke-virtual {p0, p1, v8}, Lcom/google/android/gms/internal/vision/x1;->z(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/h2;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {p0, v8}, Lcom/google/android/gms/internal/vision/x1;->q(I)Lcom/google/android/gms/internal/vision/K1;

    move-result-object v11

    invoke-interface {p2, v10, v9, v11}, Lcom/google/android/gms/internal/vision/y2;->K(ILjava/lang/Object;Lcom/google/android/gms/internal/vision/K1;)V

    goto/16 :goto_8

    :pswitch_81
    invoke-virtual {p0, p1, v8}, Lcom/google/android/gms/internal/vision/x1;->z(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/h2;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v10, v9, p2}, Lcom/google/android/gms/internal/vision/x1;->v(ILjava/lang/Object;Lcom/google/android/gms/internal/vision/y2;)V

    goto/16 :goto_8

    :pswitch_82
    invoke-virtual {p0, p1, v8}, Lcom/google/android/gms/internal/vision/x1;->z(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/h2;->w(Ljava/lang/Object;J)Z

    move-result v9

    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/vision/y2;->F(IZ)V

    goto/16 :goto_8

    :pswitch_83
    invoke-virtual {p0, p1, v8}, Lcom/google/android/gms/internal/vision/x1;->z(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/h2;->b(Ljava/lang/Object;J)I

    move-result v9

    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/vision/y2;->s(II)V

    goto :goto_8

    :pswitch_84
    invoke-virtual {p0, p1, v8}, Lcom/google/android/gms/internal/vision/x1;->z(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/h2;->o(Ljava/lang/Object;J)J

    move-result-wide v11

    invoke-interface {p2, v10, v11, v12}, Lcom/google/android/gms/internal/vision/y2;->L(IJ)V

    goto :goto_8

    :pswitch_85
    invoke-virtual {p0, p1, v8}, Lcom/google/android/gms/internal/vision/x1;->z(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/h2;->b(Ljava/lang/Object;J)I

    move-result v9

    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/vision/y2;->m(II)V

    goto :goto_8

    :pswitch_86
    invoke-virtual {p0, p1, v8}, Lcom/google/android/gms/internal/vision/x1;->z(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/h2;->o(Ljava/lang/Object;J)J

    move-result-wide v11

    invoke-interface {p2, v10, v11, v12}, Lcom/google/android/gms/internal/vision/y2;->n(IJ)V

    goto :goto_8

    :pswitch_87
    invoke-virtual {p0, p1, v8}, Lcom/google/android/gms/internal/vision/x1;->z(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/h2;->o(Ljava/lang/Object;J)J

    move-result-wide v11

    invoke-interface {p2, v10, v11, v12}, Lcom/google/android/gms/internal/vision/y2;->C(IJ)V

    goto :goto_8

    :pswitch_88
    invoke-virtual {p0, p1, v8}, Lcom/google/android/gms/internal/vision/x1;->z(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/h2;->x(Ljava/lang/Object;J)F

    move-result v9

    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/vision/y2;->E(IF)V

    goto :goto_8

    :pswitch_89
    invoke-virtual {p0, p1, v8}, Lcom/google/android/gms/internal/vision/x1;->z(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/vision/h2;->C(Ljava/lang/Object;J)D

    move-result-wide v11

    invoke-interface {p2, v10, v11, v12}, Lcom/google/android/gms/internal/vision/y2;->D(ID)V

    :cond_b
    :goto_8
    add-int/lit8 v8, v8, 0x3

    goto/16 :goto_6

    :cond_c
    :goto_9
    if-eqz v1, :cond_e

    iget-object v2, p0, Lcom/google/android/gms/internal/vision/x1;->p:Lcom/google/android/gms/internal/vision/C0;

    invoke-virtual {v2, p2, v1}, Lcom/google/android/gms/internal/vision/C0;->c(Lcom/google/android/gms/internal/vision/y2;Ljava/util/Map$Entry;)V

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    goto :goto_9

    :cond_d
    move-object v1, v3

    goto :goto_9

    :cond_e
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/x1;->o:Lcom/google/android/gms/internal/vision/a2;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/vision/x1;->w(Lcom/google/android/gms/internal/vision/a2;Ljava/lang/Object;Lcom/google/android/gms/internal/vision/y2;)V

    return-void

    :cond_f
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/vision/x1;->I(Ljava/lang/Object;Lcom/google/android/gms/internal/vision/y2;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_89
        :pswitch_88
        :pswitch_87
        :pswitch_86
        :pswitch_85
        :pswitch_84
        :pswitch_83
        :pswitch_82
        :pswitch_81
        :pswitch_80
        :pswitch_7f
        :pswitch_7e
        :pswitch_7d
        :pswitch_7c
        :pswitch_7b
        :pswitch_7a
        :pswitch_79
        :pswitch_78
        :pswitch_77
        :pswitch_76
        :pswitch_75
        :pswitch_74
        :pswitch_73
        :pswitch_72
        :pswitch_71
        :pswitch_70
        :pswitch_6f
        :pswitch_6e
        :pswitch_6d
        :pswitch_6c
        :pswitch_6b
        :pswitch_6a
        :pswitch_69
        :pswitch_68
        :pswitch_67
        :pswitch_66
        :pswitch_65
        :pswitch_64
        :pswitch_63
        :pswitch_62
        :pswitch_61
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
    .end packed-switch
.end method

.method public final i(Ljava/lang/Object;[BIILcom/google/android/gms/internal/vision/c0;)V
    .locals 30

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move-object/from16 v11, p5

    iget-boolean v0, v15, Lcom/google/android/gms/internal/vision/x1;->h:Z

    if-eqz v0, :cond_18

    sget-object v9, Lcom/google/android/gms/internal/vision/x1;->s:Lsun/misc/Unsafe;

    const/4 v10, -0x1

    const/16 v16, 0x0

    const v8, 0xfffff

    move/from16 v0, p3

    move v7, v8

    move v1, v10

    move/from16 v2, v16

    move v6, v2

    :goto_0
    if-ge v0, v13, :cond_15

    add-int/lit8 v3, v0, 0x1

    aget-byte v0, v12, v0

    if-gez v0, :cond_0

    invoke-static {v0, v12, v3, v11}, Lcom/google/android/gms/internal/vision/b0;->c(I[BILcom/google/android/gms/internal/vision/c0;)I

    move-result v0

    iget v3, v11, Lcom/google/android/gms/internal/vision/c0;->a:I

    move v4, v0

    move/from16 v17, v3

    goto :goto_1

    :cond_0
    move/from16 v17, v0

    move v4, v3

    :goto_1
    ushr-int/lit8 v5, v17, 0x3

    and-int/lit8 v3, v17, 0x7

    if-le v5, v1, :cond_1

    div-int/lit8 v2, v2, 0x3

    invoke-virtual {v15, v5, v2}, Lcom/google/android/gms/internal/vision/x1;->j(II)I

    move-result v0

    :goto_2
    move v2, v0

    goto :goto_3

    :cond_1
    invoke-virtual {v15, v5}, Lcom/google/android/gms/internal/vision/x1;->T(I)I

    move-result v0

    goto :goto_2

    :goto_3
    if-ne v2, v10, :cond_2

    move v2, v4

    move/from16 v25, v5

    move-object/from16 v29, v9

    move/from16 v19, v10

    move/from16 v18, v16

    goto/16 :goto_10

    :cond_2
    iget-object v0, v15, Lcom/google/android/gms/internal/vision/x1;->a:[I

    add-int/lit8 v1, v2, 0x1

    aget v1, v0, v1

    const/high16 v18, 0xff00000

    and-int v18, v1, v18

    ushr-int/lit8 v10, v18, 0x14

    move/from16 p3, v5

    and-int v5, v1, v8

    move-object/from16 v18, v9

    int-to-long v8, v5

    const/16 v5, 0x11

    move/from16 v21, v1

    if-gt v10, v5, :cond_c

    add-int/lit8 v5, v2, 0x2

    aget v0, v0, v5

    ushr-int/lit8 v5, v0, 0x14

    const/4 v1, 0x1

    shl-int v23, v1, v5

    const v5, 0xfffff

    and-int/2addr v0, v5

    move/from16 v20, v2

    if-eq v0, v7, :cond_5

    if-eq v7, v5, :cond_3

    int-to-long v1, v7

    move-object/from16 v7, v18

    invoke-virtual {v7, v14, v1, v2, v6}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_4

    :cond_3
    move-object/from16 v7, v18

    :goto_4
    if-eq v0, v5, :cond_4

    int-to-long v1, v0

    invoke-virtual {v7, v14, v1, v2}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v6

    :cond_4
    move-object v2, v7

    move v7, v0

    goto :goto_5

    :cond_5
    move-object/from16 v2, v18

    :goto_5
    const/4 v0, 0x5

    packed-switch v10, :pswitch_data_0

    move/from16 v25, p3

    move/from16 v26, v5

    move/from16 v10, v20

    move v5, v4

    move/from16 v20, v7

    move-object v7, v2

    goto/16 :goto_a

    :pswitch_0
    if-nez v3, :cond_6

    invoke-static {v12, v4, v11}, Lcom/google/android/gms/internal/vision/b0;->j([BILcom/google/android/gms/internal/vision/c0;)I

    move-result v10

    iget-wide v0, v11, Lcom/google/android/gms/internal/vision/c0;->b:J

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/vision/t0;->a(J)J

    move-result-wide v17

    move-object v0, v2

    move-object/from16 v1, p1

    move/from16 v4, v20

    move/from16 v20, v7

    move-object v7, v2

    move-wide v2, v8

    move/from16 v25, p3

    move v8, v4

    move/from16 v26, v5

    move-wide/from16 v4, v17

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    or-int v6, v6, v23

    move-object v9, v7

    move v2, v8

    move v0, v10

    :goto_6
    move/from16 v7, v20

    move/from16 v1, v25

    move/from16 v8, v26

    const/4 v10, -0x1

    goto/16 :goto_0

    :cond_6
    move/from16 v25, p3

    move/from16 v26, v5

    move/from16 v8, v20

    move/from16 v20, v7

    move-object v7, v2

    move v5, v4

    move v10, v8

    goto/16 :goto_a

    :pswitch_1
    move/from16 v25, p3

    move/from16 v26, v5

    move/from16 v10, v20

    move/from16 v20, v7

    move-object v7, v2

    if-nez v3, :cond_7

    invoke-static {v12, v4, v11}, Lcom/google/android/gms/internal/vision/b0;->h([BILcom/google/android/gms/internal/vision/c0;)I

    move-result v0

    iget v1, v11, Lcom/google/android/gms/internal/vision/c0;->a:I

    invoke-static {v1}, Lcom/google/android/gms/internal/vision/t0;->d(I)I

    move-result v1

    invoke-virtual {v7, v14, v8, v9, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :goto_7
    or-int v6, v6, v23

    move-object v9, v7

    move v2, v10

    goto :goto_6

    :cond_7
    move v5, v4

    goto/16 :goto_a

    :pswitch_2
    move/from16 v25, p3

    move/from16 v26, v5

    move/from16 v10, v20

    move/from16 v20, v7

    move-object v7, v2

    if-nez v3, :cond_7

    invoke-static {v12, v4, v11}, Lcom/google/android/gms/internal/vision/b0;->h([BILcom/google/android/gms/internal/vision/c0;)I

    move-result v0

    iget v1, v11, Lcom/google/android/gms/internal/vision/c0;->a:I

    invoke-virtual {v7, v14, v8, v9, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_7

    :pswitch_3
    move/from16 v25, p3

    move/from16 v26, v5

    move/from16 v10, v20

    const/4 v0, 0x2

    move/from16 v20, v7

    move-object v7, v2

    if-ne v3, v0, :cond_7

    invoke-static {v12, v4, v11}, Lcom/google/android/gms/internal/vision/b0;->p([BILcom/google/android/gms/internal/vision/c0;)I

    move-result v0

    iget-object v1, v11, Lcom/google/android/gms/internal/vision/c0;->c:Ljava/lang/Object;

    invoke-virtual {v7, v14, v8, v9, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_7

    :pswitch_4
    move/from16 v25, p3

    move/from16 v26, v5

    move/from16 v10, v20

    const/4 v0, 0x2

    move/from16 v20, v7

    move-object v7, v2

    if-ne v3, v0, :cond_7

    invoke-virtual {v15, v10}, Lcom/google/android/gms/internal/vision/x1;->q(I)Lcom/google/android/gms/internal/vision/K1;

    move-result-object v0

    invoke-static {v0, v12, v4, v13, v11}, Lcom/google/android/gms/internal/vision/b0;->f(Lcom/google/android/gms/internal/vision/K1;[BIILcom/google/android/gms/internal/vision/c0;)I

    move-result v0

    invoke-virtual {v7, v14, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_8

    iget-object v1, v11, Lcom/google/android/gms/internal/vision/c0;->c:Ljava/lang/Object;

    invoke-virtual {v7, v14, v8, v9, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_7

    :cond_8
    iget-object v2, v11, Lcom/google/android/gms/internal/vision/c0;->c:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/vision/R0;->e(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v7, v14, v8, v9, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_7

    :pswitch_5
    move/from16 v25, p3

    move/from16 v26, v5

    move/from16 v10, v20

    const/4 v0, 0x2

    move/from16 v20, v7

    move-object v7, v2

    if-ne v3, v0, :cond_7

    const/high16 v0, 0x20000000

    and-int v0, v21, v0

    if-nez v0, :cond_9

    invoke-static {v12, v4, v11}, Lcom/google/android/gms/internal/vision/b0;->m([BILcom/google/android/gms/internal/vision/c0;)I

    move-result v0

    goto :goto_8

    :cond_9
    invoke-static {v12, v4, v11}, Lcom/google/android/gms/internal/vision/b0;->o([BILcom/google/android/gms/internal/vision/c0;)I

    move-result v0

    :goto_8
    iget-object v1, v11, Lcom/google/android/gms/internal/vision/c0;->c:Ljava/lang/Object;

    invoke-virtual {v7, v14, v8, v9, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_7

    :pswitch_6
    move/from16 v25, p3

    move/from16 v26, v5

    move/from16 v10, v20

    move/from16 v20, v7

    move-object v7, v2

    if-nez v3, :cond_7

    invoke-static {v12, v4, v11}, Lcom/google/android/gms/internal/vision/b0;->j([BILcom/google/android/gms/internal/vision/c0;)I

    move-result v0

    iget-wide v1, v11, Lcom/google/android/gms/internal/vision/c0;->b:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_a

    const/4 v1, 0x1

    goto :goto_9

    :cond_a
    move/from16 v1, v16

    :goto_9
    invoke-static {v14, v8, v9, v1}, Lcom/google/android/gms/internal/vision/h2;->k(Ljava/lang/Object;JZ)V

    goto/16 :goto_7

    :pswitch_7
    move/from16 v25, p3

    move/from16 v26, v5

    move/from16 v10, v20

    move/from16 v20, v7

    move-object v7, v2

    if-ne v3, v0, :cond_7

    invoke-static {v12, v4}, Lcom/google/android/gms/internal/vision/b0;->g([BI)I

    move-result v0

    invoke-virtual {v7, v14, v8, v9, v0}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    add-int/lit8 v0, v4, 0x4

    goto/16 :goto_7

    :pswitch_8
    move/from16 v25, p3

    move/from16 v26, v5

    move/from16 v10, v20

    const/4 v0, 0x1

    move/from16 v20, v7

    move-object v7, v2

    if-ne v3, v0, :cond_7

    invoke-static {v12, v4}, Lcom/google/android/gms/internal/vision/b0;->k([BI)J

    move-result-wide v17

    move-object v0, v7

    move-object/from16 v1, p1

    move-wide v2, v8

    move v8, v4

    move-wide/from16 v4, v17

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    add-int/lit8 v0, v8, 0x8

    goto/16 :goto_7

    :pswitch_9
    move/from16 v25, p3

    move/from16 v26, v5

    move/from16 v10, v20

    move v5, v4

    move/from16 v20, v7

    move-object v7, v2

    if-nez v3, :cond_b

    invoke-static {v12, v5, v11}, Lcom/google/android/gms/internal/vision/b0;->h([BILcom/google/android/gms/internal/vision/c0;)I

    move-result v0

    iget v1, v11, Lcom/google/android/gms/internal/vision/c0;->a:I

    invoke-virtual {v7, v14, v8, v9, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_7

    :pswitch_a
    move/from16 v25, p3

    move/from16 v26, v5

    move/from16 v10, v20

    move v5, v4

    move/from16 v20, v7

    move-object v7, v2

    if-nez v3, :cond_b

    invoke-static {v12, v5, v11}, Lcom/google/android/gms/internal/vision/b0;->j([BILcom/google/android/gms/internal/vision/c0;)I

    move-result v17

    iget-wide v4, v11, Lcom/google/android/gms/internal/vision/c0;->b:J

    move-object v0, v7

    move-object/from16 v1, p1

    move-wide v2, v8

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    or-int v6, v6, v23

    move-object v9, v7

    move v2, v10

    move/from16 v0, v17

    goto/16 :goto_6

    :pswitch_b
    move/from16 v25, p3

    move/from16 v26, v5

    move/from16 v10, v20

    move v5, v4

    move/from16 v20, v7

    move-object v7, v2

    if-ne v3, v0, :cond_b

    invoke-static {v12, v5}, Lcom/google/android/gms/internal/vision/b0;->n([BI)F

    move-result v0

    invoke-static {v14, v8, v9, v0}, Lcom/google/android/gms/internal/vision/h2;->g(Ljava/lang/Object;JF)V

    add-int/lit8 v0, v5, 0x4

    goto/16 :goto_7

    :pswitch_c
    move/from16 v25, p3

    move/from16 v26, v5

    move/from16 v10, v20

    const/4 v0, 0x1

    move v5, v4

    move/from16 v20, v7

    move-object v7, v2

    if-ne v3, v0, :cond_b

    invoke-static {v12, v5}, Lcom/google/android/gms/internal/vision/b0;->l([BI)D

    move-result-wide v0

    invoke-static {v14, v8, v9, v0, v1}, Lcom/google/android/gms/internal/vision/h2;->f(Ljava/lang/Object;JD)V

    add-int/lit8 v0, v5, 0x8

    goto/16 :goto_7

    :cond_b
    :goto_a
    move v2, v5

    move-object/from16 v29, v7

    move/from16 v18, v10

    move/from16 v7, v20

    const/16 v19, -0x1

    goto/16 :goto_10

    :cond_c
    move/from16 v25, p3

    move v5, v4

    move/from16 v20, v7

    move-object/from16 v7, v18

    const v26, 0xfffff

    move v4, v2

    const/16 v0, 0x1b

    if-ne v10, v0, :cond_10

    const/4 v0, 0x2

    if-ne v3, v0, :cond_f

    invoke-virtual {v7, v14, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/vision/X0;

    invoke-interface {v0}, Lcom/google/android/gms/internal/vision/X0;->a()Z

    move-result v1

    if-nez v1, :cond_e

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_d

    const/16 v1, 0xa

    goto :goto_b

    :cond_d
    shl-int/lit8 v1, v1, 0x1

    :goto_b
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/vision/X0;->b(I)Lcom/google/android/gms/internal/vision/X0;

    move-result-object v0

    invoke-virtual {v7, v14, v8, v9, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_e
    move-object v8, v0

    invoke-virtual {v15, v4}, Lcom/google/android/gms/internal/vision/x1;->q(I)Lcom/google/android/gms/internal/vision/K1;

    move-result-object v0

    move/from16 v1, v17

    move-object/from16 v2, p2

    move v3, v5

    move/from16 v18, v4

    move/from16 v4, p4

    move-object v5, v8

    move v8, v6

    move-object/from16 v6, p5

    invoke-static/range {v0 .. v6}, Lcom/google/android/gms/internal/vision/b0;->d(Lcom/google/android/gms/internal/vision/K1;I[BIILcom/google/android/gms/internal/vision/X0;Lcom/google/android/gms/internal/vision/c0;)I

    move-result v0

    move-object v9, v7

    move v6, v8

    move/from16 v2, v18

    goto/16 :goto_6

    :cond_f
    move/from16 v18, v4

    move v15, v5

    move/from16 v27, v6

    move-object/from16 v29, v7

    move/from16 v28, v20

    const/16 v19, -0x1

    goto/16 :goto_f

    :cond_10
    move/from16 v18, v4

    const/16 v0, 0x31

    if-gt v10, v0, :cond_12

    move/from16 v1, v21

    int-to-long v1, v1

    move-object/from16 v0, p0

    move-wide/from16 v21, v1

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v4, v3

    move v3, v5

    move/from16 p3, v4

    move/from16 v4, p4

    move v15, v5

    move/from16 v5, v17

    move/from16 v27, v6

    move/from16 v6, v25

    move/from16 v28, v20

    move-object/from16 v20, v7

    move/from16 v7, p3

    move-wide/from16 v23, v8

    move/from16 v9, v26

    move/from16 v8, v18

    move-object/from16 v29, v20

    const/16 v19, -0x1

    move/from16 v20, v10

    move-wide/from16 v9, v21

    move/from16 v11, v20

    move-wide/from16 v12, v23

    move-object/from16 v14, p5

    invoke-virtual/range {v0 .. v14}, Lcom/google/android/gms/internal/vision/x1;->m(Ljava/lang/Object;[BIIIIIIJIJLcom/google/android/gms/internal/vision/c0;)I

    move-result v0

    if-ne v0, v15, :cond_11

    :goto_c
    move v2, v0

    :goto_d
    move/from16 v6, v27

    move/from16 v7, v28

    goto/16 :goto_10

    :cond_11
    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move-object/from16 v11, p5

    move/from16 v2, v18

    move/from16 v10, v19

    move/from16 v1, v25

    move/from16 v6, v27

    move/from16 v7, v28

    :goto_e
    move-object/from16 v9, v29

    const v8, 0xfffff

    goto/16 :goto_0

    :cond_12
    move/from16 p3, v3

    move v15, v5

    move/from16 v27, v6

    move-object/from16 v29, v7

    move-wide/from16 v23, v8

    move/from16 v28, v20

    move/from16 v1, v21

    const/16 v19, -0x1

    move/from16 v20, v10

    const/16 v0, 0x32

    move/from16 v9, v20

    if-ne v9, v0, :cond_14

    move/from16 v7, p3

    const/4 v0, 0x2

    if-ne v7, v0, :cond_13

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v15

    move/from16 v4, p4

    move/from16 v5, v18

    move-wide/from16 v6, v23

    move-object/from16 v8, p5

    invoke-virtual/range {v0 .. v8}, Lcom/google/android/gms/internal/vision/x1;->n(Ljava/lang/Object;[BIIIJLcom/google/android/gms/internal/vision/c0;)I

    move-result v0

    if-ne v0, v15, :cond_11

    goto :goto_c

    :cond_13
    :goto_f
    move v2, v15

    goto :goto_d

    :cond_14
    move/from16 v7, p3

    move-object/from16 v0, p0

    move v8, v1

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v15

    move/from16 v4, p4

    move/from16 v5, v17

    move/from16 v6, v25

    move-wide/from16 v10, v23

    move/from16 v12, v18

    move-object/from16 v13, p5

    invoke-virtual/range {v0 .. v13}, Lcom/google/android/gms/internal/vision/x1;->l(Ljava/lang/Object;[BIIIIIIIJILcom/google/android/gms/internal/vision/c0;)I

    move-result v0

    if-ne v0, v15, :cond_11

    goto :goto_c

    :goto_10
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/vision/x1;->R(Ljava/lang/Object;)Lcom/google/android/gms/internal/vision/d2;

    move-result-object v4

    move/from16 v0, v17

    move-object/from16 v1, p2

    move/from16 v3, p4

    move-object/from16 v5, p5

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/vision/b0;->b(I[BIILcom/google/android/gms/internal/vision/d2;Lcom/google/android/gms/internal/vision/c0;)I

    move-result v0

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move-object/from16 v11, p5

    move/from16 v2, v18

    move/from16 v10, v19

    move/from16 v1, v25

    goto :goto_e

    :cond_15
    move/from16 v27, v6

    move v1, v8

    move-object/from16 v29, v9

    if-eq v7, v1, :cond_16

    int-to-long v1, v7

    move-object/from16 v3, p1

    move/from16 v6, v27

    move-object/from16 v4, v29

    invoke-virtual {v4, v3, v1, v2, v6}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_16
    move/from16 v4, p4

    if-ne v0, v4, :cond_17

    return-void

    :cond_17
    invoke-static {}, Lcom/google/android/gms/internal/vision/W0;->e()Lcom/google/android/gms/internal/vision/W0;

    move-result-object v0

    throw v0

    :cond_18
    move v4, v13

    move-object v3, v14

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/vision/x1;->o(Ljava/lang/Object;[BIIILcom/google/android/gms/internal/vision/c0;)I

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_9
        :pswitch_2
        :pswitch_7
        :pswitch_8
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final j(II)I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/vision/x1;->c:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/vision/x1;->d:I

    if-gt p1, v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/vision/x1;->E(II)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public final l(Ljava/lang/Object;[BIIIIIIIJILcom/google/android/gms/internal/vision/c0;)I
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v2, p5

    move/from16 v8, p6

    move/from16 v5, p7

    move-wide/from16 v9, p10

    move/from16 v6, p12

    move-object/from16 v11, p13

    sget-object v12, Lcom/google/android/gms/internal/vision/x1;->s:Lsun/misc/Unsafe;

    iget-object v7, v0, Lcom/google/android/gms/internal/vision/x1;->a:[I

    add-int/lit8 v13, v6, 0x2

    aget v7, v7, v13

    const v13, 0xfffff

    and-int/2addr v7, v13

    int-to-long v13, v7

    const/4 v7, 0x5

    const/4 v15, 0x2

    packed-switch p9, :pswitch_data_0

    goto/16 :goto_a

    :pswitch_0
    const/4 v7, 0x3

    if-ne v5, v7, :cond_a

    and-int/lit8 v2, v2, -0x8

    or-int/lit8 v7, v2, 0x4

    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/vision/x1;->q(I)Lcom/google/android/gms/internal/vision/K1;

    move-result-object v2

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move v6, v7

    move-object/from16 v7, p13

    invoke-static/range {v2 .. v7}, Lcom/google/android/gms/internal/vision/b0;->e(Lcom/google/android/gms/internal/vision/K1;[BIIILcom/google/android/gms/internal/vision/c0;)I

    move-result v2

    invoke-virtual {v12, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    if-ne v3, v8, :cond_0

    invoke-virtual {v12, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v15

    goto :goto_0

    :cond_0
    const/4 v15, 0x0

    :goto_0
    if-nez v15, :cond_1

    iget-object v3, v11, Lcom/google/android/gms/internal/vision/c0;->c:Ljava/lang/Object;

    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_9

    :cond_1
    iget-object v3, v11, Lcom/google/android/gms/internal/vision/c0;->c:Ljava/lang/Object;

    invoke-static {v15, v3}, Lcom/google/android/gms/internal/vision/R0;->e(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_9

    :pswitch_1
    if-nez v5, :cond_a

    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/vision/b0;->j([BILcom/google/android/gms/internal/vision/c0;)I

    move-result v2

    iget-wide v3, v11, Lcom/google/android/gms/internal/vision/c0;->b:J

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/vision/t0;->a(J)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_9

    :pswitch_2
    if-nez v5, :cond_a

    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/vision/b0;->h([BILcom/google/android/gms/internal/vision/c0;)I

    move-result v2

    iget v3, v11, Lcom/google/android/gms/internal/vision/c0;->a:I

    invoke-static {v3}, Lcom/google/android/gms/internal/vision/t0;->d(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_9

    :pswitch_3
    if-nez v5, :cond_a

    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/vision/b0;->h([BILcom/google/android/gms/internal/vision/c0;)I

    move-result v3

    iget v4, v11, Lcom/google/android/gms/internal/vision/c0;->a:I

    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/vision/x1;->L(I)Lcom/google/android/gms/internal/vision/S0;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-interface {v5, v4}, Lcom/google/android/gms/internal/vision/S0;->b(I)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_1

    :cond_2
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/vision/x1;->R(Ljava/lang/Object;)Lcom/google/android/gms/internal/vision/d2;

    move-result-object v1

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/google/android/gms/internal/vision/d2;->c(ILjava/lang/Object;)V

    move v2, v3

    goto/16 :goto_b

    :cond_3
    :goto_1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v12, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move v2, v3

    goto/16 :goto_9

    :pswitch_4
    if-ne v5, v15, :cond_a

    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/vision/b0;->p([BILcom/google/android/gms/internal/vision/c0;)I

    move-result v2

    iget-object v3, v11, Lcom/google/android/gms/internal/vision/c0;->c:Ljava/lang/Object;

    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_9

    :pswitch_5
    if-ne v5, v15, :cond_a

    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/vision/x1;->q(I)Lcom/google/android/gms/internal/vision/K1;

    move-result-object v2

    move/from16 v5, p4

    invoke-static {v2, v3, v4, v5, v11}, Lcom/google/android/gms/internal/vision/b0;->f(Lcom/google/android/gms/internal/vision/K1;[BIILcom/google/android/gms/internal/vision/c0;)I

    move-result v2

    invoke-virtual {v12, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    if-ne v3, v8, :cond_4

    invoke-virtual {v12, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v15

    goto :goto_2

    :cond_4
    const/4 v15, 0x0

    :goto_2
    if-nez v15, :cond_5

    iget-object v3, v11, Lcom/google/android/gms/internal/vision/c0;->c:Ljava/lang/Object;

    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_3

    :cond_5
    iget-object v3, v11, Lcom/google/android/gms/internal/vision/c0;->c:Ljava/lang/Object;

    invoke-static {v15, v3}, Lcom/google/android/gms/internal/vision/R0;->e(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_3
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_b

    :pswitch_6
    if-ne v5, v15, :cond_a

    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/vision/b0;->h([BILcom/google/android/gms/internal/vision/c0;)I

    move-result v2

    iget v4, v11, Lcom/google/android/gms/internal/vision/c0;->a:I

    if-nez v4, :cond_6

    const-string v3, ""

    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_5

    :cond_6
    const/high16 v5, 0x20000000

    and-int v5, p8, v5

    if-eqz v5, :cond_8

    add-int v5, v2, v4

    invoke-static {v3, v2, v5}, Lcom/google/android/gms/internal/vision/k2;->g([BII)Z

    move-result v5

    if-eqz v5, :cond_7

    goto :goto_4

    :cond_7
    invoke-static {}, Lcom/google/android/gms/internal/vision/W0;->f()Lcom/google/android/gms/internal/vision/W0;

    move-result-object v1

    throw v1

    :cond_8
    :goto_4
    new-instance v5, Ljava/lang/String;

    sget-object v6, Lcom/google/android/gms/internal/vision/R0;->a:Ljava/nio/charset/Charset;

    invoke-direct {v5, v3, v2, v4, v6}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-virtual {v12, v1, v9, v10, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    add-int/2addr v2, v4

    :goto_5
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_b

    :pswitch_7
    if-nez v5, :cond_a

    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/vision/b0;->j([BILcom/google/android/gms/internal/vision/c0;)I

    move-result v2

    iget-wide v3, v11, Lcom/google/android/gms/internal/vision/c0;->b:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_9

    const/4 v15, 0x1

    goto :goto_6

    :cond_9
    const/4 v15, 0x0

    :goto_6
    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_9

    :pswitch_8
    if-ne v5, v7, :cond_a

    invoke-static/range {p2 .. p3}, Lcom/google/android/gms/internal/vision/b0;->g([BI)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v12, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_7
    add-int/lit8 v2, v4, 0x4

    goto :goto_9

    :pswitch_9
    const/4 v2, 0x1

    if-ne v5, v2, :cond_a

    invoke-static/range {p2 .. p3}, Lcom/google/android/gms/internal/vision/b0;->k([BI)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v12, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_8
    add-int/lit8 v2, v4, 0x8

    goto :goto_9

    :pswitch_a
    if-nez v5, :cond_a

    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/vision/b0;->h([BILcom/google/android/gms/internal/vision/c0;)I

    move-result v2

    iget v3, v11, Lcom/google/android/gms/internal/vision/c0;->a:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_9

    :pswitch_b
    if-nez v5, :cond_a

    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/vision/b0;->j([BILcom/google/android/gms/internal/vision/c0;)I

    move-result v2

    iget-wide v3, v11, Lcom/google/android/gms/internal/vision/c0;->b:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_9

    :pswitch_c
    if-ne v5, v7, :cond_a

    invoke-static/range {p2 .. p3}, Lcom/google/android/gms/internal/vision/b0;->n([BI)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v12, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_7

    :pswitch_d
    const/4 v2, 0x1

    if-ne v5, v2, :cond_a

    invoke-static/range {p2 .. p3}, Lcom/google/android/gms/internal/vision/b0;->l([BI)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v12, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_8

    :goto_9
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_b

    :cond_a
    :goto_a
    move v2, v4

    :goto_b
    return v2

    :pswitch_data_0
    .packed-switch 0x33
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_a
        :pswitch_3
        :pswitch_8
        :pswitch_9
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final m(Ljava/lang/Object;[BIIIIIIJIJLcom/google/android/gms/internal/vision/c0;)I
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v2, p5

    move/from16 v6, p7

    move/from16 v8, p8

    move-wide/from16 v9, p12

    move-object/from16 v7, p14

    sget-object v11, Lcom/google/android/gms/internal/vision/x1;->s:Lsun/misc/Unsafe;

    invoke-virtual {v11, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/gms/internal/vision/X0;

    invoke-interface {v12}, Lcom/google/android/gms/internal/vision/X0;->a()Z

    move-result v13

    const/4 v14, 0x1

    if-nez v13, :cond_1

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v13

    if-nez v13, :cond_0

    const/16 v13, 0xa

    goto :goto_0

    :cond_0
    shl-int/2addr v13, v14

    :goto_0
    invoke-interface {v12, v13}, Lcom/google/android/gms/internal/vision/X0;->b(I)Lcom/google/android/gms/internal/vision/X0;

    move-result-object v12

    invoke-virtual {v11, v1, v9, v10, v12}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_1
    const/4 v9, 0x5

    const/4 v10, 0x0

    const/4 v11, 0x2

    packed-switch p11, :pswitch_data_0

    goto/16 :goto_f

    :pswitch_0
    const/4 v1, 0x3

    if-ne v6, v1, :cond_2

    invoke-virtual {p0, v8}, Lcom/google/android/gms/internal/vision/x1;->q(I)Lcom/google/android/gms/internal/vision/K1;

    move-result-object v1

    and-int/lit8 v6, v2, -0x8

    or-int/lit8 v6, v6, 0x4

    move-object/from16 p6, v1

    move-object/from16 p7, p2

    move/from16 p8, p3

    move/from16 p9, p4

    move/from16 p10, v6

    move-object/from16 p11, p14

    invoke-static/range {p6 .. p11}, Lcom/google/android/gms/internal/vision/b0;->e(Lcom/google/android/gms/internal/vision/K1;[BIIILcom/google/android/gms/internal/vision/c0;)I

    move-result v4

    iget-object v8, v7, Lcom/google/android/gms/internal/vision/c0;->c:Ljava/lang/Object;

    invoke-interface {v12, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    if-ge v4, v5, :cond_2

    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/vision/b0;->h([BILcom/google/android/gms/internal/vision/c0;)I

    move-result v8

    iget v9, v7, Lcom/google/android/gms/internal/vision/c0;->a:I

    if-ne v2, v9, :cond_2

    move-object/from16 p6, v1

    move-object/from16 p7, p2

    move/from16 p8, v8

    move/from16 p9, p4

    move/from16 p10, v6

    move-object/from16 p11, p14

    invoke-static/range {p6 .. p11}, Lcom/google/android/gms/internal/vision/b0;->e(Lcom/google/android/gms/internal/vision/K1;[BIIILcom/google/android/gms/internal/vision/c0;)I

    move-result v4

    iget-object v8, v7, Lcom/google/android/gms/internal/vision/c0;->c:Ljava/lang/Object;

    invoke-interface {v12, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    :goto_2
    move v1, v4

    goto/16 :goto_10

    :pswitch_1
    if-ne v6, v11, :cond_5

    check-cast v12, Lcom/google/android/gms/internal/vision/g1;

    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/vision/b0;->h([BILcom/google/android/gms/internal/vision/c0;)I

    move-result v1

    iget v2, v7, Lcom/google/android/gms/internal/vision/c0;->a:I

    add-int/2addr v2, v1

    if-lt v1, v2, :cond_4

    if-ne v1, v2, :cond_3

    goto/16 :goto_10

    :cond_3
    invoke-static {}, Lcom/google/android/gms/internal/vision/W0;->a()Lcom/google/android/gms/internal/vision/W0;

    move-result-object v1

    throw v1

    :cond_4
    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/vision/b0;->j([BILcom/google/android/gms/internal/vision/c0;)I

    iget-wide v1, v7, Lcom/google/android/gms/internal/vision/c0;->b:J

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/vision/t0;->a(J)J

    throw v10

    :cond_5
    if-eqz v6, :cond_6

    goto/16 :goto_f

    :cond_6
    check-cast v12, Lcom/google/android/gms/internal/vision/g1;

    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/vision/b0;->j([BILcom/google/android/gms/internal/vision/c0;)I

    iget-wide v1, v7, Lcom/google/android/gms/internal/vision/c0;->b:J

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/vision/t0;->a(J)J

    throw v10

    :pswitch_2
    if-ne v6, v11, :cond_9

    check-cast v12, Lcom/google/android/gms/internal/vision/P0;

    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/vision/b0;->h([BILcom/google/android/gms/internal/vision/c0;)I

    move-result v1

    iget v2, v7, Lcom/google/android/gms/internal/vision/c0;->a:I

    add-int/2addr v2, v1

    :goto_3
    if-ge v1, v2, :cond_7

    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/vision/b0;->h([BILcom/google/android/gms/internal/vision/c0;)I

    move-result v1

    iget v4, v7, Lcom/google/android/gms/internal/vision/c0;->a:I

    invoke-static {v4}, Lcom/google/android/gms/internal/vision/t0;->d(I)I

    move-result v4

    invoke-virtual {v12, v4}, Lcom/google/android/gms/internal/vision/P0;->u(I)V

    goto :goto_3

    :cond_7
    if-ne v1, v2, :cond_8

    goto/16 :goto_10

    :cond_8
    invoke-static {}, Lcom/google/android/gms/internal/vision/W0;->a()Lcom/google/android/gms/internal/vision/W0;

    move-result-object v1

    throw v1

    :cond_9
    if-nez v6, :cond_2

    check-cast v12, Lcom/google/android/gms/internal/vision/P0;

    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/vision/b0;->h([BILcom/google/android/gms/internal/vision/c0;)I

    move-result v1

    iget v4, v7, Lcom/google/android/gms/internal/vision/c0;->a:I

    invoke-static {v4}, Lcom/google/android/gms/internal/vision/t0;->d(I)I

    move-result v4

    invoke-virtual {v12, v4}, Lcom/google/android/gms/internal/vision/P0;->u(I)V

    :goto_4
    if-ge v1, v5, :cond_35

    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/vision/b0;->h([BILcom/google/android/gms/internal/vision/c0;)I

    move-result v4

    iget v6, v7, Lcom/google/android/gms/internal/vision/c0;->a:I

    if-ne v2, v6, :cond_35

    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/vision/b0;->h([BILcom/google/android/gms/internal/vision/c0;)I

    move-result v1

    iget v4, v7, Lcom/google/android/gms/internal/vision/c0;->a:I

    invoke-static {v4}, Lcom/google/android/gms/internal/vision/t0;->d(I)I

    move-result v4

    invoke-virtual {v12, v4}, Lcom/google/android/gms/internal/vision/P0;->u(I)V

    goto :goto_4

    :pswitch_3
    if-ne v6, v11, :cond_a

    invoke-static {v3, v4, v12, v7}, Lcom/google/android/gms/internal/vision/b0;->i([BILcom/google/android/gms/internal/vision/X0;Lcom/google/android/gms/internal/vision/c0;)I

    move-result v2

    goto :goto_5

    :cond_a
    if-nez v6, :cond_2

    move/from16 v2, p5

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object v6, v12

    move-object/from16 v7, p14

    invoke-static/range {v2 .. v7}, Lcom/google/android/gms/internal/vision/b0;->a(I[BIILcom/google/android/gms/internal/vision/X0;Lcom/google/android/gms/internal/vision/c0;)I

    move-result v2

    :goto_5
    check-cast v1, Lcom/google/android/gms/internal/vision/N0;

    iget-object v3, v1, Lcom/google/android/gms/internal/vision/N0;->zzb:Lcom/google/android/gms/internal/vision/d2;

    invoke-static {}, Lcom/google/android/gms/internal/vision/d2;->a()Lcom/google/android/gms/internal/vision/d2;

    move-result-object v4

    if-ne v3, v4, :cond_b

    goto :goto_6

    :cond_b
    move-object v10, v3

    :goto_6
    invoke-virtual {p0, v8}, Lcom/google/android/gms/internal/vision/x1;->L(I)Lcom/google/android/gms/internal/vision/S0;

    move-result-object v3

    iget-object v4, v0, Lcom/google/android/gms/internal/vision/x1;->o:Lcom/google/android/gms/internal/vision/a2;

    move/from16 v5, p6

    invoke-static {v5, v12, v3, v10, v4}, Lcom/google/android/gms/internal/vision/L1;->i(ILjava/util/List;Lcom/google/android/gms/internal/vision/S0;Ljava/lang/Object;Lcom/google/android/gms/internal/vision/a2;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/vision/d2;

    if-eqz v3, :cond_c

    iput-object v3, v1, Lcom/google/android/gms/internal/vision/N0;->zzb:Lcom/google/android/gms/internal/vision/d2;

    :cond_c
    move v1, v2

    goto/16 :goto_10

    :pswitch_4
    if-ne v6, v11, :cond_2

    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/vision/b0;->h([BILcom/google/android/gms/internal/vision/c0;)I

    move-result v1

    iget v4, v7, Lcom/google/android/gms/internal/vision/c0;->a:I

    if-ltz v4, :cond_12

    array-length v6, v3

    sub-int/2addr v6, v1

    if-gt v4, v6, :cond_11

    if-nez v4, :cond_d

    sget-object v4, Lcom/google/android/gms/internal/vision/g0;->f:Lcom/google/android/gms/internal/vision/g0;

    invoke-interface {v12, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_d
    invoke-static {v3, v1, v4}, Lcom/google/android/gms/internal/vision/g0;->y([BII)Lcom/google/android/gms/internal/vision/g0;

    move-result-object v6

    invoke-interface {v12, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_7
    add-int/2addr v1, v4

    :goto_8
    if-ge v1, v5, :cond_35

    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/vision/b0;->h([BILcom/google/android/gms/internal/vision/c0;)I

    move-result v4

    iget v6, v7, Lcom/google/android/gms/internal/vision/c0;->a:I

    if-ne v2, v6, :cond_35

    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/vision/b0;->h([BILcom/google/android/gms/internal/vision/c0;)I

    move-result v1

    iget v4, v7, Lcom/google/android/gms/internal/vision/c0;->a:I

    if-ltz v4, :cond_10

    array-length v6, v3

    sub-int/2addr v6, v1

    if-gt v4, v6, :cond_f

    if-nez v4, :cond_e

    sget-object v4, Lcom/google/android/gms/internal/vision/g0;->f:Lcom/google/android/gms/internal/vision/g0;

    invoke-interface {v12, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_e
    invoke-static {v3, v1, v4}, Lcom/google/android/gms/internal/vision/g0;->y([BII)Lcom/google/android/gms/internal/vision/g0;

    move-result-object v6

    invoke-interface {v12, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_f
    invoke-static {}, Lcom/google/android/gms/internal/vision/W0;->a()Lcom/google/android/gms/internal/vision/W0;

    move-result-object v1

    throw v1

    :cond_10
    invoke-static {}, Lcom/google/android/gms/internal/vision/W0;->b()Lcom/google/android/gms/internal/vision/W0;

    move-result-object v1

    throw v1

    :cond_11
    invoke-static {}, Lcom/google/android/gms/internal/vision/W0;->a()Lcom/google/android/gms/internal/vision/W0;

    move-result-object v1

    throw v1

    :cond_12
    invoke-static {}, Lcom/google/android/gms/internal/vision/W0;->b()Lcom/google/android/gms/internal/vision/W0;

    move-result-object v1

    throw v1

    :pswitch_5
    if-ne v6, v11, :cond_2

    invoke-virtual {p0, v8}, Lcom/google/android/gms/internal/vision/x1;->q(I)Lcom/google/android/gms/internal/vision/K1;

    move-result-object v1

    move-object/from16 p6, v1

    move/from16 p7, p5

    move-object/from16 p8, p2

    move/from16 p9, p3

    move/from16 p10, p4

    move-object/from16 p11, v12

    move-object/from16 p12, p14

    invoke-static/range {p6 .. p12}, Lcom/google/android/gms/internal/vision/b0;->d(Lcom/google/android/gms/internal/vision/K1;I[BIILcom/google/android/gms/internal/vision/X0;Lcom/google/android/gms/internal/vision/c0;)I

    move-result v1

    goto/16 :goto_10

    :pswitch_6
    if-ne v6, v11, :cond_2

    const-wide/32 v8, 0x20000000

    and-long v8, p9, v8

    const-wide/16 v10, 0x0

    cmp-long v1, v8, v10

    const-string v6, ""

    if-nez v1, :cond_17

    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/vision/b0;->h([BILcom/google/android/gms/internal/vision/c0;)I

    move-result v1

    iget v4, v7, Lcom/google/android/gms/internal/vision/c0;->a:I

    if-ltz v4, :cond_16

    if-nez v4, :cond_13

    invoke-interface {v12, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_13
    new-instance v8, Ljava/lang/String;

    sget-object v9, Lcom/google/android/gms/internal/vision/R0;->a:Ljava/nio/charset/Charset;

    invoke-direct {v8, v3, v1, v4, v9}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-interface {v12, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_9
    add-int/2addr v1, v4

    :goto_a
    if-ge v1, v5, :cond_35

    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/vision/b0;->h([BILcom/google/android/gms/internal/vision/c0;)I

    move-result v4

    iget v8, v7, Lcom/google/android/gms/internal/vision/c0;->a:I

    if-ne v2, v8, :cond_35

    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/vision/b0;->h([BILcom/google/android/gms/internal/vision/c0;)I

    move-result v1

    iget v4, v7, Lcom/google/android/gms/internal/vision/c0;->a:I

    if-ltz v4, :cond_15

    if-nez v4, :cond_14

    invoke-interface {v12, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_14
    new-instance v8, Ljava/lang/String;

    sget-object v9, Lcom/google/android/gms/internal/vision/R0;->a:Ljava/nio/charset/Charset;

    invoke-direct {v8, v3, v1, v4, v9}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-interface {v12, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_15
    invoke-static {}, Lcom/google/android/gms/internal/vision/W0;->b()Lcom/google/android/gms/internal/vision/W0;

    move-result-object v1

    throw v1

    :cond_16
    invoke-static {}, Lcom/google/android/gms/internal/vision/W0;->b()Lcom/google/android/gms/internal/vision/W0;

    move-result-object v1

    throw v1

    :cond_17
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/vision/b0;->h([BILcom/google/android/gms/internal/vision/c0;)I

    move-result v1

    iget v4, v7, Lcom/google/android/gms/internal/vision/c0;->a:I

    if-ltz v4, :cond_1d

    if-nez v4, :cond_18

    invoke-interface {v12, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :cond_18
    add-int v8, v1, v4

    invoke-static {v3, v1, v8}, Lcom/google/android/gms/internal/vision/k2;->g([BII)Z

    move-result v9

    if-eqz v9, :cond_1c

    new-instance v9, Ljava/lang/String;

    sget-object v10, Lcom/google/android/gms/internal/vision/R0;->a:Ljava/nio/charset/Charset;

    invoke-direct {v9, v3, v1, v4, v10}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-interface {v12, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_b
    move v1, v8

    :goto_c
    if-ge v1, v5, :cond_35

    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/vision/b0;->h([BILcom/google/android/gms/internal/vision/c0;)I

    move-result v4

    iget v8, v7, Lcom/google/android/gms/internal/vision/c0;->a:I

    if-ne v2, v8, :cond_35

    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/vision/b0;->h([BILcom/google/android/gms/internal/vision/c0;)I

    move-result v1

    iget v4, v7, Lcom/google/android/gms/internal/vision/c0;->a:I

    if-ltz v4, :cond_1b

    if-nez v4, :cond_19

    invoke-interface {v12, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :cond_19
    add-int v8, v1, v4

    invoke-static {v3, v1, v8}, Lcom/google/android/gms/internal/vision/k2;->g([BII)Z

    move-result v9

    if-eqz v9, :cond_1a

    new-instance v9, Ljava/lang/String;

    sget-object v10, Lcom/google/android/gms/internal/vision/R0;->a:Ljava/nio/charset/Charset;

    invoke-direct {v9, v3, v1, v4, v10}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-interface {v12, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_1a
    invoke-static {}, Lcom/google/android/gms/internal/vision/W0;->f()Lcom/google/android/gms/internal/vision/W0;

    move-result-object v1

    throw v1

    :cond_1b
    invoke-static {}, Lcom/google/android/gms/internal/vision/W0;->b()Lcom/google/android/gms/internal/vision/W0;

    move-result-object v1

    throw v1

    :cond_1c
    invoke-static {}, Lcom/google/android/gms/internal/vision/W0;->f()Lcom/google/android/gms/internal/vision/W0;

    move-result-object v1

    throw v1

    :cond_1d
    invoke-static {}, Lcom/google/android/gms/internal/vision/W0;->b()Lcom/google/android/gms/internal/vision/W0;

    move-result-object v1

    throw v1

    :pswitch_7
    if-ne v6, v11, :cond_20

    check-cast v12, Lcom/google/android/gms/internal/vision/e0;

    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/vision/b0;->h([BILcom/google/android/gms/internal/vision/c0;)I

    move-result v1

    iget v2, v7, Lcom/google/android/gms/internal/vision/c0;->a:I

    add-int/2addr v2, v1

    if-lt v1, v2, :cond_1f

    if-ne v1, v2, :cond_1e

    goto/16 :goto_10

    :cond_1e
    invoke-static {}, Lcom/google/android/gms/internal/vision/W0;->a()Lcom/google/android/gms/internal/vision/W0;

    move-result-object v1

    throw v1

    :cond_1f
    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/vision/b0;->j([BILcom/google/android/gms/internal/vision/c0;)I

    throw v10

    :cond_20
    if-eqz v6, :cond_21

    goto/16 :goto_f

    :cond_21
    check-cast v12, Lcom/google/android/gms/internal/vision/e0;

    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/vision/b0;->j([BILcom/google/android/gms/internal/vision/c0;)I

    iget-wide v1, v7, Lcom/google/android/gms/internal/vision/c0;->b:J

    throw v10

    :pswitch_8
    if-ne v6, v11, :cond_24

    check-cast v12, Lcom/google/android/gms/internal/vision/P0;

    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/vision/b0;->h([BILcom/google/android/gms/internal/vision/c0;)I

    move-result v1

    iget v2, v7, Lcom/google/android/gms/internal/vision/c0;->a:I

    add-int/2addr v2, v1

    :goto_d
    if-ge v1, v2, :cond_22

    invoke-static {v3, v1}, Lcom/google/android/gms/internal/vision/b0;->g([BI)I

    move-result v4

    invoke-virtual {v12, v4}, Lcom/google/android/gms/internal/vision/P0;->u(I)V

    add-int/lit8 v1, v1, 0x4

    goto :goto_d

    :cond_22
    if-ne v1, v2, :cond_23

    goto/16 :goto_10

    :cond_23
    invoke-static {}, Lcom/google/android/gms/internal/vision/W0;->a()Lcom/google/android/gms/internal/vision/W0;

    move-result-object v1

    throw v1

    :cond_24
    if-ne v6, v9, :cond_2

    check-cast v12, Lcom/google/android/gms/internal/vision/P0;

    invoke-static/range {p2 .. p3}, Lcom/google/android/gms/internal/vision/b0;->g([BI)I

    move-result v1

    invoke-virtual {v12, v1}, Lcom/google/android/gms/internal/vision/P0;->u(I)V

    :goto_e
    add-int/lit8 v1, v4, 0x4

    if-ge v1, v5, :cond_35

    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/vision/b0;->h([BILcom/google/android/gms/internal/vision/c0;)I

    move-result v4

    iget v6, v7, Lcom/google/android/gms/internal/vision/c0;->a:I

    if-ne v2, v6, :cond_35

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/vision/b0;->g([BI)I

    move-result v1

    invoke-virtual {v12, v1}, Lcom/google/android/gms/internal/vision/P0;->u(I)V

    goto :goto_e

    :pswitch_9
    if-ne v6, v11, :cond_27

    check-cast v12, Lcom/google/android/gms/internal/vision/g1;

    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/vision/b0;->h([BILcom/google/android/gms/internal/vision/c0;)I

    move-result v1

    iget v2, v7, Lcom/google/android/gms/internal/vision/c0;->a:I

    add-int/2addr v2, v1

    if-lt v1, v2, :cond_26

    if-ne v1, v2, :cond_25

    goto/16 :goto_10

    :cond_25
    invoke-static {}, Lcom/google/android/gms/internal/vision/W0;->a()Lcom/google/android/gms/internal/vision/W0;

    move-result-object v1

    throw v1

    :cond_26
    invoke-static {v3, v1}, Lcom/google/android/gms/internal/vision/b0;->k([BI)J

    throw v10

    :cond_27
    if-eq v6, v14, :cond_28

    goto/16 :goto_f

    :cond_28
    check-cast v12, Lcom/google/android/gms/internal/vision/g1;

    invoke-static/range {p2 .. p3}, Lcom/google/android/gms/internal/vision/b0;->k([BI)J

    throw v10

    :pswitch_a
    if-ne v6, v11, :cond_29

    invoke-static {v3, v4, v12, v7}, Lcom/google/android/gms/internal/vision/b0;->i([BILcom/google/android/gms/internal/vision/X0;Lcom/google/android/gms/internal/vision/c0;)I

    move-result v1

    goto/16 :goto_10

    :cond_29
    if-nez v6, :cond_2

    move-object/from16 p6, p2

    move/from16 p7, p3

    move/from16 p8, p4

    move-object/from16 p9, v12

    move-object/from16 p10, p14

    invoke-static/range {p5 .. p10}, Lcom/google/android/gms/internal/vision/b0;->a(I[BIILcom/google/android/gms/internal/vision/X0;Lcom/google/android/gms/internal/vision/c0;)I

    move-result v1

    goto :goto_10

    :pswitch_b
    if-ne v6, v11, :cond_2c

    check-cast v12, Lcom/google/android/gms/internal/vision/g1;

    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/vision/b0;->h([BILcom/google/android/gms/internal/vision/c0;)I

    move-result v1

    iget v2, v7, Lcom/google/android/gms/internal/vision/c0;->a:I

    add-int/2addr v2, v1

    if-lt v1, v2, :cond_2b

    if-ne v1, v2, :cond_2a

    goto :goto_10

    :cond_2a
    invoke-static {}, Lcom/google/android/gms/internal/vision/W0;->a()Lcom/google/android/gms/internal/vision/W0;

    move-result-object v1

    throw v1

    :cond_2b
    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/vision/b0;->j([BILcom/google/android/gms/internal/vision/c0;)I

    throw v10

    :cond_2c
    if-eqz v6, :cond_2d

    goto :goto_f

    :cond_2d
    check-cast v12, Lcom/google/android/gms/internal/vision/g1;

    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/vision/b0;->j([BILcom/google/android/gms/internal/vision/c0;)I

    iget-wide v1, v7, Lcom/google/android/gms/internal/vision/c0;->b:J

    throw v10

    :pswitch_c
    if-ne v6, v11, :cond_30

    check-cast v12, Lcom/google/android/gms/internal/vision/M0;

    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/vision/b0;->h([BILcom/google/android/gms/internal/vision/c0;)I

    move-result v1

    iget v2, v7, Lcom/google/android/gms/internal/vision/c0;->a:I

    add-int/2addr v2, v1

    if-lt v1, v2, :cond_2f

    if-ne v1, v2, :cond_2e

    goto :goto_10

    :cond_2e
    invoke-static {}, Lcom/google/android/gms/internal/vision/W0;->a()Lcom/google/android/gms/internal/vision/W0;

    move-result-object v1

    throw v1

    :cond_2f
    invoke-static {v3, v1}, Lcom/google/android/gms/internal/vision/b0;->n([BI)F

    throw v10

    :cond_30
    if-eq v6, v9, :cond_31

    goto :goto_f

    :cond_31
    check-cast v12, Lcom/google/android/gms/internal/vision/M0;

    invoke-static/range {p2 .. p3}, Lcom/google/android/gms/internal/vision/b0;->n([BI)F

    throw v10

    :pswitch_d
    if-ne v6, v11, :cond_34

    check-cast v12, Lcom/google/android/gms/internal/vision/z0;

    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/vision/b0;->h([BILcom/google/android/gms/internal/vision/c0;)I

    move-result v1

    iget v2, v7, Lcom/google/android/gms/internal/vision/c0;->a:I

    add-int/2addr v2, v1

    if-lt v1, v2, :cond_33

    if-ne v1, v2, :cond_32

    goto :goto_10

    :cond_32
    invoke-static {}, Lcom/google/android/gms/internal/vision/W0;->a()Lcom/google/android/gms/internal/vision/W0;

    move-result-object v1

    throw v1

    :cond_33
    invoke-static {v3, v1}, Lcom/google/android/gms/internal/vision/b0;->l([BI)D

    throw v10

    :cond_34
    if-eq v6, v14, :cond_36

    :goto_f
    goto/16 :goto_2

    :cond_35
    :goto_10
    return v1

    :cond_36
    check-cast v12, Lcom/google/android/gms/internal/vision/z0;

    invoke-static/range {p2 .. p3}, Lcom/google/android/gms/internal/vision/b0;->l([BI)D

    throw v10

    nop

    :pswitch_data_0
    .packed-switch 0x12
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_a
        :pswitch_3
        :pswitch_8
        :pswitch_9
        :pswitch_2
        :pswitch_1
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_a
        :pswitch_3
        :pswitch_8
        :pswitch_9
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final n(Ljava/lang/Object;[BIIIJLcom/google/android/gms/internal/vision/c0;)I
    .locals 4

    sget-object v0, Lcom/google/android/gms/internal/vision/x1;->s:Lsun/misc/Unsafe;

    invoke-virtual {p0, p5}, Lcom/google/android/gms/internal/vision/x1;->F(I)Ljava/lang/Object;

    move-result-object p5

    invoke-virtual {v0, p1, p6, p7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/vision/x1;->q:Lcom/google/android/gms/internal/vision/q1;

    invoke-interface {v2, v1}, Lcom/google/android/gms/internal/vision/q1;->d(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/vision/x1;->q:Lcom/google/android/gms/internal/vision/q1;

    invoke-interface {v2, p5}, Lcom/google/android/gms/internal/vision/q1;->h(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/vision/x1;->q:Lcom/google/android/gms/internal/vision/q1;

    invoke-interface {v3, v2, v1}, Lcom/google/android/gms/internal/vision/q1;->e(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, p1, p6, p7, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object v1, v2

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/vision/x1;->q:Lcom/google/android/gms/internal/vision/q1;

    invoke-interface {p1, p5}, Lcom/google/android/gms/internal/vision/q1;->g(Ljava/lang/Object;)Lcom/google/android/gms/internal/vision/o1;

    iget-object p1, p0, Lcom/google/android/gms/internal/vision/x1;->q:Lcom/google/android/gms/internal/vision/q1;

    invoke-interface {p1, v1}, Lcom/google/android/gms/internal/vision/q1;->b(Ljava/lang/Object;)Ljava/util/Map;

    invoke-static {p2, p3, p8}, Lcom/google/android/gms/internal/vision/b0;->h([BILcom/google/android/gms/internal/vision/c0;)I

    move-result p1

    iget p2, p8, Lcom/google/android/gms/internal/vision/c0;->a:I

    if-ltz p2, :cond_2

    sub-int/2addr p4, p1

    if-le p2, p4, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    throw p1

    :cond_2
    :goto_0
    invoke-static {}, Lcom/google/android/gms/internal/vision/W0;->a()Lcom/google/android/gms/internal/vision/W0;

    move-result-object p1

    throw p1
.end method

.method public final o(Ljava/lang/Object;[BIIILcom/google/android/gms/internal/vision/c0;)I
    .locals 28

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move/from16 v11, p5

    move-object/from16 v9, p6

    sget-object v10, Lcom/google/android/gms/internal/vision/x1;->s:Lsun/misc/Unsafe;

    const/16 v16, 0x0

    move/from16 v0, p3

    move/from16 v2, v16

    move v3, v2

    move v5, v3

    const/4 v1, -0x1

    const v6, 0xfffff

    :goto_0
    if-ge v0, v13, :cond_1d

    add-int/lit8 v3, v0, 0x1

    aget-byte v0, v12, v0

    if-gez v0, :cond_0

    invoke-static {v0, v12, v3, v9}, Lcom/google/android/gms/internal/vision/b0;->c(I[BILcom/google/android/gms/internal/vision/c0;)I

    move-result v0

    iget v3, v9, Lcom/google/android/gms/internal/vision/c0;->a:I

    move v4, v3

    move v3, v0

    goto :goto_1

    :cond_0
    move v4, v0

    :goto_1
    ushr-int/lit8 v0, v4, 0x3

    and-int/lit8 v8, v4, 0x7

    const/4 v7, 0x3

    if-le v0, v1, :cond_1

    div-int/2addr v2, v7

    invoke-virtual {v15, v0, v2}, Lcom/google/android/gms/internal/vision/x1;->j(II)I

    move-result v1

    :goto_2
    move v2, v1

    const/4 v1, -0x1

    goto :goto_3

    :cond_1
    invoke-virtual {v15, v0}, Lcom/google/android/gms/internal/vision/x1;->T(I)I

    move-result v1

    goto :goto_2

    :goto_3
    if-ne v2, v1, :cond_2

    move/from16 p3, v0

    move/from16 v17, v1

    move v2, v3

    move v8, v4

    move/from16 v19, v5

    move-object/from16 v25, v10

    move v7, v11

    move/from16 v18, v16

    goto/16 :goto_16

    :cond_2
    iget-object v1, v15, Lcom/google/android/gms/internal/vision/x1;->a:[I

    add-int/lit8 v19, v2, 0x1

    aget v7, v1, v19

    const/high16 v19, 0xff00000

    and-int v19, v7, v19

    ushr-int/lit8 v11, v19, 0x14

    move/from16 v19, v4

    const v17, 0xfffff

    and-int v4, v7, v17

    int-to-long v12, v4

    const/16 v4, 0x11

    move/from16 v20, v7

    if-gt v11, v4, :cond_f

    add-int/lit8 v4, v2, 0x2

    aget v1, v1, v4

    ushr-int/lit8 v4, v1, 0x14

    const/4 v7, 0x1

    shl-int v21, v7, v4

    const v4, 0xfffff

    and-int/2addr v1, v4

    move/from16 v17, v8

    if-eq v1, v6, :cond_4

    if-eq v6, v4, :cond_3

    int-to-long v7, v6

    invoke-virtual {v10, v14, v7, v8, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_3
    int-to-long v5, v1

    invoke-virtual {v10, v14, v5, v6}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v5

    move v7, v1

    :goto_4
    move v6, v5

    goto :goto_5

    :cond_4
    move v7, v6

    goto :goto_4

    :goto_5
    const/4 v1, 0x5

    packed-switch v11, :pswitch_data_0

    move-object/from16 v12, p2

    move v11, v0

    move v13, v2

    move/from16 v18, v4

    move/from16 p3, v7

    move/from16 v7, v19

    const/16 v17, -0x1

    goto/16 :goto_11

    :pswitch_0
    move/from16 v8, v17

    const/4 v1, 0x3

    if-ne v8, v1, :cond_6

    shl-int/lit8 v1, v0, 0x3

    or-int/lit8 v5, v1, 0x4

    invoke-virtual {v15, v2}, Lcom/google/android/gms/internal/vision/x1;->q(I)Lcom/google/android/gms/internal/vision/K1;

    move-result-object v1

    move v11, v0

    move-object v0, v1

    const/16 v17, -0x1

    move-object/from16 v1, p2

    move v8, v2

    move v2, v3

    move/from16 v3, p4

    move/from16 v18, v4

    move/from16 p3, v7

    move/from16 v7, v19

    move v4, v5

    move-object/from16 v5, p6

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/vision/b0;->e(Lcom/google/android/gms/internal/vision/K1;[BIIILcom/google/android/gms/internal/vision/c0;)I

    move-result v0

    and-int v1, v6, v21

    if-nez v1, :cond_5

    iget-object v1, v9, Lcom/google/android/gms/internal/vision/c0;->c:Ljava/lang/Object;

    invoke-virtual {v10, v14, v12, v13, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_6

    :cond_5
    invoke-virtual {v10, v14, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, v9, Lcom/google/android/gms/internal/vision/c0;->c:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/vision/R0;->e(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v10, v14, v12, v13, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_6
    or-int v5, v6, v21

    move-object/from16 v12, p2

    move/from16 v6, p3

    move/from16 v13, p4

    move v3, v7

    move v2, v8

    move v1, v11

    :goto_7
    move/from16 v11, p5

    goto/16 :goto_0

    :cond_6
    move v11, v0

    move/from16 v18, v4

    move/from16 p3, v7

    move/from16 v7, v19

    const/16 v17, -0x1

    move-object/from16 v12, p2

    move v13, v2

    goto/16 :goto_11

    :pswitch_1
    move v11, v0

    move/from16 v18, v4

    move/from16 p3, v7

    move/from16 v8, v17

    move/from16 v7, v19

    const/16 v17, -0x1

    move v4, v2

    if-nez v8, :cond_7

    move-wide v1, v12

    move-object/from16 v12, p2

    invoke-static {v12, v3, v9}, Lcom/google/android/gms/internal/vision/b0;->j([BILcom/google/android/gms/internal/vision/c0;)I

    move-result v8

    move-wide/from16 v19, v1

    iget-wide v0, v9, Lcom/google/android/gms/internal/vision/c0;->b:J

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/vision/t0;->a(J)J

    move-result-wide v22

    move-object v0, v10

    move-wide/from16 v2, v19

    move-object/from16 v1, p1

    move v13, v4

    move-wide/from16 v4, v22

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    :goto_8
    or-int v5, v6, v21

    move/from16 v6, p3

    move v3, v7

    move v0, v8

    :goto_9
    move v1, v11

    move v2, v13

    :goto_a
    move/from16 v13, p4

    goto :goto_7

    :cond_7
    move-object/from16 v12, p2

    move v13, v4

    goto/16 :goto_11

    :pswitch_2
    move v11, v0

    move/from16 v18, v4

    move/from16 p3, v7

    move-wide v4, v12

    move/from16 v8, v17

    move/from16 v7, v19

    const/16 v17, -0x1

    move-object/from16 v12, p2

    move v13, v2

    if-nez v8, :cond_e

    invoke-static {v12, v3, v9}, Lcom/google/android/gms/internal/vision/b0;->h([BILcom/google/android/gms/internal/vision/c0;)I

    move-result v0

    iget v1, v9, Lcom/google/android/gms/internal/vision/c0;->a:I

    invoke-static {v1}, Lcom/google/android/gms/internal/vision/t0;->d(I)I

    move-result v1

    invoke-virtual {v10, v14, v4, v5, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :goto_b
    or-int v5, v6, v21

    move/from16 v6, p3

    move v3, v7

    goto :goto_9

    :pswitch_3
    move v11, v0

    move/from16 v18, v4

    move/from16 p3, v7

    move-wide v4, v12

    move/from16 v8, v17

    move/from16 v7, v19

    const/16 v17, -0x1

    move-object/from16 v12, p2

    move v13, v2

    if-nez v8, :cond_e

    invoke-static {v12, v3, v9}, Lcom/google/android/gms/internal/vision/b0;->h([BILcom/google/android/gms/internal/vision/c0;)I

    move-result v0

    iget v1, v9, Lcom/google/android/gms/internal/vision/c0;->a:I

    invoke-virtual {v15, v13}, Lcom/google/android/gms/internal/vision/x1;->L(I)Lcom/google/android/gms/internal/vision/S0;

    move-result-object v2

    if-eqz v2, :cond_9

    invoke-interface {v2, v1}, Lcom/google/android/gms/internal/vision/S0;->b(I)Z

    move-result v2

    if-eqz v2, :cond_8

    goto :goto_c

    :cond_8
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/vision/x1;->R(Ljava/lang/Object;)Lcom/google/android/gms/internal/vision/d2;

    move-result-object v2

    int-to-long v3, v1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v2, v7, v1}, Lcom/google/android/gms/internal/vision/d2;->c(ILjava/lang/Object;)V

    move v5, v6

    move v3, v7

    move v1, v11

    move v2, v13

    move/from16 v6, p3

    goto :goto_a

    :cond_9
    :goto_c
    invoke-virtual {v10, v14, v4, v5, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_b

    :pswitch_4
    move v11, v0

    move/from16 v18, v4

    move/from16 p3, v7

    move-wide v4, v12

    move/from16 v8, v17

    move/from16 v7, v19

    const/4 v0, 0x2

    const/16 v17, -0x1

    move-object/from16 v12, p2

    move v13, v2

    if-ne v8, v0, :cond_e

    invoke-static {v12, v3, v9}, Lcom/google/android/gms/internal/vision/b0;->p([BILcom/google/android/gms/internal/vision/c0;)I

    move-result v0

    iget-object v1, v9, Lcom/google/android/gms/internal/vision/c0;->c:Ljava/lang/Object;

    invoke-virtual {v10, v14, v4, v5, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_b

    :pswitch_5
    move v11, v0

    move/from16 v18, v4

    move/from16 p3, v7

    move-wide v4, v12

    move/from16 v8, v17

    move/from16 v7, v19

    const/4 v0, 0x2

    const/16 v17, -0x1

    move-object/from16 v12, p2

    move v13, v2

    if-ne v8, v0, :cond_b

    invoke-virtual {v15, v13}, Lcom/google/android/gms/internal/vision/x1;->q(I)Lcom/google/android/gms/internal/vision/K1;

    move-result-object v0

    move/from16 v2, p4

    invoke-static {v0, v12, v3, v2, v9}, Lcom/google/android/gms/internal/vision/b0;->f(Lcom/google/android/gms/internal/vision/K1;[BIILcom/google/android/gms/internal/vision/c0;)I

    move-result v0

    and-int v1, v6, v21

    if-nez v1, :cond_a

    iget-object v1, v9, Lcom/google/android/gms/internal/vision/c0;->c:Ljava/lang/Object;

    invoke-virtual {v10, v14, v4, v5, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_d

    :cond_a
    invoke-virtual {v10, v14, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    iget-object v3, v9, Lcom/google/android/gms/internal/vision/c0;->c:Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/vision/R0;->e(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v10, v14, v4, v5, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_d
    or-int v5, v6, v21

    move/from16 v6, p3

    :goto_e
    move v3, v7

    move v1, v11

    move/from16 v11, p5

    move/from16 v26, v13

    move v13, v2

    move/from16 v2, v26

    goto/16 :goto_0

    :cond_b
    move/from16 v2, p4

    goto/16 :goto_11

    :pswitch_6
    move v11, v0

    move/from16 v18, v4

    move/from16 p3, v7

    move-wide v4, v12

    move/from16 v8, v17

    move/from16 v7, v19

    const/4 v0, 0x2

    const/16 v17, -0x1

    move-object/from16 v12, p2

    move v13, v2

    move/from16 v2, p4

    if-ne v8, v0, :cond_e

    const/high16 v0, 0x20000000

    and-int v0, v20, v0

    if-nez v0, :cond_c

    invoke-static {v12, v3, v9}, Lcom/google/android/gms/internal/vision/b0;->m([BILcom/google/android/gms/internal/vision/c0;)I

    move-result v0

    goto :goto_f

    :cond_c
    invoke-static {v12, v3, v9}, Lcom/google/android/gms/internal/vision/b0;->o([BILcom/google/android/gms/internal/vision/c0;)I

    move-result v0

    :goto_f
    iget-object v1, v9, Lcom/google/android/gms/internal/vision/c0;->c:Ljava/lang/Object;

    invoke-virtual {v10, v14, v4, v5, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_d

    :pswitch_7
    move v11, v0

    move/from16 v18, v4

    move/from16 p3, v7

    move-wide v4, v12

    move/from16 v8, v17

    move/from16 v7, v19

    const/16 v17, -0x1

    move-object/from16 v12, p2

    move v13, v2

    move/from16 v2, p4

    if-nez v8, :cond_e

    invoke-static {v12, v3, v9}, Lcom/google/android/gms/internal/vision/b0;->j([BILcom/google/android/gms/internal/vision/c0;)I

    move-result v0

    move v3, v0

    iget-wide v0, v9, Lcom/google/android/gms/internal/vision/c0;->b:J

    const-wide/16 v19, 0x0

    cmp-long v0, v0, v19

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    goto :goto_10

    :cond_d
    move/from16 v0, v16

    :goto_10
    invoke-static {v14, v4, v5, v0}, Lcom/google/android/gms/internal/vision/h2;->k(Ljava/lang/Object;JZ)V

    or-int v5, v6, v21

    move/from16 v6, p3

    move v0, v3

    goto :goto_e

    :pswitch_8
    move v11, v0

    move/from16 v18, v4

    move/from16 p3, v7

    move-wide v4, v12

    move/from16 v8, v17

    move/from16 v7, v19

    const/16 v17, -0x1

    move-object/from16 v12, p2

    move v13, v2

    move/from16 v2, p4

    if-ne v8, v1, :cond_e

    invoke-static {v12, v3}, Lcom/google/android/gms/internal/vision/b0;->g([BI)I

    move-result v0

    invoke-virtual {v10, v14, v4, v5, v0}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    add-int/lit8 v0, v3, 0x4

    goto/16 :goto_d

    :pswitch_9
    move v11, v0

    move/from16 v18, v4

    move/from16 p3, v7

    move-wide v4, v12

    move/from16 v8, v17

    move/from16 v7, v19

    const/4 v0, 0x1

    const/16 v17, -0x1

    move-object/from16 v12, p2

    move v13, v2

    move/from16 v2, p4

    if-ne v8, v0, :cond_e

    invoke-static {v12, v3}, Lcom/google/android/gms/internal/vision/b0;->k([BI)J

    move-result-wide v19

    move-object v0, v10

    move-object/from16 v1, p1

    move v8, v3

    move-wide v2, v4

    move-wide/from16 v4, v19

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    add-int/lit8 v0, v8, 0x8

    goto/16 :goto_b

    :pswitch_a
    move v11, v0

    move/from16 v18, v4

    move/from16 p3, v7

    move-wide v4, v12

    move/from16 v8, v17

    move/from16 v7, v19

    const/16 v17, -0x1

    move-object/from16 v12, p2

    move v13, v2

    if-nez v8, :cond_e

    invoke-static {v12, v3, v9}, Lcom/google/android/gms/internal/vision/b0;->h([BILcom/google/android/gms/internal/vision/c0;)I

    move-result v0

    iget v1, v9, Lcom/google/android/gms/internal/vision/c0;->a:I

    invoke-virtual {v10, v14, v4, v5, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_b

    :pswitch_b
    move v11, v0

    move/from16 v18, v4

    move/from16 p3, v7

    move-wide v4, v12

    move/from16 v8, v17

    move/from16 v7, v19

    const/16 v17, -0x1

    move-object/from16 v12, p2

    move v13, v2

    if-nez v8, :cond_e

    invoke-static {v12, v3, v9}, Lcom/google/android/gms/internal/vision/b0;->j([BILcom/google/android/gms/internal/vision/c0;)I

    move-result v8

    iget-wide v2, v9, Lcom/google/android/gms/internal/vision/c0;->b:J

    move-object v0, v10

    move-object/from16 v1, p1

    move-wide/from16 v19, v2

    move-wide v2, v4

    move-wide/from16 v4, v19

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    goto/16 :goto_8

    :pswitch_c
    move v11, v0

    move/from16 v18, v4

    move/from16 p3, v7

    move-wide v4, v12

    move/from16 v8, v17

    move/from16 v7, v19

    const/16 v17, -0x1

    move-object/from16 v12, p2

    move v13, v2

    if-ne v8, v1, :cond_e

    invoke-static {v12, v3}, Lcom/google/android/gms/internal/vision/b0;->n([BI)F

    move-result v0

    invoke-static {v14, v4, v5, v0}, Lcom/google/android/gms/internal/vision/h2;->g(Ljava/lang/Object;JF)V

    add-int/lit8 v0, v3, 0x4

    goto/16 :goto_b

    :pswitch_d
    move v11, v0

    move/from16 v18, v4

    move/from16 p3, v7

    move-wide v4, v12

    move/from16 v8, v17

    move/from16 v7, v19

    const/4 v0, 0x1

    const/16 v17, -0x1

    move-object/from16 v12, p2

    move v13, v2

    if-ne v8, v0, :cond_e

    invoke-static {v12, v3}, Lcom/google/android/gms/internal/vision/b0;->l([BI)D

    move-result-wide v0

    invoke-static {v14, v4, v5, v0, v1}, Lcom/google/android/gms/internal/vision/h2;->f(Ljava/lang/Object;JD)V

    add-int/lit8 v0, v3, 0x8

    goto/16 :goto_b

    :cond_e
    :goto_11
    move v2, v3

    move/from16 v19, v6

    move v8, v7

    move-object/from16 v25, v10

    move/from16 v18, v13

    move/from16 v6, p3

    move/from16 v7, p5

    move/from16 p3, v11

    goto/16 :goto_16

    :cond_f
    move v4, v0

    move/from16 v7, v19

    const/16 v17, -0x1

    const v18, 0xfffff

    move-wide/from16 v26, v12

    move-object/from16 v12, p2

    move v13, v2

    move-wide/from16 v1, v26

    const/16 v0, 0x1b

    if-ne v11, v0, :cond_13

    const/4 v0, 0x2

    if-ne v8, v0, :cond_12

    invoke-virtual {v10, v14, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/vision/X0;

    invoke-interface {v0}, Lcom/google/android/gms/internal/vision/X0;->a()Z

    move-result v8

    if-nez v8, :cond_11

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_10

    const/16 v8, 0xa

    goto :goto_12

    :cond_10
    shl-int/lit8 v8, v8, 0x1

    :goto_12
    invoke-interface {v0, v8}, Lcom/google/android/gms/internal/vision/X0;->b(I)Lcom/google/android/gms/internal/vision/X0;

    move-result-object v0

    invoke-virtual {v10, v14, v1, v2, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_11
    move-object v8, v0

    invoke-virtual {v15, v13}, Lcom/google/android/gms/internal/vision/x1;->q(I)Lcom/google/android/gms/internal/vision/K1;

    move-result-object v0

    move v1, v7

    move-object/from16 v2, p2

    move v11, v4

    move/from16 v4, p4

    move/from16 v19, v5

    move-object v5, v8

    move/from16 v21, v6

    move-object/from16 v6, p6

    invoke-static/range {v0 .. v6}, Lcom/google/android/gms/internal/vision/b0;->d(Lcom/google/android/gms/internal/vision/K1;I[BIILcom/google/android/gms/internal/vision/X0;Lcom/google/android/gms/internal/vision/c0;)I

    move-result v0

    move v3, v7

    move v1, v11

    move v2, v13

    move/from16 v5, v19

    move/from16 v6, v21

    goto/16 :goto_a

    :cond_12
    move/from16 v19, v5

    move/from16 v21, v6

    move v15, v3

    move/from16 p3, v4

    move/from16 v24, v7

    move-object/from16 v25, v10

    move/from16 v18, v13

    goto/16 :goto_15

    :cond_13
    move/from16 v19, v5

    move/from16 v21, v6

    move v5, v4

    const/16 v0, 0x31

    if-gt v11, v0, :cond_15

    move/from16 v6, v20

    move-object/from16 v20, v10

    int-to-long v9, v6

    move-object/from16 v0, p0

    move-wide/from16 v22, v1

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v6, v3

    move/from16 v4, p4

    move/from16 p3, v5

    move v5, v7

    move v15, v6

    move/from16 v6, p3

    move/from16 v24, v7

    move v7, v8

    move v8, v13

    move-object/from16 v25, v20

    move/from16 v18, v13

    move-wide/from16 v12, v22

    move-object/from16 v14, p6

    invoke-virtual/range {v0 .. v14}, Lcom/google/android/gms/internal/vision/x1;->m(Ljava/lang/Object;[BIIIIIIJIJLcom/google/android/gms/internal/vision/c0;)I

    move-result v0

    if-ne v0, v15, :cond_14

    :goto_13
    move/from16 v7, p5

    move v2, v0

    :goto_14
    move/from16 v6, v21

    move/from16 v8, v24

    goto/16 :goto_16

    :cond_14
    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v1, p3

    move/from16 v13, p4

    move/from16 v11, p5

    move-object/from16 v9, p6

    move/from16 v2, v18

    move/from16 v5, v19

    move/from16 v6, v21

    move/from16 v3, v24

    move-object/from16 v10, v25

    goto/16 :goto_0

    :cond_15
    move-wide/from16 v22, v1

    move v15, v3

    move/from16 p3, v5

    move/from16 v24, v7

    move-object/from16 v25, v10

    move/from16 v18, v13

    move/from16 v6, v20

    const/16 v0, 0x32

    if-ne v11, v0, :cond_17

    const/4 v0, 0x2

    if-ne v8, v0, :cond_16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v15

    move/from16 v4, p4

    move/from16 v5, v18

    move-wide/from16 v6, v22

    move-object/from16 v8, p6

    invoke-virtual/range {v0 .. v8}, Lcom/google/android/gms/internal/vision/x1;->n(Ljava/lang/Object;[BIIIJLcom/google/android/gms/internal/vision/c0;)I

    move-result v0

    if-ne v0, v15, :cond_14

    goto :goto_13

    :cond_16
    :goto_15
    move/from16 v7, p5

    move v2, v15

    goto :goto_14

    :cond_17
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v15

    move/from16 v4, p4

    move/from16 v5, v24

    move v7, v6

    move/from16 v6, p3

    move v9, v7

    move v7, v8

    move v8, v9

    move v9, v11

    move-wide/from16 v10, v22

    move/from16 v12, v18

    move-object/from16 v13, p6

    invoke-virtual/range {v0 .. v13}, Lcom/google/android/gms/internal/vision/x1;->l(Ljava/lang/Object;[BIIIIIIIJILcom/google/android/gms/internal/vision/c0;)I

    move-result v0

    if-ne v0, v15, :cond_1c

    goto :goto_13

    :goto_16
    if-ne v8, v7, :cond_18

    if-nez v7, :cond_19

    :cond_18
    move-object/from16 v9, p0

    goto :goto_17

    :cond_19
    const v1, 0xfffff

    move-object/from16 v9, p0

    move v0, v2

    move v3, v8

    move/from16 v5, v19

    goto/16 :goto_1a

    :goto_17
    iget-boolean v0, v9, Lcom/google/android/gms/internal/vision/x1;->f:Z

    if-eqz v0, :cond_1b

    move-object/from16 v10, p6

    iget-object v0, v10, Lcom/google/android/gms/internal/vision/c0;->d:Lcom/google/android/gms/internal/vision/A0;

    invoke-static {}, Lcom/google/android/gms/internal/vision/A0;->b()Lcom/google/android/gms/internal/vision/A0;

    move-result-object v1

    if-eq v0, v1, :cond_1a

    iget-object v0, v9, Lcom/google/android/gms/internal/vision/x1;->e:Lcom/google/android/gms/internal/vision/t1;

    iget-object v1, v10, Lcom/google/android/gms/internal/vision/c0;->d:Lcom/google/android/gms/internal/vision/A0;

    move/from16 v11, p3

    invoke-virtual {v1, v0, v11}, Lcom/google/android/gms/internal/vision/A0;->a(Lcom/google/android/gms/internal/vision/t1;I)Lcom/google/android/gms/internal/vision/N0$c;

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/vision/x1;->R(Ljava/lang/Object;)Lcom/google/android/gms/internal/vision/d2;

    move-result-object v4

    move v0, v8

    move-object/from16 v1, p2

    move/from16 v3, p4

    move-object/from16 v5, p6

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/vision/b0;->b(I[BIILcom/google/android/gms/internal/vision/d2;Lcom/google/android/gms/internal/vision/c0;)I

    move-result v0

    :goto_18
    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move v3, v8

    move-object v15, v9

    move-object v9, v10

    move v1, v11

    move/from16 v2, v18

    move/from16 v5, v19

    move-object/from16 v10, v25

    move v11, v7

    goto/16 :goto_0

    :cond_1a
    move/from16 v11, p3

    goto :goto_19

    :cond_1b
    move/from16 v11, p3

    move-object/from16 v10, p6

    :goto_19
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/vision/x1;->R(Ljava/lang/Object;)Lcom/google/android/gms/internal/vision/d2;

    move-result-object v4

    move v0, v8

    move-object/from16 v1, p2

    move/from16 v3, p4

    move-object/from16 v5, p6

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/vision/b0;->b(I[BIILcom/google/android/gms/internal/vision/d2;Lcom/google/android/gms/internal/vision/c0;)I

    move-result v0

    goto :goto_18

    :cond_1c
    move/from16 v11, p3

    move/from16 v8, v24

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move-object/from16 v9, p6

    move v3, v8

    move v1, v11

    move/from16 v2, v18

    move/from16 v5, v19

    move/from16 v6, v21

    move-object/from16 v10, v25

    goto/16 :goto_7

    :cond_1d
    move/from16 v19, v5

    move/from16 v21, v6

    move-object/from16 v25, v10

    move v7, v11

    move-object v9, v15

    const v1, 0xfffff

    :goto_1a
    if-eq v6, v1, :cond_1e

    int-to-long v1, v6

    move-object/from16 v4, p1

    move-object/from16 v6, v25

    invoke-virtual {v6, v4, v1, v2, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_1b

    :cond_1e
    move-object/from16 v4, p1

    :goto_1b
    iget v1, v9, Lcom/google/android/gms/internal/vision/x1;->k:I

    const/4 v2, 0x0

    :goto_1c
    iget v5, v9, Lcom/google/android/gms/internal/vision/x1;->l:I

    if-ge v1, v5, :cond_1f

    iget-object v5, v9, Lcom/google/android/gms/internal/vision/x1;->j:[I

    aget v5, v5, v1

    iget-object v6, v9, Lcom/google/android/gms/internal/vision/x1;->o:Lcom/google/android/gms/internal/vision/a2;

    invoke-virtual {v9, v4, v5, v2, v6}, Lcom/google/android/gms/internal/vision/x1;->s(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/android/gms/internal/vision/a2;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/vision/d2;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    :cond_1f
    if-eqz v2, :cond_20

    iget-object v1, v9, Lcom/google/android/gms/internal/vision/x1;->o:Lcom/google/android/gms/internal/vision/a2;

    invoke-virtual {v1, v4, v2}, Lcom/google/android/gms/internal/vision/a2;->h(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_20
    if-nez v7, :cond_22

    move/from16 v1, p4

    if-ne v0, v1, :cond_21

    goto :goto_1d

    :cond_21
    invoke-static {}, Lcom/google/android/gms/internal/vision/W0;->e()Lcom/google/android/gms/internal/vision/W0;

    move-result-object v0

    throw v0

    :cond_22
    move/from16 v1, p4

    if-gt v0, v1, :cond_23

    if-ne v3, v7, :cond_23

    :goto_1d
    return v0

    :cond_23
    invoke-static {}, Lcom/google/android/gms/internal/vision/W0;->e()Lcom/google/android/gms/internal/vision/W0;

    move-result-object v0

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_a
        :pswitch_3
        :pswitch_8
        :pswitch_9
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final q(I)Lcom/google/android/gms/internal/vision/K1;
    .locals 3

    div-int/lit8 p1, p1, 0x3

    shl-int/lit8 p1, p1, 0x1

    iget-object v0, p0, Lcom/google/android/gms/internal/vision/x1;->b:[Ljava/lang/Object;

    aget-object v0, v0, p1

    check-cast v0, Lcom/google/android/gms/internal/vision/K1;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/vision/F1;->a()Lcom/google/android/gms/internal/vision/F1;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/vision/x1;->b:[Ljava/lang/Object;

    add-int/lit8 v2, p1, 0x1

    aget-object v1, v1, v2

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/vision/F1;->b(Ljava/lang/Class;)Lcom/google/android/gms/internal/vision/K1;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/vision/x1;->b:[Ljava/lang/Object;

    aput-object v0, v1, p1

    return-object v0
.end method

.method public final r(IILjava/util/Map;Lcom/google/android/gms/internal/vision/S0;Ljava/lang/Object;Lcom/google/android/gms/internal/vision/a2;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/vision/x1;->q:Lcom/google/android/gms/internal/vision/q1;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/vision/x1;->F(I)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/vision/q1;->g(Ljava/lang/Object;)Lcom/google/android/gms/internal/vision/o1;

    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map$Entry;

    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p4, v0}, Lcom/google/android/gms/internal/vision/S0;->b(I)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p5, :cond_1

    invoke-virtual {p6}, Lcom/google/android/gms/internal/vision/a2;->a()Ljava/lang/Object;

    move-result-object p5

    :cond_1
    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2, v0, v1}, Lcom/google/android/gms/internal/vision/l1;->a(Lcom/google/android/gms/internal/vision/o1;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/vision/g0;->F(I)Lcom/google/android/gms/internal/vision/p0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/p0;->b()Lcom/google/android/gms/internal/vision/v0;

    move-result-object v1

    :try_start_0
    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p3

    invoke-static {v1, v2, v3, p3}, Lcom/google/android/gms/internal/vision/l1;->b(Lcom/google/android/gms/internal/vision/v0;Lcom/google/android/gms/internal/vision/o1;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/p0;->a()Lcom/google/android/gms/internal/vision/g0;

    move-result-object p3

    invoke-virtual {p6, p5, p2, p3}, Lcom/google/android/gms/internal/vision/a2;->c(Ljava/lang/Object;ILcom/google/android/gms/internal/vision/g0;)V

    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_2
    return-object p5
.end method

.method public final s(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/android/gms/internal/vision/a2;)Ljava/lang/Object;
    .locals 8

    iget-object v0, p0, Lcom/google/android/gms/internal/vision/x1;->a:[I

    aget v3, v0, p2

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/vision/x1;->N(I)I

    move-result v0

    const v1, 0xfffff

    and-int/2addr v0, v1

    int-to-long v0, v0

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/vision/h2;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    return-object p3

    :cond_0
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/vision/x1;->L(I)Lcom/google/android/gms/internal/vision/S0;

    move-result-object v5

    if-nez v5, :cond_1

    return-object p3

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/x1;->q:Lcom/google/android/gms/internal/vision/q1;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/vision/q1;->b(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v4

    move-object v1, p0

    move v2, p2

    move-object v6, p3

    move-object v7, p4

    invoke-virtual/range {v1 .. v7}, Lcom/google/android/gms/internal/vision/x1;->r(IILjava/util/Map;Lcom/google/android/gms/internal/vision/S0;Ljava/lang/Object;Lcom/google/android/gms/internal/vision/a2;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final x(Lcom/google/android/gms/internal/vision/y2;ILjava/lang/Object;I)V
    .locals 1

    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/vision/x1;->q:Lcom/google/android/gms/internal/vision/q1;

    invoke-virtual {p0, p4}, Lcom/google/android/gms/internal/vision/x1;->F(I)Ljava/lang/Object;

    move-result-object p4

    invoke-interface {v0, p4}, Lcom/google/android/gms/internal/vision/q1;->g(Ljava/lang/Object;)Lcom/google/android/gms/internal/vision/o1;

    iget-object p4, p0, Lcom/google/android/gms/internal/vision/x1;->q:Lcom/google/android/gms/internal/vision/q1;

    invoke-interface {p4, p3}, Lcom/google/android/gms/internal/vision/q1;->c(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p3

    const/4 p4, 0x0

    invoke-interface {p1, p2, p4, p3}, Lcom/google/android/gms/internal/vision/y2;->I(ILcom/google/android/gms/internal/vision/o1;Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public final y(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 3

    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/vision/x1;->N(I)I

    move-result v0

    const v1, 0xfffff

    and-int/2addr v0, v1

    int-to-long v0, v0

    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/vision/x1;->z(Ljava/lang/Object;I)Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/vision/h2;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p2, v0, v1}, Lcom/google/android/gms/internal/vision/h2;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p2

    if-eqz v2, :cond_1

    if-eqz p2, :cond_1

    invoke-static {v2, p2}, Lcom/google/android/gms/internal/vision/R0;->e(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, v0, v1, p2}, Lcom/google/android/gms/internal/vision/h2;->j(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {p0, p1, p3}, Lcom/google/android/gms/internal/vision/x1;->G(Ljava/lang/Object;I)V

    return-void

    :cond_1
    if-eqz p2, :cond_2

    invoke-static {p1, v0, v1, p2}, Lcom/google/android/gms/internal/vision/h2;->j(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {p0, p1, p3}, Lcom/google/android/gms/internal/vision/x1;->G(Ljava/lang/Object;I)V

    :cond_2
    return-void
.end method

.method public final z(Ljava/lang/Object;I)Z
    .locals 7

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/vision/x1;->P(I)I

    move-result v0

    const v1, 0xfffff

    and-int v2, v0, v1

    int-to-long v2, v2

    const-wide/32 v4, 0xfffff

    cmp-long v4, v2, v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v4, :cond_14

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/vision/x1;->N(I)I

    move-result p2

    and-int v0, p2, v1

    int-to-long v0, v0

    const/high16 v2, 0xff00000

    and-int/2addr p2, v2

    ushr-int/lit8 p2, p2, 0x14

    const-wide/16 v2, 0x0

    packed-switch p2, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :pswitch_0
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/vision/h2;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    return v6

    :cond_0
    return v5

    :pswitch_1
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/vision/h2;->o(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long p1, p1, v2

    if-eqz p1, :cond_1

    return v6

    :cond_1
    return v5

    :pswitch_2
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/vision/h2;->b(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_2

    return v6

    :cond_2
    return v5

    :pswitch_3
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/vision/h2;->o(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long p1, p1, v2

    if-eqz p1, :cond_3

    return v6

    :cond_3
    return v5

    :pswitch_4
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/vision/h2;->b(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_4

    return v6

    :cond_4
    return v5

    :pswitch_5
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/vision/h2;->b(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_5

    return v6

    :cond_5
    return v5

    :pswitch_6
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/vision/h2;->b(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_6

    return v6

    :cond_6
    return v5

    :pswitch_7
    sget-object p2, Lcom/google/android/gms/internal/vision/g0;->f:Lcom/google/android/gms/internal/vision/g0;

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/vision/h2;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/vision/g0;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    return v6

    :cond_7
    return v5

    :pswitch_8
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/vision/h2;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_8

    return v6

    :cond_8
    return v5

    :pswitch_9
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/vision/h2;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    instance-of p2, p1, Ljava/lang/String;

    if-eqz p2, :cond_a

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_9

    return v6

    :cond_9
    return v5

    :cond_a
    instance-of p2, p1, Lcom/google/android/gms/internal/vision/g0;

    if-eqz p2, :cond_c

    sget-object p2, Lcom/google/android/gms/internal/vision/g0;->f:Lcom/google/android/gms/internal/vision/g0;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/vision/g0;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    return v6

    :cond_b
    return v5

    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :pswitch_a
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/vision/h2;->w(Ljava/lang/Object;J)Z

    move-result p1

    return p1

    :pswitch_b
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/vision/h2;->b(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_d

    return v6

    :cond_d
    return v5

    :pswitch_c
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/vision/h2;->o(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long p1, p1, v2

    if-eqz p1, :cond_e

    return v6

    :cond_e
    return v5

    :pswitch_d
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/vision/h2;->b(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_f

    return v6

    :cond_f
    return v5

    :pswitch_e
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/vision/h2;->o(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long p1, p1, v2

    if-eqz p1, :cond_10

    return v6

    :cond_10
    return v5

    :pswitch_f
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/vision/h2;->o(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long p1, p1, v2

    if-eqz p1, :cond_11

    return v6

    :cond_11
    return v5

    :pswitch_10
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/vision/h2;->x(Ljava/lang/Object;J)F

    move-result p1

    const/4 p2, 0x0

    cmpl-float p1, p1, p2

    if-eqz p1, :cond_12

    return v6

    :cond_12
    return v5

    :pswitch_11
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/vision/h2;->C(Ljava/lang/Object;J)D

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmpl-double p1, p1, v0

    if-eqz p1, :cond_13

    return v6

    :cond_13
    return v5

    :cond_14
    ushr-int/lit8 p2, v0, 0x14

    shl-int p2, v6, p2

    invoke-static {p1, v2, v3}, Lcom/google/android/gms/internal/vision/h2;->b(Ljava/lang/Object;J)I

    move-result p1

    and-int/2addr p1, p2

    if-eqz p1, :cond_15

    return v6

    :cond_15
    return v5

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
