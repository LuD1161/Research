.class public final Lcom/google/android/gms/internal/clearcut/J1$b;
.super Lcom/google/android/gms/internal/clearcut/a0;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/clearcut/D0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/clearcut/J1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/clearcut/J1$b$a;
    }
.end annotation


# static fields
.field private static volatile zzbg:Lcom/google/android/gms/internal/clearcut/K0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/clearcut/K0;"
        }
    .end annotation
.end field

.field private static final zzbiv:Lcom/google/android/gms/internal/clearcut/J1$b;


# instance fields
.field private zzbb:I

.field private zzbis:Ljava/lang/String;

.field private zzbit:J

.field private zzbiu:J

.field private zzya:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/clearcut/J1$b;

    invoke-direct {v0}, Lcom/google/android/gms/internal/clearcut/J1$b;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/clearcut/J1$b;->zzbiv:Lcom/google/android/gms/internal/clearcut/J1$b;

    const-class v1, Lcom/google/android/gms/internal/clearcut/J1$b;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/clearcut/a0;->n(Ljava/lang/Class;Lcom/google/android/gms/internal/clearcut/a0;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/clearcut/a0;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/clearcut/J1$b;->zzbis:Ljava/lang/String;

    return-void
.end method

.method public static synthetic A()Lcom/google/android/gms/internal/clearcut/J1$b;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/clearcut/J1$b;->zzbiv:Lcom/google/android/gms/internal/clearcut/J1$b;

    return-object v0
.end method

.method public static synthetic s(Lcom/google/android/gms/internal/clearcut/J1$b;J)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/clearcut/J1$b;->C(J)V

    return-void
.end method

.method public static synthetic t(Lcom/google/android/gms/internal/clearcut/J1$b;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/clearcut/J1$b;->B(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic u(Lcom/google/android/gms/internal/clearcut/J1$b;J)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/clearcut/J1$b;->D(J)V

    return-void
.end method

.method public static z()Lcom/google/android/gms/internal/clearcut/J1$b$a;
    .locals 3

    sget-object v0, Lcom/google/android/gms/internal/clearcut/J1$b;->zzbiv:Lcom/google/android/gms/internal/clearcut/J1$b;

    sget v1, Lcom/google/android/gms/internal/clearcut/a0$c;->e:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/clearcut/a0;->k(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/clearcut/a0$a;

    check-cast v0, Lcom/google/android/gms/internal/clearcut/J1$b$a;

    return-object v0
.end method


# virtual methods
.method public final B(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/android/gms/internal/clearcut/J1$b;->zzbb:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/clearcut/J1$b;->zzbb:I

    iput-object p1, p0, Lcom/google/android/gms/internal/clearcut/J1$b;->zzbis:Ljava/lang/String;

    return-void
.end method

.method public final C(J)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/clearcut/J1$b;->zzbb:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/android/gms/internal/clearcut/J1$b;->zzbb:I

    iput-wide p1, p0, Lcom/google/android/gms/internal/clearcut/J1$b;->zzbit:J

    return-void
.end method

.method public final D(J)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/clearcut/J1$b;->zzbb:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/android/gms/internal/clearcut/J1$b;->zzbb:I

    iput-wide p1, p0, Lcom/google/android/gms/internal/clearcut/J1$b;->zzbiu:J

    return-void
.end method

.method public final k(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    sget-object p2, Lcom/google/android/gms/internal/clearcut/K1;->a:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    :pswitch_1
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    :pswitch_2
    sget-object p1, Lcom/google/android/gms/internal/clearcut/J1$b;->zzbg:Lcom/google/android/gms/internal/clearcut/K0;

    if-nez p1, :cond_1

    const-class p2, Lcom/google/android/gms/internal/clearcut/J1$b;

    monitor-enter p2

    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/clearcut/J1$b;->zzbg:Lcom/google/android/gms/internal/clearcut/K0;

    if-nez p1, :cond_0

    new-instance p1, Lcom/google/android/gms/internal/clearcut/a0$b;

    sget-object p3, Lcom/google/android/gms/internal/clearcut/J1$b;->zzbiv:Lcom/google/android/gms/internal/clearcut/J1$b;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/clearcut/a0$b;-><init>(Lcom/google/android/gms/internal/clearcut/a0;)V

    sput-object p1, Lcom/google/android/gms/internal/clearcut/J1$b;->zzbg:Lcom/google/android/gms/internal/clearcut/K0;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p2

    goto :goto_2

    :goto_1
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_2
    return-object p1

    :pswitch_3
    sget-object p1, Lcom/google/android/gms/internal/clearcut/J1$b;->zzbiv:Lcom/google/android/gms/internal/clearcut/J1$b;

    return-object p1

    :pswitch_4
    const-string p1, "zzbb"

    const-string p2, "zzya"

    const-string p3, "zzbis"

    const-string v0, "zzbit"

    const-string v1, "zzbiu"

    filled-new-array {p1, p2, p3, v0, v1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0005\u0000\u0000\u0000\u0001\u0004\u0000\u0002\u0008\u0001\u0003\u0002\u0002\u0004\u0002\u0003"

    sget-object p3, Lcom/google/android/gms/internal/clearcut/J1$b;->zzbiv:Lcom/google/android/gms/internal/clearcut/J1$b;

    invoke-static {p3, p2, p1}, Lcom/google/android/gms/internal/clearcut/a0;->l(Lcom/google/android/gms/internal/clearcut/B0;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/clearcut/J1$b$a;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/clearcut/J1$b$a;-><init>(Lcom/google/android/gms/internal/clearcut/K1;)V

    return-object p1

    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/clearcut/J1$b;

    invoke-direct {p1}, Lcom/google/android/gms/internal/clearcut/J1$b;-><init>()V

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final r()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/clearcut/J1$b;->zzya:I

    return v0
.end method

.method public final v()Z
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/clearcut/J1$b;->zzbb:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final w()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/J1$b;->zzbis:Ljava/lang/String;

    return-object v0
.end method

.method public final x()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/clearcut/J1$b;->zzbit:J

    return-wide v0
.end method

.method public final y()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/clearcut/J1$b;->zzbiu:J

    return-wide v0
.end method
