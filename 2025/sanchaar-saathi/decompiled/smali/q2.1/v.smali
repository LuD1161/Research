.class public final synthetic Lq2/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final synthetic a:Lq2/D;


# direct methods
.method public synthetic constructor <init>(Lq2/D;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq2/v;->a:Lq2/D;

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 1

    iget-object v0, p0, Lq2/v;->a:Lq2/D;

    invoke-static {v0}, Lq2/D;->j(Lq2/D;)V

    return-void
.end method
