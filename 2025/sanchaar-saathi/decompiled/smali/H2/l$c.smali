.class public final LH2/l$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LH2/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LH2/l;->onReattachedToActivityForConfigChanges(LU2/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:LU2/c;


# direct methods
.method public constructor <init>(LU2/c;)V
    .locals 0

    iput-object p1, p0, LH2/l$c;->a:LU2/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(LY2/l;)V
    .locals 1

    const-string v0, "callback"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, LH2/l$c;->a:LU2/c;

    invoke-interface {v0, p1}, LU2/c;->a(LY2/l;)V

    return-void
.end method

.method public b()Landroid/app/Activity;
    .locals 2

    iget-object v0, p0, LH2/l$c;->a:LU2/c;

    invoke-interface {v0}, LU2/c;->e()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "getActivity(...)"

    invoke-static {v0, v1}, Lv3/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
