.class public Lo0/b$a;
.super Landroidx/lifecycle/F;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo0/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static final d:Landroidx/lifecycle/G$c;


# instance fields
.field public b:Lv/h;

.field public c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo0/b$a$a;

    invoke-direct {v0}, Lo0/b$a$a;-><init>()V

    sput-object v0, Lo0/b$a;->d:Landroidx/lifecycle/G$c;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/lifecycle/F;-><init>()V

    new-instance v0, Lv/h;

    invoke-direct {v0}, Lv/h;-><init>()V

    iput-object v0, p0, Lo0/b$a;->b:Lv/h;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lo0/b$a;->c:Z

    return-void
.end method

.method public static d(Landroidx/lifecycle/H;)Lo0/b$a;
    .locals 2

    new-instance v0, Landroidx/lifecycle/G;

    sget-object v1, Lo0/b$a;->d:Landroidx/lifecycle/G$c;

    invoke-direct {v0, p0, v1}, Landroidx/lifecycle/G;-><init>(Landroidx/lifecycle/H;Landroidx/lifecycle/G$c;)V

    const-class p0, Lo0/b$a;

    invoke-virtual {v0, p0}, Landroidx/lifecycle/G;->b(Ljava/lang/Class;)Landroidx/lifecycle/F;

    move-result-object p0

    check-cast p0, Lo0/b$a;

    return-object p0
.end method


# virtual methods
.method public b()V
    .locals 2

    invoke-super {p0}, Landroidx/lifecycle/F;->b()V

    iget-object v0, p0, Lo0/b$a;->b:Lv/h;

    invoke-virtual {v0}, Lv/h;->o()I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lo0/b$a;->b:Lv/h;

    invoke-virtual {v0}, Lv/h;->b()V

    return-void

    :cond_0
    iget-object v0, p0, Lo0/b$a;->b:Lv/h;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lv/h;->p(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/media/session/b;->a(Ljava/lang/Object;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public c(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    iget-object p2, p0, Lo0/b$a;->b:Lv/h;

    invoke-virtual {p2}, Lv/h;->o()I

    move-result p2

    if-lez p2, :cond_1

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "Loaders:"

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "    "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lo0/b$a;->b:Lv/h;

    invoke-virtual {p2}, Lv/h;->o()I

    move-result p2

    if-gtz p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lo0/b$a;->b:Lv/h;

    const/4 p4, 0x0

    invoke-virtual {p2, p4}, Lv/h;->p(I)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Landroid/support/v4/media/session/b;->a(Ljava/lang/Object;)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p1, "  #"

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p1, p0, Lo0/b$a;->b:Lv/h;

    invoke-virtual {p1, p4}, Lv/h;->m(I)I

    move-result p1

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(I)V

    const-string p1, ": "

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public e()V
    .locals 2

    iget-object v0, p0, Lo0/b$a;->b:Lv/h;

    invoke-virtual {v0}, Lv/h;->o()I

    move-result v0

    if-gtz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lo0/b$a;->b:Lv/h;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lv/h;->p(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/media/session/b;->a(Ljava/lang/Object;)V

    const/4 v0, 0x0

    throw v0
.end method
