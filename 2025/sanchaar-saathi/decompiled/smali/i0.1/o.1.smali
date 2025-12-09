.class public final synthetic Li0/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Li0/p;


# direct methods
.method public synthetic constructor <init>(Li0/p;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Li0/o;->e:Li0/p;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Li0/o;->e:Li0/p;

    invoke-static {v0}, Li0/p;->e(Li0/p;)V

    return-void
.end method
