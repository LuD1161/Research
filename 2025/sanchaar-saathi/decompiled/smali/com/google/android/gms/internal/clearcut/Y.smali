.class public final enum Lcom/google/android/gms/internal/clearcut/Y;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum f:Lcom/google/android/gms/internal/clearcut/Y;

.field public static final enum g:Lcom/google/android/gms/internal/clearcut/Y;

.field public static final enum h:Lcom/google/android/gms/internal/clearcut/Y;

.field public static final enum i:Lcom/google/android/gms/internal/clearcut/Y;

.field public static final synthetic j:[Lcom/google/android/gms/internal/clearcut/Y;


# instance fields
.field public final e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/google/android/gms/internal/clearcut/Y;

    const-string v1, "SCALAR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/internal/clearcut/Y;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/google/android/gms/internal/clearcut/Y;->f:Lcom/google/android/gms/internal/clearcut/Y;

    new-instance v1, Lcom/google/android/gms/internal/clearcut/Y;

    const-string v3, "VECTOR"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/google/android/gms/internal/clearcut/Y;-><init>(Ljava/lang/String;IZ)V

    sput-object v1, Lcom/google/android/gms/internal/clearcut/Y;->g:Lcom/google/android/gms/internal/clearcut/Y;

    new-instance v3, Lcom/google/android/gms/internal/clearcut/Y;

    const-string v5, "PACKED_VECTOR"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v4}, Lcom/google/android/gms/internal/clearcut/Y;-><init>(Ljava/lang/String;IZ)V

    sput-object v3, Lcom/google/android/gms/internal/clearcut/Y;->h:Lcom/google/android/gms/internal/clearcut/Y;

    new-instance v4, Lcom/google/android/gms/internal/clearcut/Y;

    const-string v5, "MAP"

    const/4 v6, 0x3

    invoke-direct {v4, v5, v6, v2}, Lcom/google/android/gms/internal/clearcut/Y;-><init>(Ljava/lang/String;IZ)V

    sput-object v4, Lcom/google/android/gms/internal/clearcut/Y;->i:Lcom/google/android/gms/internal/clearcut/Y;

    filled-new-array {v0, v1, v3, v4}, [Lcom/google/android/gms/internal/clearcut/Y;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/clearcut/Y;->j:[Lcom/google/android/gms/internal/clearcut/Y;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-boolean p3, p0, Lcom/google/android/gms/internal/clearcut/Y;->e:Z

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/clearcut/Y;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/clearcut/Y;->j:[Lcom/google/android/gms/internal/clearcut/Y;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/clearcut/Y;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/clearcut/Y;

    return-object v0
.end method
