.class public final Lcom/google/android/gms/internal/clearcut/O;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Ljava/lang/Class;

.field public static final c:Lcom/google/android/gms/internal/clearcut/O;


# instance fields
.field public final a:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lcom/google/android/gms/internal/clearcut/O;->a()Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/clearcut/O;->b:Ljava/lang/Class;

    new-instance v0, Lcom/google/android/gms/internal/clearcut/O;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/clearcut/O;-><init>(Z)V

    sput-object v0, Lcom/google/android/gms/internal/clearcut/O;->c:Lcom/google/android/gms/internal/clearcut/O;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/clearcut/O;->a:Ljava/util/Map;

    return-void
.end method

.method public static a()Ljava/lang/Class;
    .locals 1

    :try_start_0
    const-string v0, "com.google.protobuf.Extension"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static b()Lcom/google/android/gms/internal/clearcut/O;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/clearcut/N;->b()Lcom/google/android/gms/internal/clearcut/O;

    move-result-object v0

    return-object v0
.end method
