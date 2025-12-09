.class public final synthetic LK2/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:LK2/d;

.field public final synthetic f:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(LK2/d;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LK2/b;->e:LK2/d;

    iput-object p2, p0, LK2/b;->f:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, LK2/b;->e:LK2/d;

    iget-object v1, p0, LK2/b;->f:Ljava/util/List;

    invoke-static {v0, v1}, LK2/d;->d(LK2/d;Ljava/util/List;)V

    return-void
.end method
