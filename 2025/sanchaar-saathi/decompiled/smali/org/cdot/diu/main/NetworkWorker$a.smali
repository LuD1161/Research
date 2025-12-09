.class public Lorg/cdot/diu/main/NetworkWorker$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LY2/j$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cdot/diu/main/NetworkWorker;->o()Landroidx/work/c$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lorg/cdot/diu/main/NetworkWorker;


# direct methods
.method public constructor <init>(Lorg/cdot/diu/main/NetworkWorker;)V
    .locals 0

    iput-object p1, p0, Lorg/cdot/diu/main/NetworkWorker$a;->a:Lorg/cdot/diu/main/NetworkWorker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Dart error: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "NetworkWorker"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public c()V
    .locals 2

    const-string v0, "NetworkWorker"

    const-string v1, "submitOfflineData not implemented"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
