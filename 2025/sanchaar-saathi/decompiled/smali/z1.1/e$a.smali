.class public final Lz1/e$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz1/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public a:Landroid/accounts/Account;

.field public b:Lv/b;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public final e:LP1/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, LP1/a;->j:LP1/a;

    iput-object v0, p0, Lz1/e$a;->e:LP1/a;

    return-void
.end method


# virtual methods
.method public a()Lz1/e;
    .locals 11

    new-instance v10, Lz1/e;

    iget-object v1, p0, Lz1/e$a;->a:Landroid/accounts/Account;

    iget-object v2, p0, Lz1/e$a;->b:Lv/b;

    iget-object v6, p0, Lz1/e$a;->c:Ljava/lang/String;

    iget-object v7, p0, Lz1/e$a;->d:Ljava/lang/String;

    iget-object v8, p0, Lz1/e$a;->e:LP1/a;

    const/4 v9, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lz1/e;-><init>(Landroid/accounts/Account;Ljava/util/Set;Ljava/util/Map;ILandroid/view/View;Ljava/lang/String;Ljava/lang/String;LP1/a;Z)V

    return-object v10
.end method

.method public b(Ljava/lang/String;)Lz1/e$a;
    .locals 0

    iput-object p1, p0, Lz1/e$a;->c:Ljava/lang/String;

    return-object p0
.end method

.method public final c(Landroid/accounts/Account;)Lz1/e$a;
    .locals 0

    iput-object p1, p0, Lz1/e$a;->a:Landroid/accounts/Account;

    return-object p0
.end method

.method public final d(Ljava/util/Collection;)Lz1/e$a;
    .locals 1

    iget-object v0, p0, Lz1/e$a;->b:Lv/b;

    if-nez v0, :cond_0

    new-instance v0, Lv/b;

    invoke-direct {v0}, Lv/b;-><init>()V

    iput-object v0, p0, Lz1/e$a;->b:Lv/b;

    :cond_0
    iget-object v0, p0, Lz1/e$a;->b:Lv/b;

    invoke-virtual {v0, p1}, Lv/b;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public final e(Ljava/lang/String;)Lz1/e$a;
    .locals 0

    iput-object p1, p0, Lz1/e$a;->d:Ljava/lang/String;

    return-object p0
.end method
