.class public Lorg/cdot/diu/main/SathiMainActivity$b;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cdot/diu/main/SathiMainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lorg/cdot/diu/main/SathiMainActivity;


# direct methods
.method public constructor <init>(Lorg/cdot/diu/main/SathiMainActivity;)V
    .locals 0

    iput-object p1, p0, Lorg/cdot/diu/main/SathiMainActivity$b;->a:Lorg/cdot/diu/main/SathiMainActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->getResultCode()I

    move-result p1

    iget-object p2, p0, Lorg/cdot/diu/main/SathiMainActivity$b;->a:Lorg/cdot/diu/main/SathiMainActivity;

    invoke-static {p2, p1}, Lorg/cdot/diu/main/SathiMainActivity;->Z(Lorg/cdot/diu/main/SathiMainActivity;I)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "status code sent "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->getResultCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " detail : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[onCreate] [onReceive]"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "code"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "result"

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lorg/cdot/diu/main/SathiMainActivity$b;->a:Lorg/cdot/diu/main/SathiMainActivity;

    invoke-static {p1}, Lorg/cdot/diu/main/SathiMainActivity;->Y(Lorg/cdot/diu/main/SathiMainActivity;)LY2/j;

    move-result-object p1

    const-string p2, "clins.smsdeliver"

    invoke-virtual {p1, p2, v0}, LY2/j;->c(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
