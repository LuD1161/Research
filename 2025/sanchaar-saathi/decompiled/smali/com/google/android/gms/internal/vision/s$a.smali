.class public final enum Lcom/google/android/gms/internal/vision/s$a;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/vision/Q0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/vision/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation


# static fields
.field public static final enum f:Lcom/google/android/gms/internal/vision/s$a;

.field public static final enum g:Lcom/google/android/gms/internal/vision/s$a;

.field public static final enum h:Lcom/google/android/gms/internal/vision/s$a;

.field public static final enum i:Lcom/google/android/gms/internal/vision/s$a;

.field public static final j:Lcom/google/android/gms/internal/vision/T0;

.field public static final synthetic k:[Lcom/google/android/gms/internal/vision/s$a;


# instance fields
.field public final e:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/google/android/gms/internal/vision/s$a;

    const-string v1, "FORMAT_UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/internal/vision/s$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/vision/s$a;->f:Lcom/google/android/gms/internal/vision/s$a;

    new-instance v1, Lcom/google/android/gms/internal/vision/s$a;

    const-string v2, "FORMAT_LUMINANCE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/google/android/gms/internal/vision/s$a;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/android/gms/internal/vision/s$a;->g:Lcom/google/android/gms/internal/vision/s$a;

    new-instance v2, Lcom/google/android/gms/internal/vision/s$a;

    const-string v3, "FORMAT_RGB8"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lcom/google/android/gms/internal/vision/s$a;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/google/android/gms/internal/vision/s$a;->h:Lcom/google/android/gms/internal/vision/s$a;

    new-instance v3, Lcom/google/android/gms/internal/vision/s$a;

    const-string v4, "FORMAT_MONOCHROME"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v5}, Lcom/google/android/gms/internal/vision/s$a;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/google/android/gms/internal/vision/s$a;->i:Lcom/google/android/gms/internal/vision/s$a;

    filled-new-array {v0, v1, v2, v3}, [Lcom/google/android/gms/internal/vision/s$a;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/vision/s$a;->k:[Lcom/google/android/gms/internal/vision/s$a;

    new-instance v0, Lcom/google/android/gms/internal/vision/M;

    invoke-direct {v0}, Lcom/google/android/gms/internal/vision/M;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/vision/s$a;->j:Lcom/google/android/gms/internal/vision/T0;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/google/android/gms/internal/vision/s$a;->e:I

    return-void
.end method

.method public static b(I)Lcom/google/android/gms/internal/vision/s$a;
    .locals 1

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object p0, Lcom/google/android/gms/internal/vision/s$a;->i:Lcom/google/android/gms/internal/vision/s$a;

    return-object p0

    :cond_1
    sget-object p0, Lcom/google/android/gms/internal/vision/s$a;->h:Lcom/google/android/gms/internal/vision/s$a;

    return-object p0

    :cond_2
    sget-object p0, Lcom/google/android/gms/internal/vision/s$a;->g:Lcom/google/android/gms/internal/vision/s$a;

    return-object p0

    :cond_3
    sget-object p0, Lcom/google/android/gms/internal/vision/s$a;->f:Lcom/google/android/gms/internal/vision/s$a;

    return-object p0
.end method

.method public static f()Lcom/google/android/gms/internal/vision/S0;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/vision/L;->a:Lcom/google/android/gms/internal/vision/S0;

    return-object v0
.end method

.method public static values()[Lcom/google/android/gms/internal/vision/s$a;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/vision/s$a;->k:[Lcom/google/android/gms/internal/vision/s$a;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/vision/s$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/vision/s$a;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/vision/s$a;->e:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/google/android/gms/internal/vision/s$a;

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

    iget v1, p0, Lcom/google/android/gms/internal/vision/s$a;->e:I

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
