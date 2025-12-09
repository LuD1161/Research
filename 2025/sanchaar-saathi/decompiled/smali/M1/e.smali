.class public final LM1/e;
.super Lz1/h;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lz1/e;Lv1/f$a;Lv1/f$b;)V
    .locals 7

    const/16 v3, 0x33

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lz1/h;-><init>(Landroid/content/Context;Landroid/os/Looper;ILz1/e;Lv1/f$a;Lv1/f$b;)V

    return-void
.end method


# virtual methods
.method public final D()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.phenotype.internal.IPhenotypeService"

    return-object v0
.end method

.method public final E()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.phenotype.service.START"

    return-object v0
.end method

.method public final i()I
    .locals 1

    const v0, 0xb5f608

    return v0
.end method

.method public final synthetic r(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const-string v0, "com.google.android.gms.phenotype.internal.IPhenotypeService"

    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, LM1/b;

    if-eqz v1, :cond_1

    check-cast v0, LM1/b;

    return-object v0

    :cond_1
    new-instance v0, LM1/c;

    invoke-direct {v0, p1}, LM1/c;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method
