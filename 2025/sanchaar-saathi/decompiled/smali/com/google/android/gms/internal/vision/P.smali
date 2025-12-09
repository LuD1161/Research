.class public final enum Lcom/google/android/gms/internal/vision/P;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/vision/Q0;


# static fields
.field public static final enum f:Lcom/google/android/gms/internal/vision/P;

.field public static final enum g:Lcom/google/android/gms/internal/vision/P;

.field public static final enum h:Lcom/google/android/gms/internal/vision/P;

.field public static final enum i:Lcom/google/android/gms/internal/vision/P;

.field public static final enum j:Lcom/google/android/gms/internal/vision/P;

.field public static final enum k:Lcom/google/android/gms/internal/vision/P;

.field public static final enum l:Lcom/google/android/gms/internal/vision/P;

.field public static final enum m:Lcom/google/android/gms/internal/vision/P;

.field public static final enum n:Lcom/google/android/gms/internal/vision/P;

.field public static final enum o:Lcom/google/android/gms/internal/vision/P;

.field public static final enum p:Lcom/google/android/gms/internal/vision/P;

.field public static final enum q:Lcom/google/android/gms/internal/vision/P;

.field public static final enum r:Lcom/google/android/gms/internal/vision/P;

.field public static final enum s:Lcom/google/android/gms/internal/vision/P;

.field public static final enum t:Lcom/google/android/gms/internal/vision/P;

.field public static final enum u:Lcom/google/android/gms/internal/vision/P;

.field public static final v:Lcom/google/android/gms/internal/vision/T0;

.field public static final synthetic w:[Lcom/google/android/gms/internal/vision/P;


# instance fields
.field public final e:I


# direct methods
.method static constructor <clinit>()V
    .locals 19

    new-instance v0, Lcom/google/android/gms/internal/vision/P;

    const-string v1, "UNRECOGNIZED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/internal/vision/P;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/vision/P;->f:Lcom/google/android/gms/internal/vision/P;

    new-instance v1, Lcom/google/android/gms/internal/vision/P;

    const-string v2, "CODE_128"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/google/android/gms/internal/vision/P;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/android/gms/internal/vision/P;->g:Lcom/google/android/gms/internal/vision/P;

    new-instance v2, Lcom/google/android/gms/internal/vision/P;

    const-string v3, "CODE_39"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lcom/google/android/gms/internal/vision/P;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/google/android/gms/internal/vision/P;->h:Lcom/google/android/gms/internal/vision/P;

    new-instance v3, Lcom/google/android/gms/internal/vision/P;

    const-string v4, "CODE_93"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v5}, Lcom/google/android/gms/internal/vision/P;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/google/android/gms/internal/vision/P;->i:Lcom/google/android/gms/internal/vision/P;

    new-instance v4, Lcom/google/android/gms/internal/vision/P;

    const-string v5, "CODABAR"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6, v6}, Lcom/google/android/gms/internal/vision/P;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/google/android/gms/internal/vision/P;->j:Lcom/google/android/gms/internal/vision/P;

    new-instance v5, Lcom/google/android/gms/internal/vision/P;

    const-string v6, "DATA_MATRIX"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7, v7}, Lcom/google/android/gms/internal/vision/P;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/google/android/gms/internal/vision/P;->k:Lcom/google/android/gms/internal/vision/P;

    new-instance v6, Lcom/google/android/gms/internal/vision/P;

    const-string v7, "EAN_13"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8, v8}, Lcom/google/android/gms/internal/vision/P;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/google/android/gms/internal/vision/P;->l:Lcom/google/android/gms/internal/vision/P;

    new-instance v7, Lcom/google/android/gms/internal/vision/P;

    const-string v8, "EAN_8"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9, v9}, Lcom/google/android/gms/internal/vision/P;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/google/android/gms/internal/vision/P;->m:Lcom/google/android/gms/internal/vision/P;

    new-instance v8, Lcom/google/android/gms/internal/vision/P;

    const-string v9, "ITF"

    const/16 v10, 0x8

    invoke-direct {v8, v9, v10, v10}, Lcom/google/android/gms/internal/vision/P;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/google/android/gms/internal/vision/P;->n:Lcom/google/android/gms/internal/vision/P;

    new-instance v9, Lcom/google/android/gms/internal/vision/P;

    const-string v10, "QR_CODE"

    const/16 v11, 0x9

    invoke-direct {v9, v10, v11, v11}, Lcom/google/android/gms/internal/vision/P;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/google/android/gms/internal/vision/P;->o:Lcom/google/android/gms/internal/vision/P;

    new-instance v10, Lcom/google/android/gms/internal/vision/P;

    const-string v11, "UPC_A"

    const/16 v12, 0xa

    invoke-direct {v10, v11, v12, v12}, Lcom/google/android/gms/internal/vision/P;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/google/android/gms/internal/vision/P;->p:Lcom/google/android/gms/internal/vision/P;

    new-instance v11, Lcom/google/android/gms/internal/vision/P;

    const-string v12, "UPC_E"

    const/16 v13, 0xb

    invoke-direct {v11, v12, v13, v13}, Lcom/google/android/gms/internal/vision/P;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/google/android/gms/internal/vision/P;->q:Lcom/google/android/gms/internal/vision/P;

    new-instance v12, Lcom/google/android/gms/internal/vision/P;

    const-string v13, "PDF417"

    const/16 v14, 0xc

    invoke-direct {v12, v13, v14, v14}, Lcom/google/android/gms/internal/vision/P;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/google/android/gms/internal/vision/P;->r:Lcom/google/android/gms/internal/vision/P;

    new-instance v13, Lcom/google/android/gms/internal/vision/P;

    const-string v14, "AZTEC"

    const/16 v15, 0xd

    invoke-direct {v13, v14, v15, v15}, Lcom/google/android/gms/internal/vision/P;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/google/android/gms/internal/vision/P;->s:Lcom/google/android/gms/internal/vision/P;

    new-instance v14, Lcom/google/android/gms/internal/vision/P;

    const-string v15, "DATABAR"

    move-object/from16 v16, v13

    const/16 v13, 0xe

    invoke-direct {v14, v15, v13, v13}, Lcom/google/android/gms/internal/vision/P;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lcom/google/android/gms/internal/vision/P;->t:Lcom/google/android/gms/internal/vision/P;

    new-instance v15, Lcom/google/android/gms/internal/vision/P;

    const/16 v13, 0xf

    move-object/from16 v17, v14

    const/16 v14, 0x10

    move-object/from16 v18, v12

    const-string v12, "TEZ_CODE"

    invoke-direct {v15, v12, v13, v14}, Lcom/google/android/gms/internal/vision/P;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lcom/google/android/gms/internal/vision/P;->u:Lcom/google/android/gms/internal/vision/P;

    move-object/from16 v12, v18

    move-object/from16 v13, v16

    move-object/from16 v14, v17

    filled-new-array/range {v0 .. v15}, [Lcom/google/android/gms/internal/vision/P;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/vision/P;->w:[Lcom/google/android/gms/internal/vision/P;

    new-instance v0, Lcom/google/android/gms/internal/vision/O;

    invoke-direct {v0}, Lcom/google/android/gms/internal/vision/O;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/vision/P;->v:Lcom/google/android/gms/internal/vision/T0;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/google/android/gms/internal/vision/P;->e:I

    return-void
.end method

.method public static b(I)Lcom/google/android/gms/internal/vision/P;
    .locals 0

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const/4 p0, 0x0

    return-object p0

    :pswitch_1
    sget-object p0, Lcom/google/android/gms/internal/vision/P;->u:Lcom/google/android/gms/internal/vision/P;

    return-object p0

    :pswitch_2
    sget-object p0, Lcom/google/android/gms/internal/vision/P;->t:Lcom/google/android/gms/internal/vision/P;

    return-object p0

    :pswitch_3
    sget-object p0, Lcom/google/android/gms/internal/vision/P;->s:Lcom/google/android/gms/internal/vision/P;

    return-object p0

    :pswitch_4
    sget-object p0, Lcom/google/android/gms/internal/vision/P;->r:Lcom/google/android/gms/internal/vision/P;

    return-object p0

    :pswitch_5
    sget-object p0, Lcom/google/android/gms/internal/vision/P;->q:Lcom/google/android/gms/internal/vision/P;

    return-object p0

    :pswitch_6
    sget-object p0, Lcom/google/android/gms/internal/vision/P;->p:Lcom/google/android/gms/internal/vision/P;

    return-object p0

    :pswitch_7
    sget-object p0, Lcom/google/android/gms/internal/vision/P;->o:Lcom/google/android/gms/internal/vision/P;

    return-object p0

    :pswitch_8
    sget-object p0, Lcom/google/android/gms/internal/vision/P;->n:Lcom/google/android/gms/internal/vision/P;

    return-object p0

    :pswitch_9
    sget-object p0, Lcom/google/android/gms/internal/vision/P;->m:Lcom/google/android/gms/internal/vision/P;

    return-object p0

    :pswitch_a
    sget-object p0, Lcom/google/android/gms/internal/vision/P;->l:Lcom/google/android/gms/internal/vision/P;

    return-object p0

    :pswitch_b
    sget-object p0, Lcom/google/android/gms/internal/vision/P;->k:Lcom/google/android/gms/internal/vision/P;

    return-object p0

    :pswitch_c
    sget-object p0, Lcom/google/android/gms/internal/vision/P;->j:Lcom/google/android/gms/internal/vision/P;

    return-object p0

    :pswitch_d
    sget-object p0, Lcom/google/android/gms/internal/vision/P;->i:Lcom/google/android/gms/internal/vision/P;

    return-object p0

    :pswitch_e
    sget-object p0, Lcom/google/android/gms/internal/vision/P;->h:Lcom/google/android/gms/internal/vision/P;

    return-object p0

    :pswitch_f
    sget-object p0, Lcom/google/android/gms/internal/vision/P;->g:Lcom/google/android/gms/internal/vision/P;

    return-object p0

    :pswitch_10
    sget-object p0, Lcom/google/android/gms/internal/vision/P;->f:Lcom/google/android/gms/internal/vision/P;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
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
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static f()Lcom/google/android/gms/internal/vision/S0;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/vision/T;->a:Lcom/google/android/gms/internal/vision/S0;

    return-object v0
.end method

.method public static values()[Lcom/google/android/gms/internal/vision/P;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/vision/P;->w:[Lcom/google/android/gms/internal/vision/P;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/vision/P;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/vision/P;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/vision/P;->e:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/google/android/gms/internal/vision/P;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " number="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/android/gms/internal/vision/P;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
