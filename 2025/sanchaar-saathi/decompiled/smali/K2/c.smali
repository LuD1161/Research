.class public final synthetic LK2/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:LK2/d;


# direct methods
.method public synthetic constructor <init>(LK2/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LK2/c;->e:LK2/d;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, LK2/c;->e:LK2/d;

    invoke-static {v0}, LK2/d;->c(LK2/d;)V

    return-void
.end method
