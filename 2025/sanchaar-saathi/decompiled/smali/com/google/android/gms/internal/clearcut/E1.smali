.class public final enum Lcom/google/android/gms/internal/clearcut/E1;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/clearcut/d0;


# static fields
.field public static final enum f:Lcom/google/android/gms/internal/clearcut/E1;

.field public static final enum g:Lcom/google/android/gms/internal/clearcut/E1;

.field public static final enum h:Lcom/google/android/gms/internal/clearcut/E1;

.field public static final enum i:Lcom/google/android/gms/internal/clearcut/E1;

.field public static final enum j:Lcom/google/android/gms/internal/clearcut/E1;

.field public static final k:Lcom/google/android/gms/internal/clearcut/e0;

.field public static final synthetic l:[Lcom/google/android/gms/internal/clearcut/E1;


# instance fields
.field public final e:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/google/android/gms/internal/clearcut/E1;

    const-string v1, "DEFAULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/internal/clearcut/E1;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/clearcut/E1;->f:Lcom/google/android/gms/internal/clearcut/E1;

    new-instance v1, Lcom/google/android/gms/internal/clearcut/E1;

    const-string v2, "UNMETERED_ONLY"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/google/android/gms/internal/clearcut/E1;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/android/gms/internal/clearcut/E1;->g:Lcom/google/android/gms/internal/clearcut/E1;

    new-instance v2, Lcom/google/android/gms/internal/clearcut/E1;

    const-string v3, "UNMETERED_OR_DAILY"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lcom/google/android/gms/internal/clearcut/E1;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/google/android/gms/internal/clearcut/E1;->h:Lcom/google/android/gms/internal/clearcut/E1;

    new-instance v3, Lcom/google/android/gms/internal/clearcut/E1;

    const-string v4, "FAST_IF_RADIO_AWAKE"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v5}, Lcom/google/android/gms/internal/clearcut/E1;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/google/android/gms/internal/clearcut/E1;->i:Lcom/google/android/gms/internal/clearcut/E1;

    new-instance v4, Lcom/google/android/gms/internal/clearcut/E1;

    const-string v5, "NEVER"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6, v6}, Lcom/google/android/gms/internal/clearcut/E1;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/google/android/gms/internal/clearcut/E1;->j:Lcom/google/android/gms/internal/clearcut/E1;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/google/android/gms/internal/clearcut/E1;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/clearcut/E1;->l:[Lcom/google/android/gms/internal/clearcut/E1;

    new-instance v0, Lcom/google/android/gms/internal/clearcut/I1;

    invoke-direct {v0}, Lcom/google/android/gms/internal/clearcut/I1;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/clearcut/E1;->k:Lcom/google/android/gms/internal/clearcut/e0;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/google/android/gms/internal/clearcut/E1;->e:I

    return-void
.end method

.method public static b(I)Lcom/google/android/gms/internal/clearcut/E1;
    .locals 1

    if-eqz p0, :cond_4

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object p0, Lcom/google/android/gms/internal/clearcut/E1;->j:Lcom/google/android/gms/internal/clearcut/E1;

    return-object p0

    :cond_1
    sget-object p0, Lcom/google/android/gms/internal/clearcut/E1;->i:Lcom/google/android/gms/internal/clearcut/E1;

    return-object p0

    :cond_2
    sget-object p0, Lcom/google/android/gms/internal/clearcut/E1;->h:Lcom/google/android/gms/internal/clearcut/E1;

    return-object p0

    :cond_3
    sget-object p0, Lcom/google/android/gms/internal/clearcut/E1;->g:Lcom/google/android/gms/internal/clearcut/E1;

    return-object p0

    :cond_4
    sget-object p0, Lcom/google/android/gms/internal/clearcut/E1;->f:Lcom/google/android/gms/internal/clearcut/E1;

    return-object p0
.end method

.method public static values()[Lcom/google/android/gms/internal/clearcut/E1;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/clearcut/E1;->l:[Lcom/google/android/gms/internal/clearcut/E1;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/clearcut/E1;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/clearcut/E1;

    return-object v0
.end method


# virtual methods
.method public final f()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/clearcut/E1;->e:I

    return v0
.end method
