.class public Li/e$j$a;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Li/e$j;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Li/e$j;


# direct methods
.method public constructor <init>(Li/e$j;)V
    .locals 0

    iput-object p1, p0, Li/e$j$a;->a:Li/e$j;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    iget-object p1, p0, Li/e$j$a;->a:Li/e$j;

    invoke-virtual {p1}, Li/e$j;->d()V

    return-void
.end method
